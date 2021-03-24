<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Cms_about_thee_print;
use Auth;

class AboutTheePrintController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function viewAboutTheePrint(){
        $about_thee_print= DB::select("SELECT * FROM `cms_about_thee_prints`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_about_thee_prints`.`cms_about_thee_print_update`
        WHERE cms_about_thee_print_id='1'");
        if($about_thee_print){
            $datas['data']=$about_thee_print[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function updateAboutTheePrint(Request $request){
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
        $about_thee_print = Cms_about_thee_print::where('cms_about_thee_print_id', '1');
        if($about_thee_print){
            $about_thee_print->update($request->all());
            if($request->hasFile('cms_about_thee_print_logo')){
                $cms_about_thee_print_file      = $request->file('cms_about_thee_print_logo');
                $cms_about_thee_print_filename  = $cms_about_thee_print_file->getClientOriginalName();
                $cms_about_thee_print_extension = $cms_about_thee_print_file->guessExtension();
                $cms_about_thee_print_picture   = date('His').'-'.getRandomString(8);
                $cms_about_thee_print_destinationPath = storage_path('/app/images/cms_logo');
                $cms_about_thee_print_file->move($cms_about_thee_print_destinationPath, $cms_about_thee_print_picture.'.'.$cms_about_thee_print_extension);
                $imagepath = $cms_about_thee_print_picture.'.'.$cms_about_thee_print_extension;
                DB::statement("UPDATE `cms_about_thee_prints` set `cms_about_thee_print_logo` = '".$imagepath."' Where `cms_about_thee_print_id` = '".$request->input('cms_about_thee_print_id')."'");
            }
            
            if($request->hasFile('cms_about_thee_print_logo1')){
                $cms_about_thee_print_file      = $request->file('cms_about_thee_print_logo1');
                $cms_about_thee_print_filename  = $cms_about_thee_print_file->getClientOriginalName();
                $cms_about_thee_print_extension = $cms_about_thee_print_file->guessExtension();
                $cms_about_thee_print_picture   = date('His').'-'.getRandomString(8);
                $cms_about_thee_print_destinationPath = storage_path('/app/images/cms_logo');
                $cms_about_thee_print_file->move($cms_about_thee_print_destinationPath, $cms_about_thee_print_picture.'.'.$cms_about_thee_print_extension);
                $imagepath = $cms_about_thee_print_picture.'.'.$cms_about_thee_print_extension;
                DB::statement("UPDATE `cms_about_thee_prints` set `cms_about_thee_print_logo1` = '".$imagepath."' Where `cms_about_thee_print_id` = '".$request->input('cms_about_thee_print_id')."'");
            }
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "About Us Section has been successfully updated",
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
    public function socketTest(){
        $about_thee_print= DB::select("SELECT * FROM `cms_about_thee_prints`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_about_thee_prints`.`cms_about_thee_print_update`
        WHERE cms_about_thee_print_id='1'");
        // $about_thee_print = Cms_about_thee_print::findOrFail('1');
        if($about_thee_print){
            $datas['data']=$about_thee_print[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }
}


