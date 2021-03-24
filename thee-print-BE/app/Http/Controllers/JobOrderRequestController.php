<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Job_order_request;
use App\Job_order_item;
use App\User;
use App\Notification;
use App\Job_order_log;
use Auth;

class JobOrderRequestController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    } 
    
    public function addJob(Request $request){
        $job_order_request = Job_order_request::create($request->all());
        $order_items=$request->order_items;
        for($i=0;$i<count($order_items);$i++){
            $job_order_item = Job_order_item::create(
                [  
                    "job_order_id" => $job_order_request->{'job_order_request_id'},
                    "job_order_item_product_id" => $order_items[$i]['job_order_item_product_id'],
                    "job_order_item_length" => $order_items[$i]['job_order_item_length'],
                    "job_order_item_width" => $order_items[$i]['job_order_item_width'],
                    "job_order_item_qty" =>$order_items[$i]['job_order_item_qty'],
                    "job_order_item_remark" => $order_items[$i]['job_order_item_remark'],
                    "job_order_item_price" => $order_items[$i]['job_order_item_price'],
                    "job_order_item_unit" => $order_items[$i]['job_order_item_unit'],
                ]
            );
        }
        if($request->input('sender_role')=='1'){
            if($job_order_request){ 
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "message" => $job_order_request->{'job_order_request_id'}." has been successfully added in the Database",
                        "job_order_request_id" => $job_order_request->{'job_order_request_id'},
                        "sender_role" => $request->input('sender_role'),
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "Invalid parameters",
                    ]
                ];
            }
        }else{
            $admin = User::where('user_role_id', '1')->get();
            for($i=0;$i<sizeof($admin);$i++){
                $notification = Notification::create(
                    [   
                        "notification_type" => '1',
                        "notification_sender" => $request->input('sender'),
                        "notification_receiver" => $admin[$i]->{'user_id'},
                        "notification_link" => $job_order_request->{'job_order_request_id'}
                    ]
                );
            }
            if($job_order_request){ 
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "message" => $job_order_request->{'job_order_request_id'}." has been successfully added in the Database",
                        "job_order_request_id" => $job_order_request->{'job_order_request_id'},
                        "sender_role" => $request->input('sender_role'),
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "Invalid parameters",
                    ]
                ];
            }
        } 
        return response()->json($response, 201);
    }
    public function updateStatus($job_order_request_id, Request $request){
        $notification_message="false";
        $notification_payment="false";
        if($request->input('job_order_status')=='2'){
            $order_count = DB::select("SELECT COUNT(*) as bilang FROM job_order_requests WHERE YEAR(created_at) = YEAR(CURDATE()) and job_order_quote_num!=''");
            $job_order_quote_num = str_pad($order_count[0]->{'bilang'}+1, 4, '0', STR_PAD_LEFT);
            $prefix=substr(date('Y'), -2);
            Job_order_request::where('job_order_request_id', $job_order_request_id)->update(array('job_order_quote_num' => $prefix.'-'.$job_order_quote_num));
            $admin = User::where('user_role_id', '1')->get();
            for($i=0;$i<sizeof($admin);$i++){
                $notification = Notification::create(
                    [   
                        "notification_type" => '2',
                        "notification_sender" => $request->input('sender'),
                        "notification_receiver" => $admin[$i]->{'user_id'}, 
                        "notification_link" => $job_order_request_id,
                    ]
                );
            }   
        }
        if($request->has('job_order_status')){
            if(!$request->has('remarks')){
                $job_order_logs = Job_order_log::create(
                    [   
                        "job_order_request_id" => $job_order_request_id,
                        "job_order_status" => $request->input('job_order_status'),
                    ]
                );
            }else{
                $job_order_logs = Job_order_log::create(
                    [   
                        "job_order_request_id" => $job_order_request_id,
                        "job_order_status" => $request->input('job_order_status'),
                        "job_order_request_remark" =>$request->input('remarks'),
                    ]
                );
            }
        }else if($request->has('admin_archived')){
            $job_order_logs = Job_order_log::create(
                [   
                    "job_order_request_id" => $job_order_request_id,
                    "job_order_status" => 8,
                ]
            );
        }else if($request->has('partner_archived')){
            $job_order_logs = Job_order_log::create(
                [   
                    "job_order_request_id" => $job_order_request_id,
                    "job_order_status" => 9,
                ]
            );
        }else if(!$request->has('job_order_status')){
            $job_order_request_id=$job_order_request_id;
        }else{
            if(!$request->has('remarks')){
                $job_order_logs = Job_order_log::create(
                    [   
                        "job_order_request_id" => $job_order_request_id,
                        "job_order_status" => $request->input('job_order_status'),
                    ]
                );
            }else{
                $job_order_logs = Job_order_log::create(
                    [   
                        "job_order_request_id" => $job_order_request_id,
                        "job_order_status" => $request->input('job_order_status'),
                        "job_order_request_remark" =>$request->input('remarks'),
                    ]
                );
            }
        }
        $job_order_request = Job_order_request::findOrFail($job_order_request_id);
        if($request->input('job_order_status')=='3'){
            $notification_data = DB::select("SELECT * from notification_types WHERE notification_type_id='3'");
            $notification=preg_replace("/job_order_id/i",$job_order_request->{'job_order_quote_num'},$notification_data[0]->{'notification_message'});
            $notification_message = Notification::create(
                [   
                    "notification_type" => '4',
                    "notification_sender" => '1',
                    "notification_receiver" =>  $request->input('receiver'),
                    "notification_data" => $notification, 
                    "notification_link" => $job_order_request_id,
                ]
            );
        }
        if($request->input('job_order_status')=='4'){
            $notification_data = DB::select("SELECT * from notification_types WHERE notification_type_id='4'");
            $notification=preg_replace("/job_order_id/i",$job_order_request->{'job_order_quote_num'},$notification_data[0]->{'notification_message'});
            $notification_message = Notification::create(
                [   
                    "notification_type" => '5',
                    "notification_sender" => '1',
                    "notification_receiver" => $request->input('receiver'),
                    "notification_data" => $notification, 
                    "notification_link" => $job_order_request_id,   
                ]
            );
        }
        if($request->input('job_order_status')=='5'){
            $notification = Notification::create(
                [   
                    "notification_type" => '8',
                    "notification_sender" => '1',
                    "notification_receiver" => $job_order_request->{'job_order_user_id'}, 
                    "notification_link" => $job_order_request_id,
                ]
            );
        }
        if($request->has('job_order_payment_status')){
            // if($request->input('job_order_payment_status')=='0'){
            //     $notification_data = DB::select("SELECT * from notification_types WHERE notification_type_id='5'");
            //     $notification = Notification::create(
            //         [   
            //             "notification_type" => '4',
            //             "notification_sender" => '1',
            //             "notification_receiver" => $job_order_request->{'job_order_user_id'},
            //             // "notification_receiver" => $request->input('receiver'),
            //             "notification_data" => $notification_data[0]->{'notification_message'},   
            //             "created_at" => date('Y-m-d') 
            //         ]
            //     );
            // }else{
            if($request->input('job_order_payment_status')!='0'){
                $notification_data = DB::select("SELECT * from notification_types WHERE notification_type_id='6'");
                $notification=preg_replace("/job_order_id/i",$job_order_request->{'job_order_quote_num'},$notification_data[0]->{'notification_message'});
                $notification_payment = Notification::create(
                    [   
                        "notification_type" => '6',
                        "notification_sender" => '1',
                        "notification_receiver" => $request->input('receiver'),
                        "notification_data" => $notification,  
                        "notification_link" => $job_order_request_id,
                    ]
                );
            }
        }
        if($job_order_request){
            
            if($job_order_request->{'job_order_status'}!='7'&&!$request->input('archived_isDeleted')){
                $job_order_request->update($request->all());
                $today=date("Y-m-d G:i:s");
                if($request->input('job_order_payment_status')==1){
                    DB::statement("UPDATE `job_order_requests` set `job_order_payment_date` = '".$today."' Where `job_order_request_id` = '".$job_order_request_id."'");
                }
                $partner_details = DB::select("SELECT * from partners WHERE partner_id='".$job_order_request->{'job_order_user_id'}."'");
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "message" => $job_order_request->{'job_order_quote_num'}." Status has been successfully updated",
                        "job_order_quote_num" => $job_order_request->{'job_order_quote_num'},
                        "job_order_details" => $job_order_request,
                        "partner_details" => $partner_details,
                        "notification_payment" => $notification_payment,
                        "notification" => $notification_message,
                    ]
                ];
            }else if($request->input('archived_isDeleted')){
                $job_order_request->update($request->all());
                $today=date("Y-m-d G:i:s");
                $partner_details = DB::select("SELECT * from partners WHERE partner_id='".$job_order_request->{'job_order_user_id'}."'");
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "message" => $job_order_request->{'job_order_quote_num'}." Status has been successfully updated",
                        "job_order_quote_num" => $job_order_request->{'job_order_quote_num'},
                        "job_order_details" => $job_order_request,
                        "partner_details" => $partner_details,
                        "notification_payment" => $notification_payment,
                        "notification" => $notification_message,
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "cancelled" => true,
                    "result" => [
                        "message" => $job_order_request->{'job_order_quote_num'}." has been canceled by the partner",
                        "job_order_quote_num" => $job_order_request->{'job_order_quote_num'},
                        "job_order_details" => $job_order_request,
                        "notification_payment" => $notification_payment,
                        "notification" => $notification_message,
                    ]
                ];
            }
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid parameters",
                ]
            ];
        } 
        return response()->json($response, 200);
    }
    public function getJobOrder($job_order_request_id){
        $job_order_request = DB::select("SELECT *,`job_order_requests`.`created_at` as `create_at` FROM `job_order_requests` 
        LEFT JOIN `company_addresses` on `job_order_requests`.`job_order_delivery_address` = `company_addresses`.`company_address_id`
        LEFT JOIN `partners` on `job_order_requests`.`job_order_user_id` = `partners`.`partner_id`
        WHERE `job_order_requests`.`job_order_request_id`='".$job_order_request_id."'");
        $order_items= DB::select("SELECT * FROM `job_order_items` 
        LEFT JOIN `products` on `job_order_items`.`job_order_item_product_id` = `products`.`product_id`
        LEFT JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
        WHERE `job_order_items`.`job_order_id`='".$job_order_request_id."'");
        if($job_order_request){
            $response=(object)[
                "success" => true,
                "result" => [
                    "job_order_details" => $job_order_request,
                    "order_items" => $order_items
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid parameters",
                ]
            ];
        } 
        return response()->json($response, 200);
    }
    public function getJobOrderByStatus(Request $request){
        $date_filter='';
        $search='';
        $order_by='';
        $total_pages='';
        if($request->has('sort_column')){
            if($request->sort_column=="job_order_quote_num"){
                $column="`job_order_requests`.`job_order_quote_num`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_project_name"){
                $column="`job_order_requests`.`job_order_project_name`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="created_at"){
                $column="`job_order_requests`.`created_at`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_due_date"){
                $column="`job_order_requests`.`job_order_due_date`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_total"){
                $column="`job_order_requests`.`job_order_total`";
                $order_by=" ORDER BY ABS(".$column.") ".$request->sort_type;
            }else if($request->sort_column=="user_profile_first_name"){
                $column="`user_profiles`.`user_profile_first_name`";
                $order_by=" ORDER BY ABS(".$column.") ".$request->sort_type;
            }
        }
        if($request->has('search_keyword')){
            $search=" AND (`job_order_requests`.`job_order_quote_num` LIKE '%".$request->search_keyword."%' 
            OR `job_order_requests`.`job_order_project_name` LIKE '%".$request->search_keyword."%')";
        }
        if($request->has('date_filter')){
            $date_filter = "`job_order_requests`.`created_at` BETWEEN '".$request->date_filter." 00:00:01' AND '".$request->date_filter." 23:59:59' AND";
        }
        if(!$request->has('job_order_status')){
            if($request->has('partner_archived')){
                $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests 
                LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_id`=`job_order_requests`.`updated_by`
                WHERE ".$date_filter." `job_order_requests`.`partner_archived`='1' AND job_order_user_id='".$request->job_order_user_id."' and job_order_status!='1' and job_order_status!='0' and job_order_status!='6' ".$search);
                $job_order_request_total=$job_order_request[0]->{'request_total'};
                $total_pages=ceil($job_order_request_total / $request->limit);
                $offset = ($request->page-1) * $request->limit;
                $job_order_request= DB::select("SELECT `job_order_requests`.*,`user_profiles`.`user_profile_first_name`,`user_profiles`.`user_profile_last_name`, `user_profiles`.`user_profile_avatar`  FROM `job_order_requests`
                LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_id`=`job_order_requests`.`updated_by`
                WHERE ".$date_filter." `job_order_requests`.`partner_archived`='1' AND `job_order_user_id`='".$request->job_order_user_id."' and job_order_status!='1' and job_order_status!='0' and job_order_status!='6' ".$search." ".$order_by."
                LIMIT ".$offset.", ". $request->limit);
                
            }else{
                $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests 
                LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_id`=`job_order_requests`.`updated_by`
                WHERE ".$date_filter." `job_order_requests`.`partner_archived`!='1' AND job_order_user_id='".$request->job_order_user_id."' and job_order_status!='1' and job_order_status!='0' and job_order_status!='6' ".$search);
                $job_order_request_total=$job_order_request[0]->{'request_total'};
                $total_pages=ceil($job_order_request_total / $request->limit);
                $offset = ($request->page-1) * $request->limit;
                $job_order_request= DB::select("SELECT `job_order_requests`.*,`user_profiles`.`user_profile_first_name`,`user_profiles`.`user_profile_last_name`,`user_profiles`.`user_profile_avatar`  FROM `job_order_requests`
                LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_id`=`job_order_requests`.`updated_by`
                WHERE ".$date_filter." `job_order_requests`.`partner_archived`!='1' AND `job_order_user_id`='".$request->job_order_user_id."' and job_order_status!='1' and job_order_status!='0' and job_order_status!='6' ".$search." ".$order_by."
                LIMIT ".$offset.", ". $request->limit);
            }
        }else{
            $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests 
            LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_id`=`job_order_requests`.`updated_by`
            WHERE ".$date_filter." `job_order_requests`.`partner_archived`!='1' AND job_order_user_id='".$request->job_order_user_id."' and job_order_status='".$request->job_order_status."' ".$search);
            $job_order_request_total=$job_order_request[0]->{'request_total'};
            $total_pages=ceil($job_order_request_total / $request->limit);
            $offset = ($request->page-1) * $request->limit;
            $job_order_request= DB::select("SELECT `job_order_requests`.*,`user_profiles`.`user_profile_first_name`,`user_profiles`.`user_profile_last_name`,`user_profiles`.`user_profile_avatar` FROM `job_order_requests`
            LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_id`=`job_order_requests`.`updated_by`
            WHERE ".$date_filter." `job_order_requests`.`partner_archived`!='1' AND `job_order_requests`.`job_order_user_id`='".$request->job_order_user_id."' and `job_order_requests`.`job_order_status`='".$request->job_order_status."' ".$search." ".$order_by."
            LIMIT ".$offset.", ". $request->limit);
        }
        if($job_order_request){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $job_order_request,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $job_order_request_total,
                    "limit" => $request->limit,
                ]
            ];
        }else{
            $response=(object)[
            "success" => false,
                "result" => [
                    "message" => 'is empty',
                    "datas" => $job_order_request,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $job_order_request_total,
                    "limit" => $request->limit,
                ]
            ];
        }
        return response()->json($response, 200);
    }
    public function partnersDashboard($partners_id){
        $pending_job_orders= DB::select("SELECT COUNT(*) as total FROM job_order_requests WHERE job_order_user_id='".$partners_id."' and job_order_status='2'");
        $pending_job_orders=$pending_job_orders[0]->{'total'};
        $processing_job_orders= DB::select("SELECT COUNT(*) as total FROM job_order_requests WHERE job_order_user_id='".$partners_id."' and job_order_status='3'");
        $processing_job_orders=$processing_job_orders[0]->{'total'};
        $pending_payment_job_orders= DB::select("SELECT COUNT(*) as total FROM job_order_requests WHERE job_order_user_id='".$partners_id."' and job_order_payment_status='0' and job_order_status!='0' and job_order_status!='1' and job_order_status!='5' and job_order_status!='6' and job_order_status!='7'");
        $pending_payment_job_orders=$pending_payment_job_orders[0]->{'total'};
        $response=(object)[
            "success" => false,
                "result" => [
                    "pending_job_orders" => $pending_job_orders,
                    "processing_job_orders" => $processing_job_orders,
                    "pending_payment_job_orders" => $pending_payment_job_orders
                ]
        ];
        return response()->json($response, 200);
    }

    public function adminGetJobOrderByStatus(Request $request){
        $date_filter='';
        $search='';
        $order_by='';
        $total_pages='';
        $admin_archived='';
        if($request->has('sort_column')){
            if($request->sort_column=="job_order_quote_num"){
                $column="`job_order_requests`.`job_order_quote_num`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_project_name"){
                $column="`job_order_requests`.`job_order_project_name`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="partner_company"){
                $column="`partners`.`partner_company`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="user_profile_first_name"){
                $column="`user_profiles`.`user_profile_first_name`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="created_at"){
                $column="`job_order_requests`.`created_at`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_due_date"){
                $column="`job_order_requests`.`job_order_due_date`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_total"){
                $column="`job_order_requests`.`job_order_total`";
                $order_by=" ORDER BY ABS(".$column.") ".$request->sort_type;
            }
        }
        if($request->has('search_keyword')){
            $search=" AND (`job_order_requests`.`job_order_quote_num` LIKE '%".$request->search_keyword."%' 
            OR `job_order_requests`.`job_order_project_name` LIKE '%".$request->search_keyword."%'
            OR `partners`.`partner_company` LIKE '%".$request->search_keyword."%'
            OR `user_profiles`.`user_profile_first_name` LIKE '%".$request->search_keyword."%'
            OR `user_profiles`.`user_profile_last_name` LIKE '%".$request->search_keyword."%'
            OR CONCAT(`user_profiles`.`user_profile_first_name`,  ' ', `user_profiles`.`user_profile_last_name`) LIKE '%".$request->search_keyword."%')";
        }
        if($request->has('date_filter')){
            $date_filter = "`job_order_requests`.`created_at` BETWEEN '".$request->date_filter." 00:00:01' AND '".$request->date_filter." 23:59:59' AND";
        }
        if(!$request->has('job_order_status')&&$request->has('limit')){
            if($request->has('admin_archived')){
                $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests
                LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
                LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id`
                WHERE ".$date_filter."  `job_order_requests`.`admin_archived`='1' AND (job_order_status!='1' and job_order_status!='0' and job_order_status!='6') ".$search." ".$order_by);
                $job_order_request_total=$job_order_request[0]->{'request_total'};
                $total_pages=ceil($job_order_request_total / $request->limit);
                $offset = ($request->page-1) * $request->limit;
                $job_order_request= DB::select("SELECT `job_order_requests`.*, `partners`.`partner_company`,`partners`.`partner_logo`, `user_profiles`.`user_profile_first_name`, `user_profiles`.`user_profile_last_name` FROM `job_order_requests`
                LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
                LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id` 
                WHERE ".$date_filter." `job_order_requests`.`admin_archived`='1' AND `job_order_requests`.`job_order_status`!='1' and (`job_order_requests`.`job_order_status`!='0' and `job_order_requests`.`job_order_status`!='6') ".$search." ".$order_by." 
                LIMIT ".$offset.", ". $request->limit);
            }else{
                $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests
                LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
                LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id`
                WHERE ".$date_filter." `job_order_requests`.`admin_archived`!='1' AND (job_order_status!='1' and job_order_status!='0' and job_order_status!='6') ".$search." ".$order_by);
                $job_order_request_total=$job_order_request[0]->{'request_total'};
                $total_pages=ceil($job_order_request_total / $request->limit);
                $offset = ($request->page-1) * $request->limit;
                $job_order_request= DB::select("SELECT `job_order_requests`.*, `partners`.`partner_company`,`partners`.`partner_logo`, `user_profiles`.`user_profile_first_name`, `user_profiles`.`user_profile_last_name` FROM `job_order_requests`
                LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
                LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id` 
                WHERE ".$date_filter." `job_order_requests`.`admin_archived`!='1' AND `job_order_requests`.`job_order_status`!='1' and (`job_order_requests`.`job_order_status`!='0' and `job_order_requests`.`job_order_status`!='6') ".$search." ".$order_by." 
                LIMIT ".$offset.", ". $request->limit);
            }
        }else if(!$request->has('limit')){
            $job_order_request= DB::select("SELECT `job_order_requests`.*, `partners`.`partner_company`,`partners`.`partner_logo`, `user_profiles`.`user_profile_first_name`, `user_profiles`.`user_profile_last_name` FROM `job_order_requests`
            LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
            LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id` 
            WHERE `job_order_requests`.`admin_archived`!='1' AND `job_order_requests`.`job_order_status`!='1' and (`job_order_requests`.`job_order_status`!='0' and `job_order_requests`.`job_order_status`!='6')");
        }else{
            $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests
            LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
            LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id`
            WHERE  ".$date_filter." job_order_status='".$request->job_order_status."' ".$search." ".$order_by);
            $job_order_request_total=$job_order_request[0]->{'request_total'};
            $total_pages=ceil($job_order_request_total / $request->limit);
            $offset = ($request->page-1) * $request->limit;
            $job_order_request= DB::select("SELECT `job_order_requests`.*, `partners`.`partner_company`,`partners`.`partner_logo`, `user_profiles`.`user_profile_first_name`, `user_profiles`.`user_profile_last_name` FROM `job_order_requests`
            LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
            LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id` 
            WHERE ".$date_filter." `job_order_requests`.`admin_archived`!='1' AND `job_order_requests`.`job_order_status`='".$request->job_order_status."' ".$search." ".$order_by." 
            LIMIT ".$offset.", ". $request->limit);
        }
        if($job_order_request){
            if($request->has('page')&&$request->has('limit')){
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "datas" => $job_order_request,
                        "total_pages" => $total_pages,
                        "page" => $request->page,
                        "total" => $job_order_request_total,
                        "limit" => $request->limit,
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "datas" => $job_order_request
                    ]
                ];
            }
        }else{
            $response=(object)[
            "success" => false,
                "result" => [
                    "message" => 'is empty',
                    "datas" => $job_order_request,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $job_order_request_total,
                    "limit" => $request->limit,
                ]
            ];
        }
        return response()->json($response, 200);
    }
    public function adminGetPriceCheck(Request $request){
        $where = '';
        $id_param='';
        $search='';
        $order_by='';
        if($request->has('sort_column')){
            if($request->sort_column=="partner_company"){
                $column="`partners`.`partner_company`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="created_at"){
                $column="`job_order_requests`.`created_at`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_project_name"){
                $column="`job_order_requests`.`job_order_project_name`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="job_order_total"){
                $column="`job_order_requests`.`job_order_total`";
                $order_by=" ORDER BY ABS(".$column.") ".$request->sort_type;
            }
        }
        if($request->has('search_keyword')){
            $search=" AND (`partners`.`partner_company` LIKE '%".$request->search_keyword."%' 
            OR `job_order_requests`.`job_order_project_name` LIKE '%".$request->search_keyword."%'
            OR `job_order_requests`.`job_order_total` LIKE '%".$request->search_keyword."%'
            OR `job_order_requests`.`created_at` LIKE '%".$request->search_keyword."%')";
        }
        if($request->has('date_filter')){
            $where = "`job_order_requests`.`created_at` BETWEEN '".$request->date_filter." 00:00:01' AND '".$request->date_filter." 23:59:59' and";
        }
        if($request->has('partner_id')){
            $id_param="`job_order_requests`.`job_order_user_id`='".$request->partner_id."' and";
        }
        $job_order_request= DB::select("SELECT COUNT(*) as request_total FROM job_order_requests 
        LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
        LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id`
        WHERE ".$id_param." ".$where." (job_order_status='0' OR job_order_status='1' OR job_order_status='7')"." ".$search);
        $job_order_request_total=$job_order_request[0]->{'request_total'};
        $total_pages=ceil($job_order_request_total / $request->limit);
        $offset = ($request->page-1) * $request->limit;
        $job_order_request= DB::select("SELECT `job_order_requests`.*, `partners`.`partner_company`,`partners`.`partner_logo` FROM `job_order_requests`
        LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
        LEFT JOIN `user_profiles` ON `partners`.`partner_user` = `user_profiles`.`user_profile_user_id` 
        WHERE ".$id_param." ".$where."  (`job_order_requests`.`job_order_status`='0' or `job_order_requests`.`job_order_status`='1' or `job_order_requests`.`job_order_status`='7') ".$search." ".$order_by." LIMIT ".$offset.", ". $request->limit);
        if($job_order_request){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $job_order_request,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $job_order_request_total,
                    "limit" => $request->limit,
                ]
            ];
        }else{
            $response=(object)[
            "success" => false,
                "result" => [
                    "message" => 'is empty',
                    "datas" => $job_order_request,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $job_order_request_total,
                    "limit" => $request->limit,
                ]
            ];
        }
        return response()->json($response, 200);
    }
    public function adminDashboard(){
        $completed_job= DB::select("SELECT *, count(*) as `completed_jo` FROM `job_order_requests` 
        LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
        WHERE `job_order_requests`.`job_order_status`='4' and `job_order_requests`.`job_order_payment_status`='1' group by `job_order_requests`.`job_order_user_id` order by `completed_jo` DESC limit 5 ");
        $price_checks= DB::select("SELECT *, count(*) as `price_checks` FROM `job_order_requests`
        LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
        WHERE `job_order_requests`.`job_order_status`='0' OR `job_order_requests`.`job_order_status`='1' OR `job_order_requests`.`job_order_status`='7' group by `job_order_requests`.`job_order_user_id` ORDER BY `price_checks` DESC limit 5");
        $recently_paid= DB::select("SELECT * FROM `job_order_requests`
        LEFT JOIN `partners` ON `partners`.`partner_id` = `job_order_requests`.`job_order_user_id`
        WHERE `job_order_requests`.`job_order_payment_status`='1' ORDER BY `job_order_requests`.`updated_at` DESC limit 5 ");
        $response=(object)[
            "success" => false,
                "result" => [
                    "completed_job" => $completed_job,
                    "price_checks" => $price_checks,
                    "recently_paid" => $recently_paid
                ]
        ];
        return response()->json($response, 200);
    }
  

    public function pendingDashboard(){
        $pendingJO = DB::select("SELECT COUNT(*) as total FROM `job_order_requests` 
        WHERE `job_order_requests`.`job_order_status`='2'");
        $registeredPartners = DB::select("SELECT COUNT(*) as total FROM `partners`");
        $priceChecks = DB::select("SELECT COUNT(*) as total FROM `job_order_requests` 
        WHERE  `job_order_requests`.`job_order_status`='0' OR `job_order_status`='1' 
        OR `job_order_status`='7'");
        $totalSales = DB::select("SELECT SUM(`job_order_total`) as total_sales FROM `job_order_requests` 
        WHERE `job_order_requests`.`job_order_payment_status`='1'");    

        $response = (object)[
            "success" => true,
                "result" => [
                    "pendingJO" => $pendingJO,
                    "registeredPartners" => $registeredPartners,
                    "priceChecks" => $priceChecks,
                    "totalSales" => $totalSales
                ]
        ];
        return response()->json($response, 200);
    }

    public function adminDashboardGraph(Request $request){

        $month = (int)date("m");
        if($request->input('year')){
            $year = $request->input('year');
        }
        else{
            $year = date("Y");
        }

        $monthlyEarnings = [];
        
     
        for($i = 1; $i <= 12; $i++ ){
          
            if($i == $month && $request->input('year') == date("Y") ){

                $datenow = date("Y-m-d H:i:s");
            
            }else{
                $query_date = $year.'-'.$i.'-01 ';
                $datenow = date('Y-m-t 23:59:59', strtotime($query_date));
            }   
            $dateStarts = $year.'-'.$i.'-01 00:00:00';

          
            $earnings = DB::select("SELECT SUM(`job_order_total`) as total_earning 
            FROM `job_order_requests` WHERE `job_order_payment_status`='1' AND `created_at` 
            BETWEEN  '$dateStarts' AND '$datenow'");
            
            $monthlyEarnings[$i] = (float) $earnings[0]->total_earning;
            $month;
            if($i == $month && $request->input('year') == date("Y") ){
                break;
            }
        }

        $dateStartsTotal = date("Y").'-'.$month.'-01 00:00:00';
        $datenowTotal = date("Y-m-d H:i:s");
        $earningsTotal = DB::select("SELECT SUM(`job_order_total`) as earnings_total 
        FROM `job_order_requests` WHERE `job_order_payment_status`='1' AND `created_at` 
        BETWEEN  '$dateStartsTotal' AND '$datenowTotal'");

        $totalE = (float) $earningsTotal[0]->earnings_total;
        
        $response = (object)[
            "success" => true,
                "result" => [
                    
                    "earnings" => $monthlyEarnings,
                    "totalE" => $totalE,
                    "month" => $month,
                    "message" => "Successfully retrieved!"
                ]
        ];
       
        return response()->json($response, 200);             
    }
    public function updateJob(Request $request){
        $job_order_request = Job_order_request::findOrFail($request->job_order_request_id);
        if($job_order_request){
            $job_order_request->update($request->all());
        }
        $order_items=$request->order_items;
        DB::table('job_order_items')->where('job_order_id', $job_order_request->{'job_order_request_id'})->delete();
        for($i=0;$i<count($order_items);$i++){
            $job_order_item = Job_order_item::create(
                [  
                    "job_order_id" => $job_order_request->{'job_order_request_id'},
                    "job_order_item_product_id" => $order_items[$i]['job_order_item_product_id'],
                    "job_order_item_length" => $order_items[$i]['job_order_item_length'],
                    "job_order_item_width" => $order_items[$i]['job_order_item_width'],
                    "job_order_item_qty" =>$order_items[$i]['job_order_item_qty'],
                    "job_order_item_remark" => $order_items[$i]['job_order_item_remark'],
                    "job_order_item_price" => $order_items[$i]['job_order_item_price'],
                    "job_order_item_unit" => $order_items[$i]['job_order_item_unit'],
                ]
            );
        }
        
        if($job_order_request){ 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $job_order_request->{'job_order_request_id'}." has been successfully added in the Database",
                    "job_order_request_id" => $job_order_request->{'job_order_request_id'},
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid parameters",
                ]
            ];
        }
        return response()->json($response, 201);
    }
}
