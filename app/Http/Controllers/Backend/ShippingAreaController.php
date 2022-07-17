<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\ShipDistrict;
use App\Models\ShipDivision;
use App\Models\ShipState;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class ShippingAreaController extends Controller
{
	// START DIVISION
    public function DivisionView(){
		$divisions = ShipDivision::orderBy('id','DESC')->get();
		return view('admin.Backend.Ship.Division.view_division',compact('divisions'));

	}


	public function DivisionStore(Request $request){

    	$request->validate([
    		'division_name' => 'required',   	 

    	]);


	ShipDivision::insert([

		'division_name' => $request->division_name,
		'created_at' => Carbon::now(),

    	]);

	    $notification = array(
			'message' => 'Division Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method 

	  //// Start Ship District 

	  public function DistrictView(){
		$division = ShipDivision::orderBy('division_name','ASC')->get();
		$district = ShipDistrict::with('division')->orderBy('id','DESC')->get();
			return view('admin.Backend.Ship.District.view_district',compact('division','district'));
		}

		public function DistrictStore(Request $request){

			$request->validate([
				'division_id' => 'required',  
				'district_name' => 'required',  	 
	
			]);
	
	
		ShipDistrict::insert([
	
			'division_id' => $request->division_id,
			'district_name' => $request->district_name,
			'created_at' => Carbon::now(),
	
			]);
	
			$notification = array(
				'message' => 'District Inserted Successfully',
				'alert-type' => 'success'
			);
	
			return redirect()->back()->with($notification);
	
		} // end method 
	
	
	   //// End Ship District


	   ////////////////// Ship State //////////

	   public function StateView(){
		$division = ShipDivision::orderBy('division_name','ASC')->get();
		$district = ShipDistrict::orderBy('district_name','ASC')->get();
		$state = ShipState::with('division','district')->orderBy('id','DESC')->get();
			return view('admin.Backend.Ship.State.view_state',compact('division','district','state'));
		}

		public function StateStore(Request $request){

			$request->validate([
				'division_id' => 'required',  
				'district_id' => 'required', 
				'state_name' => 'required', 	 
	
			]);
	
	
		ShipState::insert([
	
			'division_id' => $request->division_id,
			'district_id' => $request->district_id,
			'state_name' => $request->state_name,
			'created_at' => Carbon::now(),
	
			]);
	
			$notification = array(
				'message' => 'State Inserted Successfully',
				'alert-type' => 'success'
			);
	
			return redirect()->back()->with($notification);
	
		} // end method 
	
	
	
	
	
	
		//////////////// End Ship State ////////////

}
