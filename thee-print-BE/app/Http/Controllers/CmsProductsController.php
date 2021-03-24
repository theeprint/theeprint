<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Token;
use App\Cms_products;
use App\Cms_products_category;
use Auth;


class CmsProductsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(){
    }
    

    public function addCmsNewProducts(Request $request){
            function getRandomString($n) {
                $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                $randomString = '';
            
                for ($i = 0; $i < $n; $i++) {
                    $index = rand(0, strlen($characters) - 1);
                    $randomString .= $characters[$index];
                }
            
                return $randomString;
            }
            if($request->hasFile('cms_products_logo')){
            $cms_products_file      = $request->file('cms_products_logo');
            $cms_products_filename  = $cms_products_file->getClientOriginalName();
            $cms_products_extension = $cms_products_file->guessExtension();
            $cms_products_picture   = date('His').'-'.getRandomString(8);
            $cms_products_avatar    = $cms_products_picture.'.'.$cms_products_extension;
            $cms_products_destinationPath = storage_path('app/images/cms_logo');
            $cms_products_file->move($cms_products_destinationPath, $cms_products_avatar);
            
            
            $cms_products = Cms_products::create(
                [
                    "cms_products_services_category" => $request->input('cms_products_services_category'),
                    "cms_products_name" => $request->input('cms_products_name'),
                    // "cms_products_update" => $request->input('cms_products_update'),
                    "cms_products_logo" => $cms_products_avatar
                ]
            );
            if($cms_products){ 
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => $cms_products->{'cms_products_label'}." has been successfully saved",
                ]
                ];
            }
        }
        return response()->json($response, 201);
    }

    public function viewCmsProductsCategory(Request $request){
        $cms_products_category = DB::table('cms_products_categories')->get();

        if($cms_products_category){
            $datas['data']=$cms_products_category;
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function viewCmsEditProduct($product_id){
        $cms_products = Cms_products::findOrFail($product_id);

        if($cms_products){
            $datas['data']=$cms_products;
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function viewProductsUpdate(){
        // $products = Cms_products::findOrFail($product_id);
        $products = DB::select('SELECT * FROM `cms_products` order by `updated_at` desc limit 1');

        if($products){
            $datas['data']=$products;
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function  viewCmsEditProductCategories($cms_products_category_id){
        $cms_products_categories = Cms_products_category::findOrFail($cms_products_category_id);

        if($cms_products_categories){
            $datas['data']=$cms_products_categories;
            $datas['error']=0;
        }
        return response()->json($datas, 200);
    }

    public function viewCmsProducts(Request $request){
            $search='';
            $order_by='';
        if($request->has('sort_column')){
            if($request->sort_column=="cms_products_name"){
                $column="`cms_products`.`cms_products_name`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }else if($request->sort_column=="cms_products_services_category"){
                $column="`cms_products_categories`.`cms_products_services_category`";
                $order_by=" ORDER BY ".$column." ".$request->sort_type;
            }
            if($request->has('search_keyword')){
                $search="Where (`cms_products`.`cms_products_name` LIKE '%".$request->search_keyword."%' 
                OR `cms_products`.`cms_products_services_category` LIKE '%".$request->search_keyword."%')";
            }
        }
        $cms_products= DB::select("SELECT COUNT(*) as total_cms_products FROM cms_products
        LEFT JOIN `cms_products_categories` ON `cms_products_categories`.`cms_products_category_id`=`cms_products`.`cms_products_services_category` ".$search." ".$order_by);
        $total_cms_products=$cms_products[0]->{'total_cms_products'};
        $total_pages=ceil($total_cms_products / $request->limit);
        $offset = ($request->page-1) * $request->limit;
        $cms_products= DB::select("SELECT * FROM `cms_products`
        LEFT JOIN `cms_products_categories` ON `cms_products_categories`.`cms_products_category_id`=`cms_products`.`cms_products_services_category` ".$search." ".$order_by."
        LIMIT ".$offset.", ". $request->limit);
      
        if($cms_products){
            $response=(object)[
                "success" => true,
                "result" => [
                    "datas" => $cms_products,
                    "total_pages" => $total_pages,
                    "page" => $request->page,
                    "total" => $total_cms_products,
                    "limit" => $request->limit,
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "No Data in the Database",
                ]
            ];
        }
        return response()->json($response, 200);
    }

    public function updateCmsProducts(Request $request){
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
        $cms_products = Cms_products::where('cms_products_id', $request->input('cms_products_id'));
        if($cms_products){
            $cms_products->update($request->all());
            
            if($request->hasFile('cms_products_logo')){
                $cms_products_file      = $request->file('cms_products_logo');
                $cms_products_filename  = $cms_products_file->getClientOriginalName();
                $cms_products_extension = $cms_products_file->guessExtension();
                $cms_products_picture   = date('His').'-'.getRandomString(8);
                $cms_products_destinationPath = storage_path('/app/images/cms_logo');
                $cms_products_file->move($cms_products_destinationPath, $cms_products_picture.'.'.$cms_products_extension);
                $imagepath = $cms_products_picture.'.'.$cms_products_extension;
                DB::statement("UPDATE `cms_products` set `cms_products_logo` = '".$imagepath."' Where `cms_products_id` = '".$request->input('cms_products_id')."'");
            }
            
            $response=(object)[
                "success" => true,
                "result" => [
                    // "message" => $cms_products->{'cms_products_name'}." has been successfully updated",
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
