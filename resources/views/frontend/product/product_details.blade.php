@extends('frontend.main_master')
@section('content')

{{-- @section('title')
{{ $product->product_name }} Product Details
@endsection --}}



<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li><a href="#">Details</a></li>
				<li class='active'>{{$product->product_name}}</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row single-product'>
			<div class='col-md-3 sidebar'>
				<div class="sidebar-module-container">
				<div class="home-banner outer-top-n">
				
<img style="height: 200px; width:300px;" src="{{ asset('frontend/assets/images/banners/LHS-banner.jpg') }}" alt="Image">
</div>		
  
    
    
    	<!-- ============================================== HOT DEALS ============================================== -->
		@include('frontend.common.sale_adver')
<!-- ============================================== HOT DEALS: END ============================================== -->					

<!-- ============================================== NEWSLETTER ============================================== -->
{{-- <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small outer-top-vs">
	<h3 class="section-title">Newsletters</h3>
	<div class="sidebar-widget-body outer-top-xs">
		<p>Sign Up for Our Newsletter!</p>
        <form>
        	 <div class="form-group">
			    <label class="sr-only" for="exampleInputEmail1">Email address</label>
			    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">
			  </div>
			<button class="btn btn-primary">Subscribe</button>
		</form>
	</div><!-- /.sidebar-widget-body -->
</div><!-- /.sidebar-widget --> --}}
<!-- ============================================== NEWSLETTER: END ============================================== -->

<!-- ============================================== Testimonials============================================== -->
	@include('frontend.common.testomonials')
    
