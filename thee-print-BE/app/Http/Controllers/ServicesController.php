<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Cms_services;
use Auth;

class ServicesController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function viewServices()
    {   
        $services= DB::select("SELECT * FROM `cms_services`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_services`.`cms_services_update`
        WHERE cms_services_id='1'");
        // $services = Cms_services::findOrFail('1');
        if($services){
            $datas['data']=$services[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function updateServices(Request $request){
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
        $services = Cms_services::findOrFail('1');
        if($services){
            $services->update($request->all());
            if($request->hasFile('cms_services_logo')){
                $cms_services_file      = $request->file('cms_services_logo');
                $cms_services_filename  = $cms_services_file->getClientOriginalName();
                $cms_services_extension = $cms_services_file->guessExtension();
                $cms_services_picture   = date('His').'-'.getRandomString(8);
                $cms_services_destinationPath = storage_path('/app/images/cms_logo');
                $cms_services_file->move($cms_services_destinationPath, $cms_services_picture.'.'.$cms_services_extension);
                $imagepath = $cms_services_picture.'.'.$cms_services_extension;
                DB::statement("UPDATE `cms_services` set `cms_services_logo` = '".$imagepath."' Where `cms_services_id` = '".$request->input('cms_services_id')."'"); 
            }
            
               
            if($request->hasFile('cms_services_logo1')){
                $cms_services_file      = $request->file('cms_services_logo1');
                $cms_services_filename  = $cms_services_file->getClientOriginalName();
                $cms_services_extension = $cms_services_file->guessExtension();
                $cms_services_picture   = date('His').'-'.getRandomString(8);
                $cms_services_destinationPath = storage_path('/app/images/cms_logo');
                $cms_services_file->move($cms_services_destinationPath, $cms_services_picture.'.'.$cms_services_extension);
                $imagepath = $cms_services_picture.'.'.$cms_services_extension;
                DB::statement("UPDATE `cms_services` set `cms_services_logo1` = '".$imagepath."' Where `cms_services_id` = '".$request->input('cms_services_id')."'");
            }
            
           
            if($request->hasFile('cms_services_logo2')){
                $cms_services_file      = $request->file('cms_services_logo2');
                $cms_services_filename  = $cms_services_file->getClientOriginalName();
                $cms_services_extension = $cms_services_file->guessExtension();
                $cms_services_picture   = date('His').'-'.getRandomString(8);
                $cms_services_destinationPath = storage_path('/app/images/cms_logo');
                $cms_services_file->move($cms_services_destinationPath, $cms_services_picture.'.'.$cms_services_extension);
                $imagepath = $cms_services_picture.'.'.$cms_services_extension;
                DB::statement("UPDATE `cms_services` set `cms_services_logo2` = '".$imagepath."' Where `cms_services_id` = '".$request->input('cms_services_id')."'");
            }
            
            
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $services->{'services_label'}." has been successfully updated",
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


