<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Chat_conversation;
use Auth;

class ChatConversationUserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function getChatConversationUser(Request $request){
        $conversation= DB::select("SELECT * FROM `chat_conversation_users`
        WHERE `user_id`='".$request->user_id."' and `chat_conversation_id`='".$request->chat_conversation_id."'");
        if($conversation){
            $response=(object)[
                "success" => true,
                "result" => [
                    "data" => $conversation,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No converation yet",
                ]
            ];
        }
        return response()->json($response, 200);
    }
}


