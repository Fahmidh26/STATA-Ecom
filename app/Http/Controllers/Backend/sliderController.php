<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\slider;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image as Image;

class sliderController extends Controller
{
    public function SliderView(){
		$sliders = slider::latest()->get();
		return view('admin.Backend.Brand.Slider.slider',compact('sliders'));
	}


     public function SliderStore(Request $request){

    	$request->validate([
    		 
    		'slider_img' => 'required',
    	],[
    		'slider_img.required' => 'Plz Select One Image',
    		 
    	]);

    	$image = $request->file('slider_img');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(1170,500)->save('upload/slider/'.$name_gen);
    	$save_url = 'upload/slider/'.$name_gen;

	slider::insert([
		'title' => $request->title,
        'subTitle' => $request->subTitle,
        'startingPrice' => $request->startingPrice,
        'startingPrice' => $request->startingPrice,
        'slider_img' => $save_url,

    	]);

	    $notification = array(
			'message' => 'Slider Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method
}
