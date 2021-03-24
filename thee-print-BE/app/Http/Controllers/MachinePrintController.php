<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\Product;
use Auth;


class MachinePrintController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }   

    public function allMachinePrint(){
        $authentication= Auth::user();
        if($authentication){
            $machine_prints= DB::select("SELECT * FROM machine_prints");
            if($machine_prints){
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "datas" => $machine_prints,
                    ]
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "No Data in Database",
                    ]
                ];
            }
        }
        return response()->json($response, 200);
    }
}
