<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
// use Image;
use Intervention\Image\Facades\Image as Image;
use App\Models\Brand;
// use Intervention\Image\ImageManagerStatic as Image; 


class BrandController extends Controller
{
    public function BrandStore(Request $request){

    	$request->validate([
    		'brand_name_en' => 'required',
    		'brand_image' => 'required',
    	],[
    		'brand_name_en.required' => 'Input Brand English Name',
    		'brand_name_hin.required' => 'Input Brand Hindi Name',
    	]);

    	$image = $request->file('brand_image');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(200,200)->save('upload/brand/'.$name_gen);
    	$save_url = 'upload/brand/'.$name_gen;

	Brand::insert([
		'brand_name' => $request->brand_name_en,
		'brand_image' => $save_url,
		'created_at' => Carbon::now(),   

    	]);

	    $notification = array(
			'message' => 'Brand Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method 
}
