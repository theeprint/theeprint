<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\User_profile;
use App\Partner;
use App\User;
use App\Notification;
use Auth;


class ConfirmationController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    }
    public function getConfirmation(Request $request){
        $users = DB::select("SELECT * FROM `users` 
        LEFT JOIN `user_profiles` ON `users`.`user_id`=`user_profiles`.`user_profile_user_id`
        LEFT JOIN `partners` ON `users`.`user_id`=`partners`.`partner_user`
        WHERE `user_password`='".$request->input('confirmation_code')."'");
        if($users){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $users,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => 'Invalid Confirmation Code'
                ]
            ];
        }
    return response()->json($response, 201);
    }
    public function confirmPartner(Request $request){
        date_default_timezone_set('Asia/Manila');
        $users = DB::select("UPDATE `users` set `user_password`=password('".md5($request->input('user_password'))."'), `user_last_login`='".date("Y-m-d H:i:s")."' where `user_id`='".$request->input('user_id')."'");
        $users = DB::select("SELECT * From `users` where `user_id`='".$request->input('user_id')."'  AND `user_password`=password('".md5($request->input('user_password'))."') Limit 1");
        if($users){
            User::where('user_id', $users[0]->{'user_id'})->update(array('user_last_login' => date('Y-m-d h:i:s')));
                $generated_token=base64_encode($users[0]->{'user_password'}.date("Y-m-dh:i:sa"));
                $token_expiration = date("Y-m-d H:i:s", strtotime('+8 hours'));
                $token = Token::create(
                    [
                        "user_id" =>  $users[0]->{'user_id'},
                        "token" => $generated_token,
                        "token_type" => '1',
                        "token_expiration" => $token_expiration,
                        "created_at" => "",
                        "updated_at" => ""
                    ]
                );
                if($users[0]->{'user_role_id'}==2){
                    $admin = User::where('user_role_id', '1')->get();
                    for($i=0;$i<sizeof($admin);$i++){
                        $notification = Notification::create(
                            [   
                                "notification_type" => '3',
                                "notification_sender" => $users[0]->{'user_id'},
                                "notification_receiver" => $admin[$i]->{'user_id'},
                                "notification_link" => $users[0]->{'user_id'},
                            ]
                        );
                    }
                }
                $response=(object)[
                    "success" => true,
                    "results" => [
                        "message" => "Successfully Logged-in",
                        "user_id" => $users[0]->{'user_id'},
                        "user_role_id" => $users[0]->{'user_role_id'},
                        "token" => $generated_token
                    ]
                ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => '  Confirmation Code'
                ]
            ];
        }
    return response()->json($response, 201);
    }
}
