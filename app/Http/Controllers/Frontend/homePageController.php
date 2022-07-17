<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\MultiImg;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class homePageController extends Controller
{

	public function UserLogout(){
    	Auth::logout();
    	return Redirect()->route('login');
    }


    public function ProductDetails($id){
		$product = Product::findOrFail($id);
		
		$color = $product->product_color;
		$product_color = explode(',', $color);

		$size = $product->product_size;
		$product_size = explode(',', $size);

        $shortDescrip = $product->short_descp;
		$short_descps = explode(',', $shortDescrip);

		$catId = $product->category_id;
		$upsellProducts = Product::where('category_id', $catId)->where('id', '!=', $id)->orderBy('id','DESC')->get();

		$multiImag = MultiImg::where('product_id',$id)->get();

		return view('frontend.product.product_details',compact('product','multiImag','product_color','product_size', 'short_descps','upsellProducts'));

	}

	public function TagWiseProduct($tag){
		$products = Product::where('status',1)->where('product_tags',$tag)->orderBy('id','DESC')->paginate(3);
		$categories = Category::orderBy('category_name','ASC')->get();
		return view('frontend.tags.tags_view',compact('products','categories'));

	}

	// Subcategory wise data
	public function SubCatWiseProduct($subcat_id,$slug){
		$products = Product::where('status',1)->where('subcategory_id',$subcat_id)->orderBy('id','DESC')->paginate(3);
		$categories = Category::orderBy('category_name','ASC')->get();
		return view('frontend.product.subcategory_view',compact('products','categories'));

	}

	public function SubCatWiseeProduct($subcat_id){
		$products = Product::where('status',1)->where('subcategory_id',$subcat_id)->orderBy('id','DESC')->paginate(3);
		$categories = Category::orderBy('category_name','ASC')->get();
		return view('frontend.product.subcategory_view',compact('products','categories'));

	}

	/// Product View With Ajax
	public function ProductViewAjax($id){
		$product = Product::with('category','brand')->findOrFail($id);

		$color = $product->product_color;
		$product_color = explode(',', $color);

		$size = $product->product_size;
		$product_size = explode(',', $size);

		return response()->json(array(
			'product' => $product,
			'color' => $product_color,
			'size' => $product_size,

		));

	} // end method 


	// Product Seach 
	public function ProductSearch(Request $request){

		$request->validate(["search" => "required"]);

		$item = $request->search;
		// echo "$item";
        $categories = Category::orderBy('category_name','ASC')->get();
		$products = Product::where('product_name','LIKE',"%$item%")->get();
		
		return view('frontend.product.search',compact('products','categories'));


	}

	///// Advance Search Options 

	public function SearchProduct(Request $request){
		$request->validate(["search" => "required"]);

		$item = $request->search;		 

		$products = Product::where('product_name','LIKE',"%$item%")->select('product_name','product_thambnail','selling_price','id',)->limit(5)->get();
		return view('frontend.product.search_product',compact('products'));



	} // end method 


}
