<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Chat_conversation_message;
use Auth;

class ChatConversationMessageController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function getChatConversationMessage(Request $request){
        $chat_message_total= DB::select("SELECT COUNT(*) as messages_total FROM `chat_conversation_messages` WHERE `chat_conversation_id`='".$request->conversation_id."'");
        $chat_message_total=$chat_message_total[0]->{'messages_total'};
        $total_pages=ceil($chat_message_total / $request->limit);
        $offset = ($request->page-1) * $request->limit;
        $conversation= DB::select("SELECT `chat_conversation_messages`.*,`user_profiles`.`user_profile_first_name`,`user_profiles`.`user_profile_last_name`,`partners`.`partner_company`,`partners`.`partner_logo`,`users`.`user_role_id`,`user_profiles`.`user_profile_avatar` FROM `chat_conversation_messages`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id`=`chat_conversation_messages`.`user_id`
        LEFT JOIN `partners` ON `partners`.`partner_user` = `chat_conversation_messages`.`user_id`
        LEFT JOIN `users` ON `users`.`user_id` = `chat_conversation_messages`.`user_id`
        WHERE `chat_conversation_id`='".$request->conversation_id."' ORDER BY `chat_conversation_messages`.`created_at` DESC  LIMIT ".$offset.", ". $request->limit);
        if($conversation){
            $response=(object)[
                "success" => true,
                "result" => [
                    "data" => $conversation,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $chat_message_total,
                    "limit" => $request->limit,
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
    public function updateMessage(Request $request){
        $message = Chat_conversation_message::where('id', $request->id);
        if($message){
            $message->update($request->all()); 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Message has been updated",
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


