<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\User;
use Auth;


class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }
    public function updateUser($user_id, Request $request){
        $user = User::findOrFail($user_id);
        if($user){
            $user->update($request->all());
            if($request->has('user_password')){
                $users = DB::statement("UPDATE `users` 
                set `user_password`=password('".md5($request->user_password)."')
                where `user_id`='".$user_id."'");
            }
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "User has been Successfully Updated",
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
        return response()->json($response, 200);
    }
    public function getAdminAccounts(){
        $users = DB::select("SELECT * FROM `users` 
        LEFT JOIN `user_profiles` ON `users`.`user_id`=`user_profiles`.`user_profile_user_id`
        WHERE `user_role_id`='1'");
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
}
