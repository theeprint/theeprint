<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Notification_type;
use App\Notification;
use Auth;

class NotificationController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function getNotificationList(Request $request){
        $notification_total= DB::select("SELECT COUNT(*) as `notification_total` FROM `notifications` WHERE `notification_receiver`='".$request->user_id."' and `notification_isDeleted`=0 ORDER BY `notifications`.`notification_id` DESC");
        $notification_total_unseen= DB::select("SELECT COUNT(*) as `notification_total` FROM `notifications` WHERE `notification_receiver`='".$request->user_id."' and `notification_read`=0 and `notification_isDeleted`=0 ORDER BY `notifications`.`notification_id` DESC");
        $notification_total=$notification_total[0]->{'notification_total'};
        $total_pages=ceil($notification_total / $request->limit);
        $offset = ($request->page-1) * $request->limit;
        $notification= DB::select("SELECT `notifications`.*, `partners`.`partner_company`,`partners`.`partner_logo` FROM `notifications`
        LEFT JOIN `partners` ON `partners`.`partner_user`=`notifications`.`notification_sender`
        -- LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id`=`notifications`.`receiver`
        WHERE `notification_receiver`='".$request->user_id."' and `notification_isDeleted`=0 ORDER BY `notifications`.`notification_id` DESC  LIMIT ".$offset.", ". $request->limit);
        if($notification){
            $response=(object)[
                "success" => true,
                "result" => [
                    "data" => $notification,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $notification_total,
                    "unseen_total" => $notification_total_unseen[0]->{'notification_total'},
                    "limit" => $request->limit,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
            ];
        }
        return response()->json($response, 200);
    }
    public function seen(Request $request){
        $notification = Notification::where('notification_id', $request->notification_id);
        if($notification){
            $notification->update($request->all()); 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Notification has been updated",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid Parameters",
                ]
            ];
        }
        return response()->json($response, 200);
    }
    public function seenAll(Request $request){
        $notification = DB::statement("UPDATE `notifications` SET `notification_read`='1' where `notification_receiver`='".$request->notification_receiver."'");
        if($notification){
            // $notification->update($request->all()); 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Notification has been updated",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid Parameters",
                ]
            ];
        }
        return response()->json($response, 200);
    }
}


