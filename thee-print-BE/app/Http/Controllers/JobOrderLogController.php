<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\Job_order_log;
use Auth;


class JobOrderLogController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }   

    public function jobOrderLogByStatus(Request $request){
        $authentication= Auth::user();
        $job_order_log= DB::select("SELECT * FROM job_order_logs where job_order_status='".$request->input('job_order_status')."' AND job_order_request_id='".$request->input('job_order_request_id')."' ORDER BY job_order_log_id DESC limit 1");
        if($job_order_log){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $job_order_log,
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
        return response()->json($response, 200);
    }
}
