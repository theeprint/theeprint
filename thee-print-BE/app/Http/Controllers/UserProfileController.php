<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\User_profile;
use App\Partner;
use App\User;
use Auth;


class UserProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }
    
    public function updateProfile($user_id, Request $request){
        function getRandomString($n) {
            $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $randomString = '';
          
            for ($i = 0; $i < $n; $i++) {
                $index = rand(0, strlen($characters) - 1);
                $randomString .= $characters[$index];
            }
          
            return $randomString;
        }
        $imagepath = '';
        $user_avatar='';
        $user_profile = User_profile::where('user_profile_user_id', $user_id);
        if($user_profile){
            $user_profile->update($request->all()); 
            if($request->hasFile('user_profile_avatar')){
                $user_file      = $request->file('user_profile_avatar');
                $user_filename  = $user_file->getClientOriginalName();
                $user_extension = $user_file->guessExtension();
                $user_picture   = date('His').'-'.getRandomString(8);
                $user_avatar    = $user_picture.'.'.$user_extension;
                $user_destinationPath = storage_path('app/images/user_avatar');
                $user_file->move($user_destinationPath, $user_avatar);
                DB::statement("UPDATE `user_profiles` set `user_profile_avatar` = '".$user_avatar."' Where `user_profile_user_id` = '".$user_id."'");
            }
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "User Successfully Updated.",
                    "user_avatar" => $user_avatar
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

    public function addProfile(Request $request){
        function getRandomString($n) {
            $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $randomString = '';
          
            for ($i = 0; $i < $n; $i++) {
                $index = rand(0, strlen($characters) - 1);
                $randomString .= $characters[$index];
            }
          
            return $randomString;
        }
        $password=getRandomString(8);
        $existing_user = DB::select("SELECT * FROM `users` WHERE `user_email`='".$request->input('user_email')."'");
        if ($existing_user) {
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Email Already Exist in our Database",
                ]
            ];
        }else{
            $user_file      = $request->file('user_profile_avatar');
            $user_filename  = $user_file->getClientOriginalName();
            $user_extension = $user_file->guessExtension();
            $user_picture   = date('His').'-'.getRandomString(8);
            $user_avatar    = $user_picture.'.'.$user_extension;
            $user_destinationPath = storage_path('app/images/user_avatar');
            $user_file->move($user_destinationPath, $user_avatar);
            
            $users = DB::table("users")->insertGetId(
                [ 
                    'user_email' => $request->input('user_email'),
                    'user_password' => md5($password),
                    'user_role_id' => $request->input('user_role_id'),
                    'created_at' => date('Y-m-d h:i:s')
                ]
            );
            $user_profile = User_profile::create(
                [
                    "user_profile_user_id" =>  $users,
                    "user_profile_first_name" => $request->input('user_profile_first_name'),
                    "user_profile_last_name" => $request->input('user_profile_last_name'),
                    "user_profile_phone" => $request->input('user_profile_phone'),
                    "user_profile_avatar" => $user_avatar                ]
            );
            if($user_profile){ 
            $response=(object)[
                    "success" => true,
                    "result" => [
                        "user_id" => $users,
                        "message" => $user_profile->{'user_profile_first_name'}." ".$user_profile->{'user_profile_last_name'}." has been successfully added in the Database",
                        "link" => md5($password)
                    ]
                ];
            }
        }
        return response()->json($response, 201);
    }
    public function getConfirmation(Request $request){
        $users = DB::select("SELECT * FROM `users` 
        LEFT JOIN `user_profiles` ON `users`.`user_id`=`user_profiles`.`user_profile_user_id`
        LEFT JOIN `partners` ON `users`.`user_id`=`partners`.`partner_user`
        WHERE `user_password`='".$request->confirmation_code."'");
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
    public function staffList(Request $request){
        $authentication= Auth::user();
        if($authentication){
            $order_by="";
            $search="";
            if($request->has('sort_column')){
                if($request->sort_column=="user_profile_first_name"){
                    $column="`user_profiles`.`user_profile_first_name`";
                }else if($request->sort_column=="created_at"){
                    $column="`user_profiles`.`created_at`";
                }
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }
            if($request->has('search_keyword')){
                $search=" AND (`user_profiles`.`user_profile_first_name` LIKE '%".$request->search_keyword."%'
                OR `user_profiles`.`user_profile_last_name` LIKE '%".$request->search_keyword."%'
                OR CONCAT(`user_profiles`.`user_profile_first_name`,  ' ', `user_profiles`.`user_profile_last_name`) LIKE '%".$request->search_keyword."%')";
            }
            $staff= DB::select("SELECT COUNT(*) as total_staff FROM users
            LEFT JOIN `user_profiles` ON `users`.`user_id`=`user_profiles`.`user_profile_user_id`
            WHERE `users`.`user_role_id`='1' ".$search.$order_by);
            $total_staff=$staff[0]->{'total_staff'};
            $total_pages=ceil($total_staff / $request->limit);
            $offset = ($request->page-1) * $request->limit;
            $staff_list= DB::select("SELECT * FROM `users`
            LEFT JOIN `user_profiles` ON `users`.`user_id`=`user_profiles`.`user_profile_user_id` 
            WHERE `users`.`user_role_id`='1' ".$search.$order_by."
            LIMIT ".$offset.", ". $request->limit);
            if($staff_list){
                $response=(object)[
                    "success" => true,  
                    "result" => [
                        "datas" => $staff_list,
                        "total_pages" => $total_pages,
                        "page" => $request->page,
                        "total" => $total_staff,
                        "limit" => $request->limit
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
        }
        return response()->json($response, 200);
    }
    
}