<!-- ============================================== Testimonials: END ============================================== -->

 

				</div>
			</div><!-- /.sidebar -->
			<div class='col-md-9'>
            <div class="detail-block">
				<div class="row  wow fadeInUp">
                
	<div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">

        <div id="owl-single-product">

        	@foreach($multiImag as $img)
            <div class="single-product-gallery-item" id="slide{{ $img->id }}">
  <a data-lightbox="image-1" data-title="Gallery" href="{{ asset($img->photo_name ) }} ">
                    <img class="img-responsive" alt="" src="{{ asset($img->photo_name ) }} " data-echo="{{ asset($img->photo_name ) }} " />
                </a>
            </div> <!-- /.single-product-gallery-item -->
            @endforeach


        </div><!-- /.single-product-slider -->


		<div class="single-product-gallery-thumbs gallery-thumbs">

            <div id="owl-single-product-thumbnails">

			@foreach($multiImag as $img)
                <div class="item">
                    <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="1" href="#slide{{ $img->id }}">
     <img class="img-responsive" width="85" alt="" src="{{ asset($img->photo_name ) }} " data-echo="{{ asset($img->photo_name ) }} " />
                    </a>
                </div>
				@endforeach
              



            </div><!-- /#owl-single-product-thumbnails -->

            

        </div><!-- /.gallery-thumbs -->

    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->        			
					<div class='col-sm-6 col-md-7 product-info-block'>
						<div class="product-info">
							<h1 class="name" id="pname">{{$product->product_name}}</h1>
							
							<div class="rating-reviews m-t-20">
								<div class="row">
									<div class="col-sm-3">
										<div class="rating rateit-small"></div>
									</div>
									<div class="col-sm-8">
										<div class="reviews">
											<a href="#" class="lnk">(13 Reviews)</a>
										</div>
									</div>
								</div><!-- /.row -->		
							</div><!-- /.rating-reviews -->

							<div class="stock-container info-container m-t-10">
								<div class="row">
									<div class="col-sm-2">
										<div class="stock-box">
											<span class="label">Availability :</span>
										</div>	
									</div>
									<div class="col-sm-9">
										<div class="stock-box">
											<span class="value">In Stock</span>
										</div>	
									</div>
								</div><!-- /.row -->	
							</div><!-- /.stock-container -->

							<div class="description-container m-t-20">
								<ul>
									@foreach ($short_descps as $feature )
										<li>{{$feature}}</li>
									@endforeach
								</ul>
							</div><!-- /.description-container -->

							<div class="price-container info-container m-t-20">
								<div class="row">
									

									<div class="col-sm-6">
										<div class="price-box">
											<span class="price">TK {{$product->selling_price}}</span>
											<span class="price-strike">TK {{$product->discount_price}}</span>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="favorite-button m-t-10">
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
											    <i class="fa fa-heart"></i>
											</a>
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
											   <i class="fa fa-signal"></i>
											</a>
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
											    <i class="fa fa-envelope"></i>
											</a>
										</div>
									</div>

								</div><!-- /.row -->
							</div><!-- /.price-container -->

 				<!--   /// Add Product Color And Product Size ///// -->
					<div class="row">
														
						<div class="col-sm-6">
					<div class="form-group">

						<label class="info-title control-label">Choose Color <span> </span></label>
						<select class="form-control unicase-form-control selectpicker" style="display: none;" id="color">
							{{-- <option selected="" disabled="">--Choose Color--</option> --}}
							@foreach($product_color as $color)
							<option value="{{ $color }}">{{ ucwords($color) }}</option>
							@endforeach
						</select> 
					</div> <!-- // end form group -->
							 
						</div> <!-- // end col 6 -->

							<div class="col-sm-6">

					<div class="form-group">
						@if($product->product_size == null)

						@else	

						<label class="info-title control-label">Choose Size <span> </span></label>
						<select class="form-control unicase-form-control selectpicker" style="display: none;" id="size">
							{{-- <option selected="" disabled="">--Choose Size--</option> --}}
							@foreach($product_size as $size)
							<option value="{{ $size }}">{{ ucwords($size) }}</option>
							@endforeach
						</select> 

						@endif

					</div> <!-- // end form group -->

								
							</div> <!-- // end col 6 -->
						</div><!-- /.row -->
 				<!--  /// End Add Product Color And Product Size ///// -->


							<div class="quantity-container info-container">
								<div class="row">
									
									<div class="col-sm-2">
										<span class="label">Qty :</span>
									</div>
									
									<div class="col-sm-2">
										<div class="cart-quantity">
											<div class="quant-input">
								                <div class="arrows">
												
								                  <div class="arrow plus gradient"><span class="ir"><button onclick="increment()"><i class="icon fa fa-sort-asc"></i></button></span></div>
												
								                  <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
								                </div>
												<input type="text" id="qty" value="1" min="1">
							              </div>
							            </div>
									</div>

									<input type="hidden" id="product_id" value="{{ $product->id }}" min="1">

									<div class="col-sm-7">
										<button type="submit" onclick="addToCart()" class="btn btn-primary"><i class="fa fa-shopping-cart inner-right-vs"></i> ADD TO CART</button>
									</div>

									
								</div><!-- /.row -->
							</div><!-- /.quantity-container -->


							

                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox"></div>
            
            

							

							

							
						</div><!-- /.product-info -->
					</div><!-- /.col-sm-7 -->
				</div><!-- /.row -->
                </div>
				
				<div class="product-tabs inner-bottom-xs  wow fadeInUp">
					<div class="row">
						<div class="col-sm-3">
							<ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
								<li class="active"><a data-toggle="tab" href="#description">DESCRIPTION</a></li>
								<li><a data-toggle="tab" href="#colors">COLORS</a></li>
								<li><a data-toggle="tab" href="#dimensions">DIMENSIONS</a></li>
								 <li><a data-toggle="tab" href="#review">REVIEW</a></li>
								{{-- <li><a data-toggle="tab" href="#tags">DIMENSIONS</a></li> --}}
							</ul><!-- /.nav-tabs #product-tabs -->
						</div>
						<div class="col-sm-9">

							<div class="tab-content">
								
								<div id="description" class="tab-pane in active">
									<div class="product-tab">
										<p class="text">{{$product->long_descp}}</p>
									</div>	
								</div><!-- /.tab-pane -->

								<div id="colors" class="tab-pane in">
									<div class="product-tab">
										@foreach($product_color as $color)
										<p class="text">{{$color}}</p>
										@endforeach
									</div>	
								</div><!-- /.tab-pane -->



								<div id="review" class="tab-pane">
									<div class="product-tab">
								
										<div class="product-reviews">
											<h4 class="title">Customer Reviews</h4>
								
											@php
											$reviews = App\Models\Review::where('product_id',$product->id)->latest()->limit(5)->get();
											@endphp			
											
												<div class="reviews">
											
													@foreach($reviews as $item)
													@if($item->status == 0)
											
													@else
											
													<div class="review">
											
													<div class="row">
														<div class="col-md-3">
														<img style="border-radius: 50%" src="{{ (!empty($item->user->profile_photo_path))? url('upload/user_images/'.$item->user->profile_photo_path):url('upload/no_image.jpg') }}" width="40px;" height="40px;"><b> {{ $item->user->name }}</b>
														</div>
											
														<div class="col-md-9">
											
														</div>			
													</div> <!-- // end row -->
											
											
											
														<div class="review-title"><span class="summary">{{ $item->summary }}</span><span class="date"><i class="fa fa-calendar"></i><span> {{ Carbon\Carbon::parse($item->created_at)->diffForHumans() }} </span></span></div>
														<div class="text">"{{ $item->comment }}"</div>
													 </div>
											
													 @endif
												@endforeach
												</div><!-- /.reviews -->
										</div><!-- /.product-reviews -->


										<div class="product-add-review">
											<h4 class="title">Write your own review</h4>
											<div class="review-table">
										
											</div><!-- /.review-table -->

											<div class="review-form">
												@guest
									<p> <b> For Add Product Review. You Need to Login First <a href="{{ route('login') }}">Login Here</a> </b> </p>

									@else 

									<div class="form-container">
						
					<form role="form" class="cnt-form" method="post" action="{{ route('review.store') }}">
						@csrf
					
						<input type="hidden" name="product_id" value="{{ $product->id }}">
						
							<div class="row">
								<div class="col-sm-6">
						
									<div class="form-group">
										<label for="exampleInputSummary">Summary <span class="astk">*</span></label>
										<input type="text" name="summary" class="form-control txt" id="exampleInputSummary" placeholder="">
									</div><!-- /.form-group -->
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputReview">Review <span class="astk">*</span></label>
										<textarea class="form-control txt txt-review" name="comment" id="exampleInputReview" rows="4" placeholder=""></textarea>
									</div><!-- /.form-group -->
								</div>
							</div><!-- /.row -->
						
							<div class="action text-right">
								<button type="submit" class="btn btn-primary btn-upper">SUBMIT REVIEW</button>
							</div><!-- /.action -->
						
						</form><!-- /.cnt-form -->
									</div><!-- /.form-container -->
						
						   @endguest

						</div><!-- /.review-form -->

					</div><!-- /.product-add-review -->										
				
				</div><!-- /.product-tab -->
				</div><!-- /.tab-pane -->
				


								<div id="dimensions" class="tab-pane">
									<div class="product-tag">
										
										<h4 class="title">Additional Information</h4>
										<table>
											<tr>
												<th style="padding-right: 20px;" >No. </th>
												<th style="padding-right: 20px">Weight </th>
												<th>Size </th>
											</tr>
											<tr>
												<td>1</td>
												<td>1 kg</td>
												<td>16</td>
											</tr>
											
										</table>

									</div><!-- /.product-tab -->
								</div><!-- /.tab-pane -->


							</div><!-- /.tab-content -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.product-tabs -->

				<!-- ============================================== UPSELL PRODUCTS ============================================== -->
