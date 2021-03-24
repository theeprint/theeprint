<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Chat_conversation;
use Auth;

class ChatConversationController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function getConversation(Request $request){
        if($request->has('search_keyword')){
            $search=" AND `partners`.`partner_company` LIKE '%".$request->search_keyword."%'";
        }else{
            $search="";
        }
        if($request->has('partner_id')){
            $conversation= DB::select("SELECT `chat_conversations`.*,`user_profiles`.*,`partners`.*,
            `chat_conversation_users`.`deleted_by_user`,`chat_conversation_users`.`date_deleted` FROM `chat_conversations`
            LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id`=`chat_conversations`.`user2`
            LEFT JOIN `partners` ON `partners`.`partner_user`=`chat_conversations`.`user2`
            LEFT JOIN `chat_conversation_users` ON `chat_conversation_users`.`user_id` = '".$request->user_id."' AND `chat_conversation_users`.`chat_conversation_id`=`chat_conversations`.`id`
            WHERE `chat_conversations`.`user2`='".$request->partner_id."' and `chat_conversation_users`.`deleted_by_user`!=1");
            if($conversation){
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "data" => $conversation,
                        "total_pages" => 1,
                        "page" => 1,
                        "total" => 1,
                        "limit" => 1,
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "No conversation yet",
                    ]
                ];
            }
        }else{
            $conversation_total= DB::select("SELECT COUNT(*) as conversation_total FROM `chat_conversations` WHERE `user1`='1' and `is_deleted`!='1' ORDER BY `chat_conversations`.`update_at` DESC");
            $chat_conversation_total=$conversation_total[0]->{'conversation_total'};
            $total_pages=ceil($chat_conversation_total / $request->limit);
            $offset = ($request->page-1) * $request->limit;
            $conversation= DB::select("SELECT `chat_conversations`.*,`user_profiles`.*,`partners`.*,
            `chat_conversation_users`.`deleted_by_user`,`chat_conversation_users`.`date_deleted` FROM `chat_conversations`
            LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id`=`chat_conversations`.`user2`
            LEFT JOIN `partners` ON `partners`.`partner_user`=`chat_conversations`.`user2`
            LEFT JOIN `chat_conversation_users` ON `chat_conversation_users`.`user_id` = '".$request->user_id."' AND `chat_conversation_users`.`chat_conversation_id`=`chat_conversations`.`id`
            WHERE `user1`='1' and `chat_conversation_users`.`deleted_by_user`!=1 ".$search." ORDER BY `chat_conversations`.`update_at` DESC  LIMIT ".$offset.", ". $request->limit);
            if($conversation){
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "data" => $conversation,
                        "total_pages" => $total_pages,
                        "page" => $request->page,
                        "total" => $chat_conversation_total,
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
        }
        return response()->json($response, 200);
    }
    public function updateConversation(Request $request){
        $conversation = Chat_conversation::where('id', $request->id);
        if($conversation){
            $conversation->update($request->all()); 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Conversation has been updated",
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

    public function deleteConversation(Request $request){
        $conversation= DB::select("UPDATE `chat_conversation_users` SET `deleted_by_user`='1', `date_deleted`='".date("Y-m-d G:i:s")."' WHERE `user_id`='".$request->user_id."' and `chat_conversation_id`='".$request->id."'");
        $response=(object)[
            "success" => true,
            "result" => [
                "message" => "Conversation has been updated",
            ]
        ];
        return response()->json($response, 200);
    }

    public function getConversationCount(Request $request){
        $unseen_count= DB::select("SELECT COUNT(*) as unseen_count FROM `chat_conversations` WHERE `user1`='1' and `is_deleted`!='1' and `seen_by` NOT LIKE '%,".$request->user_id.",%'");
        if($unseen_count){
            $response=(object)[
                "success" => true,
                "unseen_count" => $unseen_count
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


