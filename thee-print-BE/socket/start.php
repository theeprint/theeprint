<?php
require_once __DIR__ . '/vendor/autoload.php';
include_once('../api/public/email/connection.php');
// $di=\DI\ContainerBuilder::buildDevContainer();
use Workerman\Worker;
use PHPSocketIO\SocketIO;
// $notification_type=$di->get('App\Notification_type');

// use App\User;
// Listen port 2021 for socket.io client
// SSL context
defined('DS') ? null : define("DS", DIRECTORY_SEPARATOR);
defined('ROOT') ? null : define("ROOT", dirname(dirname(__FILE__)));

$cert = dirname(ROOT).'/ssl/certs/api_theeprint_com_ph_b8d93_1cfe1_1620691199_e614493936d05b0f4ab98f22627d8719.crt';
$key = dirname(ROOT).'/ssl/keys/b8d93_1cfe1_c5353579b25a2c042569f36e61dc130d.key';

$context = array(
    'ssl' => array(
        'local_cert'  => $cert,
        'local_pk'    => $key
        /*'verify_peer' => false*/
    )
);


class InsertChatConversation{
    private $db = null;
    public function __construct(){
        $this->db = new DBObject;
    }
    public function save($user_data){
        if (isset($user_data) && count($user_data) > 0){
            $user_id = $this->db->insert('chat_conversations', $user_data);
            return $user_id;	
        }
    }
}
class InsertChatConversationUser{
    private $db = null;
    public function __construct(){
        $this->db = new DBObject;
    }
    public function save($user_data){
        if (isset($user_data) && count($user_data) > 0){
            $user_id = $this->db->insert('chat_conversation_users', $user_data);
            return $user_id;	
        }
    }
}
class InsertChatConversationMessage{
    private $db = null;
    public function __construct(){
        $this->db = new DBObject;
    }
    public function save($user_data){
        if (isset($user_data) && count($user_data) > 0){
            $user_id = $this->db->insert('chat_conversation_messages', $user_data);
            return $user_id;	
        }
    }
}
$io = new SocketIO(7000, $context);
// $io = new SocketIO(3001);
// var_dump($context);
// die;
$io->on('connection', function ($socket) use ($io) {
    $socket->on('message', function ($msg) use ($io) {
        $now = new DateTime();
        $now->setTimezone(new DateTimeZone('Asia/Manila'));
        if(array_key_exists('conversation_id', $msg)){
            $user = new DBObject;
            $query1 = array(
            'table' => "`chat_conversations` where id='".$msg['conversation_id']."'"
            );
            $row = $user->select($query1);
            foreach ($row as $rows){
                if($rows['is_deleted']==0){
                    $insert_chat_conversation_message = new InsertChatConversationMessage;
                    $data = array(
                        'user_id' => $msg["user_id"],
                        'chat_conversation_id' => $msg["conversation_id"],
                        'message' => $msg["message"],
                        'update_at' => $now->format('Y-m-d G:i:s'),
                    );
                    $message_id = $insert_chat_conversation_message->save($data);
                    $updateChatConversationObject = new DBObject;
                    $updateChatconversation = array(
                        'last_sent_message' => $msg["message"],
                        'seen_by' => ','.$msg["user_id"].',',
                        'update_at' =>  $now->format('Y-m-d G:i:s'),
                    );
                    $reference = array(
                        'id' => $msg["conversation_id"],        
                    );
                    $id = $updateChatConversationObject->update('chat_conversations',$updateChatconversation,$reference); 
                    //new chat for deleted convo
                    $updateConversationUsersObject = new DBObject;
                    $updateConversationUsersArray = array(
                        'deleted_by_user' => 0,
                        'update_at' =>  $now->format('Y-m-d G:i:s'),
                    );
                    $reference = array(
                        'chat_conversation_id' => $msg["conversation_id"],        
                    );
                    $id = $updateConversationUsersObject->update('chat_conversation_users',$updateConversationUsersArray,$reference); 
                }else{
                    $insert_chat_conversation = new InsertChatConversation;
                    $data = array(
                        'title' => 'Inquiries',
                        'user1' => '1',
                        'user2' => $msg["receiver"],
                        'is_deleted' => 0,
                        'seen_by' => ','.$msg["user_id"].',',
                        'type' => 'Group Message',
                    );
                    $chat_conversation_id = $insert_chat_conversation->save($data);
                    $msg['userLevel']='user';
                    $msg['chat_conversation_id']=$chat_conversation_id;
                    $msg['created_at']=$now->format('Y-m-d G:i:s');
                    if($chat_conversation_id){
                        $user = new DBObject;
                        $query1 = array(
                        'table' => "`users` WHERE user_role_id='1'"
                        );
                        $row = $user->select($query1);
                        foreach ($row as $rows){
                            $insert_chat_conversation_user = new InsertChatConversationUser;
                            $data = array(
                                'user_id' => $rows['receiver'],
                                'chat_conversation_id' => $chat_conversation_id,
                                'update_at' => $now->format('Y-m-d G:i:s'),
                            );
                            $id = $insert_chat_conversation_user->save($data);
                        }
                        $data = array(
                            'user_id' => $msg["user_id"],
                            'chat_conversation_id' => $chat_conversation_id,
                            'update_at' => $now->format('Y-m-d G:i:s'),
                        );
                        $id = $insert_chat_conversation_user->save($data);
                        $insert_chat_conversation_message = new InsertChatConversationMessage;
                        $data = array(
                            'user_id' => $msg["user_id"],
                            'chat_conversation_id' => $chat_conversation_id,
                            'message' => $msg["message"],
                            'update_at' => $now->format('Y-m-d G:i:s'),
                        );
                        $id = $insert_chat_conversation_message->save($data);
                        $updateChatConversationObject = new DBObject;
                        $updateChatconversation = array(
                            'last_sent_message' => $msg["message"],
                            'seen_by' => ','.$msg["user_id"].',',
                            'update_at' =>  $now->format('Y-m-d G:i:s'),
                        );
                        $reference = array(
                            'id' => $chat_conversation_id,       
                        );
                        $id = $updateChatConversationObject->update('chat_conversations',$updateChatconversation,$reference);
                        //new chat for deleted convo
                        $updateConversationUsersObject = new DBObject;
                        $updateConversationUsersArray = array(
                            'deleted_by_user' => 0,
                            'update_at' =>  $now->format('Y-m-d G:i:s'),
                        );
                        $reference = array(
                            'chat_conversation_id' => $msg["conversation_id"],        
                        );
                        $id = $updateConversationUsersObject->update('chat_conversation_users',$updateConversationUsersArray,$reference);
                    }
                }
            }
        }else{
            $insert_chat_conversation = new InsertChatConversation;
            $data = array(
                'title' => 'Inquiries',
                'user1' => '1',
                'user2' => $msg["receiver"],
                'is_deleted' => 0,
                'seen_by' => ','.$msg["user_id"].',',
                'type' => 'Group Message',
            );
            if(array_key_exists('sender', $msg)){
                $data['seen_by']=','.$msg["sender"].',';
            }
            $chat_conversation_id = $insert_chat_conversation->save($data);
            $msg['userLevel']='user';
            $msg['chat_conversation_id']=$chat_conversation_id;
            $msg['created_at']=$now->format('Y-m-d G:i:s');
            if($chat_conversation_id){
                $user = new DBObject;
                $query1 = array(
                'table' => "`users` WHERE user_role_id='1'"
                );
                $row = $user->select($query1);
                foreach ($row as $rows){
                    $insert_chat_conversation_user = new InsertChatConversationUser;
                    $data = array(
                        'user_id' => $rows['user_id'],
                        'chat_conversation_id' => $chat_conversation_id,
                        'update_at' => $now->format('Y-m-d G:i:s'),
                    );
                    $id = $insert_chat_conversation_user->save($data);
                }
                $data = array(
                    'user_id' => $msg["receiver"],
                    'chat_conversation_id' => $chat_conversation_id,
                    'update_at' => $now->format('Y-m-d G:i:s'),
                );
                $id = $insert_chat_conversation_user->save($data);
                $insert_chat_conversation_message = new InsertChatConversationMessage;
                $data = array(
                    'user_id' => $msg["user_id"],
                    'chat_conversation_id' => $chat_conversation_id,
                    'message' => $msg["message"],
                    'update_at' => $now->format('Y-m-d G:i:s'),
                );
                if(array_key_exists('sender', $msg)){
                    $data['user_id']=$msg["sender"];
                }
                var_dump($data);
                $message_id = $insert_chat_conversation_message->save($data);
                $updateChatConversationObject = new DBObject;
                $updateChatconversation = array(
                    'last_sent_message' => $msg["message"],
                    'update_at' =>  $now->format('Y-m-d G:i:s'),
                    'seen_by' => ','.$msg["user_id"].',',
                );
                if(array_key_exists('sender', $msg)){
                    $data['seen_by']=','.$msg["sender"].',';
                }
                $reference = array(
                    'id' => $chat_conversation_id,       
                );
                $id = $updateChatConversationObject->update('chat_conversations',$updateChatconversation,$reference);
                //new chat for deleted convo
                $updateConversationUsersObject = new DBObject;
                $updateConversationUsersArray = array(
                    'deleted_by_user' => 0,
                    'update_at' =>  $now->format('Y-m-d G:i:s'),
                );
                $reference = array(
                    'chat_conversation_id' => $msg["conversation_id"],        
                );
                $id = $updateConversationUsersObject->update('chat_conversation_users',$updateConversationUsersArray,$reference);
            }
        }
        $msg['created_at']=$now->format('Y-m-d G:i:s');
        $msg['update_at']=$now->format('Y-m-d G:i:s');
        $msg['message_id']=$message_id;
        var_dump($msg);
        $io->emit('chat message', $msg);
    });
    $socket->on('notification', function ($notification) use ($io) {
        var_dump($notification);
        $user = new DBObject;
        if(array_key_exists('limit', $notification)){
            $query1 = array(
                'table' => "`notifications` WHERE notification_receiver='".$notification["notification_receiver"]."' order by `notification_id` DESC limit ".$notification["limit"]
            );
        }else{
            $query1 = array(
                'table' => "`notifications` WHERE notification_receiver='".$notification["notification_receiver"]."' order by `notification_id` DESC limit 1"
            );
        }
        $row = $user->select($query1);
        $count=0;
        foreach ($row as $rows){
            $count++;
            $user2 = new DBObject;
            $query2 = array(
                'table' => "`partners` WHERE partner_user='".$rows["notification_sender"]."' limit 1"
            );
            $row2 = $user2->select($query2);
            foreach ($row2 as $rows2){
                $company_name=$rows2['partner_company'];
                $company_logo=$rows2['partner_logo'];
            }
            $notification_data = array(
                'notification_id' => $rows['notification_id'],
                'notification_type' => $rows['notification_type'],
                'notification_sender' => $rows['notification_sender'],
                'notification_receiver' => $rows['notification_receiver'],
                'notification_data' => $rows['notification_data'],
                'notification_link' => $rows['notification_link'],
                'notification_read' => $rows['notification_read'],
                'created_at' => $rows['created_at'],
                'updated_at' => $rows['updated_at'],
                'partner_logo' => $company_logo,
                'partner_company' => $company_name,
                'count' => $count,
            );
            var_dump($notification_data);
            $io->emit('notification', $notification_data);
        }
    });
    $socket->on('deleteMessage', function ($deleteMessage) use ($io) {
        var_dump($deleteMessage);
        $updateMessageConversationObject = new DBObject;
        $updateMessageConversation = array(
            'deleted_by' => $deleteMessage["deleted_by"],
        );
        $reference = array(
            'id' => $deleteMessage["id"],
        );
        $id = $updateMessageConversationObject->update('chat_conversation_messages',$updateMessageConversation,$reference);
        $io->emit('deleteMessage', $deleteMessage);
    });
});
Worker::runAll();
?>