<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token; 
use App\User; 

class ValidatePasswordController extends Controller 
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){}
    public function validatePassword(Request $request){
        $password=md5($request->password);
        date_default_timezone_set('Asia/Manila');
        $users = DB::select("SELECT * From `users` where `user_id`='".$request->user_id."'  AND `user_password`=password('".$password."') Limit 1");
        if($users){
            $response=(object)[
                "success" => true,
                "results" => [
                    "message" => "Password Matched"
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "results" => [
                    "message" => "Incorrect Password",
                ]
            ];
        }
        return response()->json($response, 201);
    }
}
