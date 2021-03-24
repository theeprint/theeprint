<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token; 
use App\User; 
use App\Notification; 
class LoginController extends Controller 
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){}
    public function login(Request $request){
        $password=md5($request->password);
        date_default_timezone_set('Asia/Manila');
        $users = DB::select("SELECT * From `users` where `user_email`='".$request->username."'  AND `user_password`=password('".$password."') AND `user_role_id`='".$request->user_role_id."' AND `user_status`!='0' Limit 1");
        if($users){
            if(!$users[0]->{'user_last_login'}){
                $admin = User::where('user_role_id', '1')->get();
                for($i=0;$i<sizeof($admin);$i++){
                    $notification = Notification::create(
                        [   
                            "notification_type" => '7',
                            "notification_sender" => $users[0]->{'user_id'},
                            "notification_receiver" => $admin[$i]->{'user_id'},
                            "created_at" => date('Y-m-d') 
                        ]
                    );
                }
            }
            User::where('user_id', $users[0]->{'user_id'})->update(array('user_last_login' => date('Y-m-d G:i:s')));
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
            $response=(object)[
                "success" => true,
                "results" => [
                    "message" => "Successfully Logged-in",
                    "user_id" => $users[0]->{'user_id'},
                    "user_role_id" => $users[0]->{'user_role_id'},
                    "token" => $generated_token
                ]
            ];
            User::where('user_id', $users[0]->{'user_id'})->update(array('user_last_login' => date('Y-m-d G:i:s')));
        }else{
            $response=(object)[
                "success" => false,
                "results" => [
                    "message" => "Incorrect Email or Password, Please try again",
                ]
            ];
        }
        return response()->json($response, 201);
    }
    public function logout(Request $request){
        Token::where('user_id',$request->user_id)->delete();
    }
}
