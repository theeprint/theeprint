<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use Auth;


class PartnersProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }
    public function singlePartner($user_id){
        $authentication= Auth::user();
        if($authentication){    
            $users = DB::select(
                "SELECT * From `users` 
                LEFT JOIN `user_profiles` ON `users`.`user_id`=`user_profiles`.`user_profile_user_id`
                LEFT JOIN `partners` ON `users`.`user_id`=`partners`.`partner_user`
                WHERE `users`.`user_id` = '".$user_id."'");
            $total_transaction = DB::select(
                "SELECT count(*) as total From `job_order_requests` WHERE job_order_user_id='".$users[0]->{'partner_id'}."' AND (job_order_status!='0' AND job_order_status!='1' AND job_order_status!='5')");
            $total_price_check = DB::select(
                "SELECT count(*) as total From `job_order_requests` WHERE job_order_user_id='".$users[0]->{'partner_id'}."' AND (job_order_status='0' OR job_order_status='1' OR job_order_status='5')");
            $total_paid = DB::select("SELECT SUM(job_order_total) as total FROM job_order_requests where job_order_user_id='".$users[0]->{'partner_id'}."' AND job_order_payment_status='1' AND (job_order_status!='0' AND job_order_status!='1' AND job_order_status!='5')");           
            if($users){
                $response=(object)[
                    "success" => true,
                    "result" => $users,
                    "total_transaction" => $total_transaction,
                    "total_price_check" => $total_price_check,
                    "total_paid" => $total_paid
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "User does not exist in our database",
                    ]
                ];
            }
        }
        return response()->json($response, 200);
    }

    public function activePartners(Request $request){
        $authentication= Auth::user();
        if($authentication){
            if($request->has('sort_column')){
                if($request->sort_column=="partner_company"){
                    $column="`partners`.`partner_company`";
                }else if($request->sort_column=="created_at"){
                    $column="`partners`.`created_at`";
                }
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else{
                $order_by="";
            }
            if($request->has('search_keyword')){
                $search=" AND (`partners`.`partner_company` LIKE '%".$request->search_keyword."%' 
                OR `partners`.`partner_company` LIKE '%".$request->search_keyword."%'
                OR `user_profiles`.`user_profile_first_name` LIKE '%".$request->search_keyword."%'
                OR `user_profiles`.`user_profile_last_name` LIKE '%".$request->search_keyword."%'
                OR `users`.`user_email` LIKE '%".$request->search_keyword."%'
                OR CONCAT(`user_profiles`.`user_profile_first_name`,  ' ', `user_profiles`.`user_profile_last_name`) LIKE '%".$request->search_keyword."%'
                )";
            }else{
                $search="";
            }
            $partners= DB::select("SELECT COUNT(*) as total_partners FROM partners
            LEFT JOIN `user_profiles` ON `partners`.`partner_user`=`user_profiles`.`user_profile_user_id`
            LEFT JOIN `users` ON `partners`.`partner_user`=`users`.`user_id`
             WHERE `partners`.`partner_status`='".$request->partner_status."'".$search.$order_by);
            $total_partners=$partners[0]->{'total_partners'};
            $total_pages=ceil($total_partners / $request->limit);
            $offset = ($request->page-1) * $request->limit;
            $partner_list= DB::select("SELECT *, 
            (SELECT count(*) From `job_order_requests` WHERE `job_order_requests`.`job_order_user_id`=`partners`.`partner_id` AND (`job_order_requests`.`job_order_status`='0' OR `job_order_requests`.`job_order_status`='1' OR `job_order_requests`.`job_order_status`='5')) as `total_price_check`,
            (SELECT count(*)  From `job_order_requests` WHERE `job_order_requests`.`job_order_user_id`=`partners`.`partner_id` AND `job_order_requests`.`job_order_payment_status`='1') as `total_paid`,
            (SELECT SUM(`job_order_requests`.`job_order_total`) FROM `job_order_requests` where `job_order_requests`.`job_order_user_id`=`partners`.`partner_id` AND `job_order_requests`.`job_order_payment_status`='1' AND (`job_order_requests`.`job_order_status`!='0' AND `job_order_requests`.`job_order_status`!='1' AND `job_order_requests`.`job_order_status`!='5')) as `total_amount_paid`
            FROM `partners` 
            LEFT JOIN `user_profiles` ON `partners`.`partner_user`=`user_profiles`.`user_profile_user_id`
            LEFT JOIN `users` ON `partners`.`partner_user`=`users`.`user_id`
            WHERE `partner_status`='".$request->partner_status."'".$search.$order_by."
            LIMIT ".$offset.", ". $request->limit);
            if($partner_list){
                $response=(object)[
                    "success" => true,  
                    "result" => [
                        "datas" => $partner_list,
                        "total_pages" => $total_pages,
                        "page" => $request->page,
                        "total" => $total_partners,
                        "limit" => $request->limit
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "User does not exist in our database",
                    ]
                ];
            }
        }
        return response()->json($response, 200);
    }

    public function viewPartners(){
        $users = DB::select(
            "SELECT * From `partners` 
            LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id`=`partners`.`partner_user`");
        if($users){
            $response=(object)[
                "success" => true,
                "result" => $users
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "User does not exist in our database",
                ]
            ];
        }
    return response()->json($response, 200);
    }

}
