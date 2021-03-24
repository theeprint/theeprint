<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Cms_privacy;
use Auth;

class PrivacyPolicyController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        // $this->middleware('auth');
    } 

    public function viewPrivacyPolicy(){

        // $privacy = Cms_privacy::findOrFail(1);
        $privacy= DB::select("SELECT * FROM `cms_privacies`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_privacies`.`privacy_updated_by`
        WHERE privacy_id='1'");
        if($privacy){
            $datas['data']=$privacy[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }


    public function updatePrivacyPolicy(Request $request){

        $privacy = Cms_privacy::findOrFail($request->privacy_id);
        
        if($privacy){
            $privacy->update($request->all());
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $privacy->{'privacy_label'}." has been successfully updated",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid parameters",
                ]
            ];
        } 
        return response()->json($response, 200);
    }
    
}
