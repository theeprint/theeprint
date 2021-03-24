<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\Product;
use Auth;


class ProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
        $this->middleware('auth');
    }
    public function singleProduct($product_id){
        $authentication= Auth::user();
        if($authentication){
            $products= DB::select("SELECT * FROM products 
                LEFT JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
                 WHERE `products`.`product_id`='".$product_id."'");
            if($products){
                $response=(object)[
                    "success" => true,
                    "result" => $products
                ];
            }else{
                $response=(object)[
                    "success" => false,
                    "result" => [
                        "message" => "User does not exist in our database",
                    ]
                ];
            }
        }
        return response()->json($response, 200);
    }

    public function allProducts(Request $request){
        $authentication= Auth::user();
        if($authentication){
            $search='';
            $order_by='';
            $product_status='';
            if($request->has('partner_status')){
                $product_status="`products`.`product_status`='".$request->partner_status."' AND";
            }
            if($request->has('sort_column')){
                if($request->sort_column=="product_item_code"){
                    $column="`products`.`product_item_code`";
                    $order_by=" ORDER BY ".$column." ".$request->sort_type;
                }else if($request->sort_column=="machine_print"){
                    $column="`machine_prints`.`machine_print`";
                    $order_by=" ORDER BY ".$column." ".$request->sort_type;
                }else if($request->sort_column=="product_media"){
                    $column="`products`.`product_media`";
                    $order_by=" ORDER BY ".$column." ".$request->sort_type;
                }else if($request->sort_column=="product_description"){
                    $column="`products`.`product_description`";
                    $order_by=" ORDER BY ".$column." ".$request->sort_type;
                }else if($request->sort_column=="created_at"){
                    $column="`products`.`created_at`";
                    $order_by=" ORDER BY ".$column." ".$request->sort_type;
                }
            }
            if($request->has('search_keyword')){
                $search=" AND (`products`.`product_item_code` LIKE '%".$request->search_keyword."%' 
                OR `machine_prints`.`machine_print` LIKE '%".$request->search_keyword."%'
                OR `products`.`product_media` LIKE '%".$request->search_keyword."%'
                OR `products`.`product_description` LIKE '%".$request->search_keyword."%')";
            }
            $products= DB::select("SELECT COUNT(*) as total_products FROM products
            LEFT JOIN `machine_prints` ON `machine_prints`.`machine_print_id` = `products`.`product_machine_print`
            WHERE  ".$product_status." `products`.`isDeleted`=0".$search." ".$order_by);
            $total_products=$products[0]->{'total_products'};
            $total_pages=ceil($total_products / $request->limit);
            $offset = ($request->page-1) * $request->limit;
            $product_list= DB::select("SELECT * FROM `products`
            LEFT JOIN `machine_prints` ON `machine_prints`.`machine_print_id`=`products`.`product_machine_print`
            WHERE ".$product_status." `products`.`isDeleted`=0".$search." ".$order_by."
            LIMIT ".$offset.", ". $request->limit);
            if($product_list){
                $response=(object)[
                    "success" => true,
                    "result" => [
                        "datas" => $product_list,
                        "total_pages" => $total_pages,
                        "page" => $request->page,
                        "total" => $total_products,
                        "limit" => $request->limit
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
        }
        return response()->json($response, 200);
    }
    public function addProduct(Request $request){
        $product = Product::create(
            [
                "product_item_code" =>  $request->product_item_code,
                "product_machine_print" => $request->product_machine_print,
                "product_media" => $request->product_media,
                "product_description" => $request->product_description,
                "product_status" => $request->product_status,       
            ]
        );
        if($product){
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $product->{'product_item_code'}. " had been added to the database",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid Parameters",
                ]
            ];
        }
        return response()->json($response, 200);
    }
    public function updateProduct(Request $request){
        $product = Product::where('product_id', $request->product_id);
        if($product){
            $product->update($request->all()); 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Product has been updated",
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Invalid Parameters",
                ]
            ];
        }
        return response()->json($response, 200);
    }
}
