{{-- <x-app-layout>
  <x-slot name="header">
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
          Hi this is  {{ Auth::user()->name }}
      </h2>
  </x-slot>

  <div class="py-12 font-semibold text-xl text-gray-800 leading-tight">
      <h1 >This is a new page</h1> 
  </div>
</x-app-layout> --}}

@extends('frontend.main_master')
@section('content')

@section('title')
User Dashboard  
@endsection

<div class="body-content">
	<div class="container">
		<div class="row">

            @include('frontend.common.user_sidebar')

			<div class="col-md-2">

			</div> <!-- // end col md 2 -->
			<div class="col-md-6">
  <div class="card">
  	<h3 class="text-center"><span class="text-danger">Hi....</span><strong>{{ Auth::user()->name }}</strong> Welcome To STATA </h3>
  	
  </div>
				
			</div> <!-- // end col md 6 -->
			
		</div> <!-- // end row -->
		
	</div>
	
</div>
@endsection