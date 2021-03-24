<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Company_address;
use Auth;

class CompanyAddressController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    } 
    
    public function addAddress(Request $request){
        if($request->company_address_default=='1'){
            Company_address::where('partner_id', $request->partner_id)->update(array('company_address_default' => '0'));
        }
        $company_address = Company_address::create($request->all());
        if($company_address){ 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $company_address->{'company_address_label'}." has been successfully added in the Database",
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
    public function updateAddress($company_address_id, Request $request){
        if($request->company_address_default=='1'){
            Company_address::where('partner_id', $request->partner_id)->update(array('company_address_default' => '0'));
        }
        $company_address = Company_address::findOrFail($company_address_id);
        if($company_address){
            $company_address->update($request->all());
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $company_address->{'company_address_label'}." has been successfully updated",
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
    public function getAddresses($partner_id){
        $company_address = DB::select("SELECT * FROM `company_addresses` WHERE `partner_id`='".$partner_id."' ORDER BY `company_address_default` DESC");
        if($company_address){
            $response=(object)[
                "success" => true,
                "result" => [
                    "data" => $company_address
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
    public function getAddress($company_address_id){
        $company_address = DB::select("SELECT * FROM `company_addresses` WHERE `company_address_id`='".$company_address_id."' ORDER BY `company_address_default` DESC");
        if($company_address){
            $response=(object)[
                "success" => true,
                "result" => [
                    "data" => $company_address
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
