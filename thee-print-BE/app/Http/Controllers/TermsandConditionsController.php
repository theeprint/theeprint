<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Cms_terms;
use Auth;

class TermsandConditionsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        // $this->middleware('auth');
    } 

    public function viewTermsandConditions(){
        $terms= DB::select("SELECT * FROM `cms_terms`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_terms`.`term_updated_by`
        WHERE term_id='1'");
        if($terms){
            $datas['data']=$terms[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

 

    public function updateTermsandConditions(Request $request)
    {
        $terms = Cms_terms::findOrFail($request->term_id);
        
        if($terms){
            $terms->update($request->all());
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $terms->{'terms_label'}." has been successfully updated",
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


