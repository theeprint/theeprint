<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Cms_core_values;
use Auth;

class CoreValuesController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function viewCoreValues(){
        // $core_values = Cms_core_values::findOrFail('1');
        $core_values= DB::select("SELECT * FROM `cms_core_values`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_core_values`.`cms_core_values_update`
        WHERE cms_core_values_id='1'");
        if($core_values){
            $datas['data']=$core_values[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function updateCoreValues(Request $request){
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
        $core_values = Cms_core_values::findOrFail('1');
        if($core_values){
            $core_values->update($request->all());
            if($request->hasFile('cms_core_values_icon')){
                $cms_core_values_file      = $request->file('cms_core_values_icon');
                $cms_core_values_filename  = $cms_core_values_file->getClientOriginalName();
                $cms_core_values_extension = $cms_core_values_file->guessExtension();
                $cms_core_values_picture   = date('His').'-'.getRandomString(8);
                $cms_core_values_destinationPath = storage_path('/app/images/cms_logo');
                $cms_core_values_file->move($cms_core_values_destinationPath, $cms_core_values_picture.'.'.$cms_core_values_extension);
                $imagepath = $cms_core_values_picture.'.'.$cms_core_values_extension;
                DB::statement("UPDATE `cms_core_values` set `cms_core_values_icon` = '".$imagepath."' Where `cms_core_values_id` = '".$request->input('cms_core_values_id')."'"); 
            }
            
               
            if($request->hasFile('cms_core_values_icon1')){
                $cms_core_values_file      = $request->file('cms_core_values_icon1');
                $cms_core_values_filename  = $cms_core_values_file->getClientOriginalName();
                $cms_core_values_extension = $cms_core_values_file->guessExtension();
                $cms_core_values_picture   = date('His').'-'.getRandomString(8);
                $cms_core_values_destinationPath = storage_path('/app/images/cms_logo');
                $cms_core_values_file->move($cms_core_values_destinationPath, $cms_core_values_picture.'.'.$cms_core_values_extension);
                $imagepath = $cms_core_values_picture.'.'.$cms_core_values_extension;
                DB::statement("UPDATE `cms_core_values` set `cms_core_values_icon1` = '".$imagepath."' Where `cms_core_values_id` = '".$request->input('cms_core_values_id')."'"); 
            }
            
           
            if($request->hasFile('cms_core_values_icon2')){
                $cms_core_values_file      = $request->file('cms_core_values_icon2');
                $cms_core_values_filename  = $cms_core_values_file->getClientOriginalName();
                $cms_core_values_extension = $cms_core_values_file->guessExtension();
                $cms_core_values_picture   = date('His').'-'.getRandomString(8);
                $cms_core_values_destinationPath = storage_path('/app/images/cms_logo');
                $cms_core_values_file->move($cms_core_values_destinationPath, $cms_core_values_picture.'.'.$cms_core_values_extension);
                $imagepath = $cms_core_values_picture.'.'.$cms_core_values_extension;
                DB::statement("UPDATE `cms_core_values` set `cms_core_values_icon2` = '".$imagepath."' Where `cms_core_values_id` = '".$request->input('cms_core_values_id')."'"); 
            }
            
            
            if($request->hasFile('cms_core_values_icon3')){
                $cms_core_values_file      = $request->file('cms_core_values_icon3');
                $cms_core_values_filename  = $cms_core_values_file->getClientOriginalName();
                $cms_core_values_extension = $cms_core_values_file->guessExtension();
                $cms_core_values_picture   = date('His').'-'.getRandomString(8);
                $cms_core_values_destinationPath = storage_path('/app/images/cms_logo');
                $cms_core_values_file->move($cms_core_values_destinationPath, $cms_core_values_picture.'.'.$cms_core_values_extension);
                $imagepath = $cms_core_values_picture.'.'.$cms_core_values_extension;
                DB::statement("UPDATE `cms_core_values` set `cms_core_values_icon3` = '".$imagepath."' Where `cms_core_values_id` = '".$request->input('cms_core_values_id')."'");  
            }
            
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $core_values->{'core_values_label'}." has been successfully updated",
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


