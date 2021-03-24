<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Forgot_password;
use App\User;

class ForgotPasswordController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){}
    public function generateToken(Request $request){
        date_default_timezone_set('Asia/Manila');
        $users = DB::select("SELECT * From `users` where `user_email`='".$request->email."' and `user_last_login` IS NOT NULL Limit 1");
        if($users){
            $generated_token=md5($users[0]->{'user_email'}.date("Y-m-dh:i:sa"));
            $token_expiration = date("Y-m-d H:i:s", strtotime('+24 hours'));
            $token = Forgot_password::create(
                [
                    "forgot_password_user" =>  $users[0]->{'user_id'},
                    "forgot_password_token" => $generated_token,
                    "forgot_password_expiration" => $token_expiration,
                    "created_at" => "",
                    "updated_at" => ""
                ]
            );
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Reset password link has been sent to your Email Address",
                    "forgot_password_token" => $generated_token,
                    "generated_link" => "?".$users[0]->{'user_name'}."&".$generated_token
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Email doesn’t exist in our database",
                ]
            ];
        }
        return response()->json($response, 201);
    }
    public function generateToken2(Request $request){
        date_default_timezone_set('Asia/Manila');
        $users = DB::select("SELECT * From `users` where `user_email`='".$request->email."' Limit 1");
        if($users){
            $generated_token=md5($users[0]->{'user_email'}.date("Y-m-dh:i:sa"));
            $token_expiration = date("Y-m-d H:i:s", strtotime('+24 hours'));
            $token = Forgot_password::create(
                [
                    "forgot_password_user" =>  $users[0]->{'user_id'},
                    "forgot_password_token" => $generated_token,
                    "forgot_password_expiration" => $token_expiration,
                    "created_at" => "",
                    "updated_at" => ""
                ]
            );
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Reset password link has been sent to your Email Address",
                    "forgot_password_token" => $generated_token,
                    "generated_link" => "?".$users[0]->{'user_name'}."&".$generated_token
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Email doesn’t exist in our database",
                ]
            ];
        }
        return response()->json($response, 201);
    }

    public function validateToken(Request $request){
        $forgot_password_token = DB::select("SELECT * From `forgot_passwords` where `forgot_password_token`='".$request->forgot_password_token."' and `forgot_password_expiration` > NOW() Limit 1");
        if($forgot_password_token){
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Reset token matched",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid Reset Token",
                ]
            ];
        }
        return response()->json($response, 201);
    }
    public function resetPassword(Request $request){
        $forgot_password_token = DB::select("SELECT * From `forgot_passwords` 
        LEFT JOIN `users` ON `forgot_passwords`.`forgot_password_user` = `users`.`user_id`
        where `forgot_passwords`.`forgot_password_token`='".$request->forgot_password_token."' and `forgot_passwords`.`forgot_password_expiration` > NOW() Limit 1");
        if($forgot_password_token){
            $user_id=$forgot_password_token[0]->{'forgot_password_user'};
            $password=md5($request->new_password);
            $users = DB::select("UPDATE `users` set `user_password`=password('".$password."') where `user_id`='".$user_id."'");
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Password successfully updated",
                    "data" => $forgot_password_token[0]
                ]
            ];
            // Forgot_password::where('forgot_password_token',$request->forgot_password_token)->delete();
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid Token",
                ]
            ];
        }
        return response()->json($response, 201);
    }
}
