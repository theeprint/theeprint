<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\Partner;
use App\Product_price;
use Auth;


class ProductPriceController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }

    public function addProductPrice(Request $request){
            $product_price = Product_price::create(
                [
                    "product_price_partner_id" =>  $request->product_price_partner_id,
                    "product_id" => $request->product_id,
                    "product_price_sqm" => $request->product_price_sqm,
                    "product_price_sqf" => $request->product_price_sqf,
                    "created_at" => date('Y-m-d')
                ]
            );
        if($product_price){ 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Product Prices has been successfully added in the Database",
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
    public function updateProductPrice($product_price_id, Request $request){
    	$product_price = Product_price::findOrFail($product_price_id);
        if($user){
            $product_price->update($request->all());
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Product Price has been Successfully Updated",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "User does not exist in our database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
    public function getProductPrice(Request $request){
        $search='';
        $order_by='';
        if($request->has('sort_column')){
            if($request->sort_column=="machine_print"){
                $column="`machine_prints`.`machine_print`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;

            }else if($request->sort_column=="product_media"){
                $column="`products`.`product_media`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }
            if($request->has('search_keyword')){
                $search=" AND (`machine_prints`.`machine_print` LIKE '%".$request->search_keyword."%' 
                OR `products`.`product_media` LIKE '%".$request->search_keyword."%')";
            }
        }
        $product_prices_total= DB::select("SELECT COUNT(*) as total_prices FROM product_prices
        LEFT JOIN `products` on `product_prices`.`product_id` = `products`.`product_id`
        LEFT JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id` 
        WHERE `product_prices`.`product_price_id` ".$search." ".$order_by); 
        $total_prices=$product_prices_total[0]->{'total_prices'};
        $total_pages=ceil($total_prices / $request->limit);
        $offset = ($request->page-1) * $request->limit;
       

    	$product_prices= DB::select("SELECT * FROM `product_prices` 
    	LEFT JOIN `products` on `product_prices`.`product_id` = `products`.`product_id`
        LEFT JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
        WHERE `product_prices`.`product_price_id` ".$search." ".$order_by."
        LIMIT ".$offset.", ". $request->limit);
        if($product_prices){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $product_prices,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $total_prices,
                    "limit" => $request->limit,
                ]
                
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No record in Database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
    public function updateProductPrices(Request $request){
        $product_price = Product_price::findOrFail($request->product_price_id);
        if($product_price){
            $product_price->update($request->all());
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Product Price has been Successfully Updated",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "User does not exist in our database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }

    public function getProductMediaPerPartner($partner_id){
        $media= DB::select("SELECT * FROM `product_prices` 
        JOIN `products` on `product_prices`.`product_id` = `products`.`product_id`
        JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
        WHERE `product_prices`.`product_price_partner_id`='".$partner_id."' AND `products`.`product_status`!=0 GROUP BY `products`.`product_media`");
        if($media){
            $response=(object)[
                "success" => true,
                "result" => [
                    "data" => $media,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No record in Database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
    public function getProductMachinePrintPerPartner($partner_id){
        $machine_prints= DB::select("SELECT * FROM `product_prices` 
        JOIN `products` on `product_prices`.`product_id` = `products`.`product_id`
        JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
        WHERE `product_prices`.`product_price_partner_id`='".$partner_id."' GROUP BY `products`.`product_machine_print`");
        if($machine_prints){
            $response=(object)[
                "success" => true,
                "result" =>  [
                    "data" => $machine_prints,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No record in Database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
    public function getMachinePrintByMedia($partner_id, $media){
        $media=urldecode($media);
        $machine_prints= DB::select("SELECT * FROM `product_prices` 
        JOIN `products` on `product_prices`.`product_id` = `products`.`product_id`
        JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
        WHERE `product_prices`.`product_price_partner_id`='".$partner_id."' AND `products`.`product_media`='".$media."' GROUP BY `products`.`product_machine_print`");
        if($machine_prints){
            $response=(object)[
                "success" => true,
                "result" =>  [
                    "data" => $machine_prints,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No record in Database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
    public function getProductPartners(Request $request){
        $products= DB::select("SELECT * FROM `product_prices` 
        JOIN `products` on `product_prices`.`product_id` = `products`.`product_id`
        JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
        WHERE `product_prices`.`product_price_partner_id`='".$request->product_price_partner_id."' AND `products`.`product_media`='".$request->product_media."' AND `products`.`product_machine_print`='".$request->machine_print."'");
        if($products){
            $response=(object)[
                "success" => true,
                "result" =>  [
                    "data" => $products,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No record in Database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
    public function getNewProductPriceList(Request $request){
        $products= DB::select("SELECT  *
        FROM    `products`
        LEFT JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id` 
        WHERE   `products`.product_id NOT IN (SELECT `product_prices`.`product_id` FROM `product_prices` WHERE `product_prices`.`product_price_partner_id`='".$request->partner_id."') AND (`products`.`product_status`='1' and `products`.`isDeleted`='0')");
        if($products){
            $response=(object)[
                "success" => true,
                "result" =>  [
                    "data" => $products,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No record in Database",
                ]
            ];
        } 
        return response()->json($response, 201);
    }
}