<section class="section featured-product wow fadeInUp">
	<h3 class="section-title">upsell products</h3>
	<div class="owl-carousel home-owl-carousel upsell-product custom-carousel owl-theme outer-top-xs">
	    	
		@foreach ($upsellProducts as $upsellProduct)
			
		<div class="item item-carousel">
			<div class="products">
				
	<div class="product">

		<div class="product-image">
			<div class="image">
				<a href="{{ url('product/details/'.$upsellProduct->id) }}"><img  src="{{ asset($upsellProduct->product_thambnail) }}" alt=""></a>
			</div><!-- /.image -->			

			            <div class="tag sale"><span>sale</span></div>            		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="detail.html">{{$upsellProduct->product_name}}</a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
					TK {{$upsellProduct->selling_price}}				</span>
										     <span class="price-before-discount">TK {{$upsellProduct->discount_price}}</span>
									
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="cart clearfix animate-effect">
				<div class="action">
					<ul class="list-unstyled">
						<li class="add-cart-button btn-group">
							<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
								<i class="fa fa-shopping-cart"></i>													
							</button>
							<button class="btn btn-primary cart-btn" type="button">Add to cart</button>
													
						</li>
	                   
		                <li class="lnk wishlist">
							<a class="add-to-cart" href="detail.html" title="Wishlist">
								 <i class="icon fa fa-heart"></i>
							</a>
						</li>

						<li class="lnk">
							<a class="add-to-cart" href="detail.html" title="Compare">
							    <i class="fa fa-signal"></i>
							</a>
						</li>
					</ul>
				</div><!-- /.action -->
			</div><!-- /.cart -->
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
		@endforeach
	
	
			</div><!-- /.home-owl-carousel -->
</section><!-- /.section -->
<!-- ============================================== UPSELL PRODUCTS : END ============================================== -->
			
			</div><!-- /.col -->
			<div class="clearfix"></div>
		</div><!-- /.row -->

























		<!-- ==== ================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp">

		<div class="logo-slider-inner">	
			<div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
				<div class="item m-t-15">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item m-t-10">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand3.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand6.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->

				<div class="item">
					<a href="#" class="image">
						<img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt="">
					</a>	
				</div><!--/.item-->
		    </div><!-- /.owl-carousel #logo-slider -->
		</div><!-- /.logo-slider-inner -->
	
</div><!-- /.logo-slider -->
<!-- == = BRANDS CAROUSEL : END = -->	</div><!-- /.container -->
</div><!-- /.body-content -->









<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-62c151d22da13923"></script>

<script>
	function increment() {
	   document.getElementById('qty').stepUp();
	}
	function decrement() {
	   document.getElementById('qty').stepDown();
	}
 </script>



@endsection
