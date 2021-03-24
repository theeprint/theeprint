<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\Partner;
use App\User;
use Auth;


class CompanyProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }

    public function updateCompanyProfile($user_id, Request $request){
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
        $authentication= Auth::user();
            if($authentication){
            $partner = Partner::where('partner_user', $user_id);
            if($partner){
                $partner->update($request->all());
                if($request->hasFile('partner_logo')){
                    $company_file      = $request->file('partner_logo');
                    $company_filename  = $company_file->getClientOriginalName();
                    $company_extension = $company_file->guessExtension();
                    $company_picture   = date('His').'-'.getRandomString(8);
                    $company_logo    = $company_picture.'.'.$company_extension;
                    $company_destinationPath = storage_path('/app/images/company_logo');
                    $company_file->move($company_destinationPath, $company_logo);
                    DB::select("UPDATE `partners` set `partner_logo` = '".$company_logo."' Where `partner_user` = '".$user_id."'");
                }
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "message" => "Company profile successfully updated",
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "Invalid parameter",
                    ]
                ];
            }
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
        $company_file      = $request->file('partner_logo');
        $company_filename  = $company_file->getClientOriginalName();
        $company_extension = $company_file->guessExtension();
        $company_picture   = date('His').'-'.getRandomString(8);
        $company_logo    = $company_picture.'.'.$company_extension;
        $company_destinationPath = storage_path('/app/images/company_logo');
        $company_file->move($company_destinationPath, $company_logo);
        
        $partner = Partner::create(
            [
                "partner_user" =>  $request->input('partner_user'),
                "partner_company" => $request->input('partner_company'),
                "partner_tin_number" => $request->input('partner_tin_number'),
                "user_profile_phone" => $request->input('user_profile_phone'),
                "partner_address" => $request->input('partner_address'),
                "partner_logo" => $company_logo
            ]
        );
        if($partner){ 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $partner->{'partner_company'}." has been successfully added in the Database",
                    'partner_id' =>$partner->{'partner_id'}
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
        return response()->json($response, 201);
    }
}
