<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Cms_featured_partners;
use Auth;

class FeaturedPartnersController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    } 

    public function viewFeaturedPartners()
    {
        // $featured_partners = Cms_featured_partners::findOrFail('1');
        $featured_partners= DB::select("SELECT * FROM `cms_featured_partners`
        LEFT JOIN `user_profiles` ON `user_profiles`.`user_profile_user_id` = `cms_featured_partners`.`cms_featured_partners_updated`
        WHERE cms_featured_partners_id='1'");
        if($featured_partners){
            $datas['data']=$featured_partners[0];
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function updateFeaturedPartners(Request $request){
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
        $featured_partners = Cms_featured_partners::findOrFail('1');
        if($featured_partners){
            $featured_partners->update($request->all());
            if($request->hasFile('cms_featured_partners_logo')){
                $cms_featured_partners_file      = $request->file('cms_featured_partners_logo');
                $cms_featured_partners_filename  = $cms_featured_partners_file->getClientOriginalName();
                $cms_featured_partners_extension = $cms_featured_partners_file->guessExtension();
                $cms_featured_partners_picture   = date('His').'-'.getRandomString(8);
                $cms_featured_partners_destinationPath = storage_path('/app/images/cms_logo');
                $cms_featured_partners_file->move($cms_featured_partners_destinationPath, $cms_featured_partners_picture.'.'.$cms_featured_partners_extension);
                $imagepath = $cms_featured_partners_picture.'.'.$cms_featured_partners_extension;
                DB::statement("UPDATE `cms_featured_partners` set `cms_featured_partners_logo` = '".$imagepath."' Where `cms_featured_partners_id` = '".$request->input('cms_featured_partners_id')."'");
            }
            
               
            if($request->hasFile('cms_featured_partners_logo1')){
                $cms_featured_partners_file      = $request->file('cms_featured_partners_logo1');
                $cms_featured_partners_filename  = $cms_featured_partners_file->getClientOriginalName();
                $cms_featured_partners_extension = $cms_featured_partners_file->guessExtension();
                $cms_featured_partners_picture   = date('His').'-'.getRandomString(8);
                $cms_featured_partners_destinationPath = storage_path('/app/images/cms_logo');
                $cms_featured_partners_file->move($cms_featured_partners_destinationPath, $cms_featured_partners_picture.'.'.$cms_featured_partners_extension);
                $imagepath = $cms_featured_partners_picture.'.'.$cms_featured_partners_extension;
                DB::statement("UPDATE `cms_featured_partners` set `cms_featured_partners_logo1` = '".$imagepath."' Where `cms_featured_partners_id` = '".$request->input('cms_featured_partners_id')."'");
            }
            

            if($request->hasFile('cms_featured_partners_logo2')){
                $cms_featured_partners_file      = $request->file('cms_featured_partners_logo2');
                $cms_featured_partners_filename  = $cms_featured_partners_file->getClientOriginalName();
                $cms_featured_partners_extension = $cms_featured_partners_file->guessExtension();
                $cms_featured_partners_picture   = date('His').'-'.getRandomString(8);
                $cms_featured_partners_destinationPath = storage_path('/app/images/cms_logo');
                $cms_featured_partners_file->move($cms_featured_partners_destinationPath, $cms_featured_partners_picture.'.'.$cms_featured_partners_extension);
                $imagepath = $cms_featured_partners_picture.'.'.$cms_featured_partners_extension;
                DB::statement("UPDATE `cms_featured_partners` set `cms_featured_partners_logo2` = '".$imagepath."' Where `cms_featured_partners_id` = '".$request->input('cms_featured_partners_id')."'");
            }
            
            
            if($request->hasFile('cms_featured_partners_logo3')){
                $cms_featured_partners_file      = $request->file('cms_featured_partners_logo3');
                $cms_featured_partners_filename  = $cms_featured_partners_file->getClientOriginalName();
                $cms_featured_partners_extension = $cms_featured_partners_file->guessExtension();
                $cms_featured_partners_picture   = date('His').'-'.getRandomString(8);
                $cms_featured_partners_destinationPath = storage_path('/app/images/cms_logo');
                $cms_featured_partners_file->move($cms_featured_partners_destinationPath, $cms_featured_partners_picture.'.'.$cms_featured_partners_extension);
                $imagepath = $cms_featured_partners_picture.'.'.$cms_featured_partners_extension;
                DB::statement("UPDATE `cms_featured_partners` set `cms_featured_partners_logo3` = '".$imagepath."' Where `cms_featured_partners_id` = '".$request->input('cms_featured_partners_id')."'");
            }
            
           
            if($request->hasFile('cms_featured_partners_logo4')){
                $cms_featured_partners_file      = $request->file('cms_featured_partners_logo4');
                $cms_featured_partners_filename  = $cms_featured_partners_file->getClientOriginalName();
                $cms_featured_partners_extension = $cms_featured_partners_file->guessExtension();
                $cms_featured_partners_picture   = date('His').'-'.getRandomString(8);
                $cms_featured_partners_destinationPath = storage_path('/app/images/cms_logo');
                $cms_featured_partners_file->move($cms_featured_partners_destinationPath, $cms_featured_partners_picture.'.'.$cms_featured_partners_extension);
                $imagepath = $cms_featured_partners_picture.'.'.$cms_featured_partners_extension;
                DB::statement("UPDATE `cms_featured_partners` set `cms_featured_partners_logo4` = '".$imagepath."' Where `cms_featured_partners_id` = '".$request->input('cms_featured_partners_id')."'");
            }
            
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $featured_partners->{'featured_partners_label'}." has been successfully updated",
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


