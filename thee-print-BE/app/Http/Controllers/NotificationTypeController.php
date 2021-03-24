<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Notification_type;
use Auth;

class NotificationTypeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function getNotificationMessage(){
        $notification_types= DB::select("SELECT `notification_types`.*,`user_profiles`.`user_profile_first_name`,`user_profiles`.`user_profile_last_name`  FROM `notification_types`
        LEFT JOIN `user_profiles` ON `notification_types`.`updated_by` = `user_profiles`.`user_profile_user_id`
        WHERE `notification_types`.`notification_type_id`='3' OR `notification_types`.`notification_type_id`='4' OR `notification_type_id`='5'
        OR `notification_types`.`notification_type_id`='6' ORDER BY `notification_types`.`notification_type_id` ASC");
        if($notification_types){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $notification_types,
                ]
            ];
        }
        return response()->json($response, 200);
    }

    public function updateNotificationMessage(Request $request){
        $notification_type = Notification_type::where('notification_type_id', $request->notification_type_id);
        if($notification_type){
            $notification_type->update($request->all());
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Notification Messages has been successfully updated",
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
}


