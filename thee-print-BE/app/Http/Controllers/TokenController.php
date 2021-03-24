<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token; 
use App\User; 
use App\Notification; 
class TokenController extends Controller 
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){}
    public function validateToken(Request $request){
        date_default_timezone_set('Asia/Manila');
        $users = DB::select("SELECT * From `tokens` where `token`='".$request->token."'");
        if(count($users)>0){
            $time = strtotime($users[0]->token_expiration);
            $newformat =  new \DateTime($users[0]->token_expiration);
            $now = new \DateTime('NOW');
            if($newformat <= $now){
                $response=(object)[
                    "success" => false,
                    "results" => [
                        "message" => "Invalid token",
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => true,
                    "results" => [
                        "message" => "valid token"
                    ]
                ];
            }
        }
        else{
            $response=(object)[
                "success" => false,
                "results" => [
                    "message" => "Invalid token"
                ]
            ];
        }
        return response()->json($response, 201);
    }
}
