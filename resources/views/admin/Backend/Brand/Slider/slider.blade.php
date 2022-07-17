@extends('admin.aDashboard')
@section('admins')

  <!-- Content Wrapper. Contains page content -->
  
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
			   
		 

			<div class="col-8">

			 <div class="box">
				<div class="box-header with-border">
				  <h6 class="box-title">Slider List</h6>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Slider Image </th>
								<th>Title</th>
								<th>Sub Title</th>
                                <th>Starting Price</th>
								<th>Status</th>
								<th>Action</th>
								 
							</tr>
						</thead>
						<tbody>
	 @foreach($sliders as $item)
	 <tr>

 <td><img src="{{ asset($item->slider_img) }}" style="width: 70px; height: 40px;"> </td>
		<td>
            @if($item->title == NULL)
		 	<span class="badge badge-pill badge-danger"> No Title </span>
		 	@else
             {{ $item->title }}
		 	@endif
			</td>

		<td>{{ $item->subTitle }}</td>
        <td>{{ $item->startingPrice }}</td>
		<td>
		 	@if($item->status == 1)
		 	<span class="badge badge-pill badge-success"> Active </span>
		 	@else
           <span class="badge badge-pill badge-danger"> InActive </span>
		 	@endif

		 </td>
		
		<td width="30%">
 <a href="" class="btn btn-info btn-sm" title="Edit Data"><i class="fa fa-pencil"></i> </a>

 <a href="" class="btn btn-danger btn-sm" title="Delete Data" id="delete">
 	<i class="fa fa-trash"></i></a>

@if($item->status == 1)
 <a href="" class="btn btn-danger btn-sm" title="Inactive Now"><i class="fa fa-arrow-down"></i> </a>
	 @else
 <a href="" class="btn btn-success btn-sm" title="Active Now"><i class="fa fa-arrow-up"></i> </a>
	 @endif

		</td>
							 
	 </tr>
	  @endforeach
						</tbody>
						 
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			          
			</div>
			<!-- /.col -->


<!--   ------------ Add Slider Page -------- -->


          <div class="col-4">

			 <div class="box">
				<div class="box-header with-border">
				  <h6 class="box-title">Add Slider </h6>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('slider.store') }}" enctype="multipart/form-data">
	 	@csrf
					   

	 <div class="form-group">
		<h6>Slider Title  <span class="text-danger">*</span></h6>
		<div class="controls">
	 <input type="text"  name="title" class="form-control" > 
	 
	</div>
	</div>

    <div class="form-group">
		<h6>Slider Sub-Title  <span class="text-danger">*</span></h6>
		<div class="controls">
	 <input type="text"  name="subTitle" class="form-control" > 
	 
	</div>
	</div>


	<div class="form-group">
		<h6>Starting Price <span class="text-danger">*</span></h6>
		<div class="controls">
	 <input type="text" name="startingPrice" class="form-control" >
     
	  </div>
	</div>

    <div class="form-group">
		<h6>Slider Style <span class="text-danger">(1 | 2 | 3)</span></h6>
		<div class="controls">
	 <input type="text" name="slideStyle" class="form-control" >
     
	  </div>
	</div>


	<div class="form-group">
		<h6>Slider Image <span class="text-danger">*</span></h6>
		<div class="controls">
	 <input type="file" name="slider_img" class="form-control" >
     @error('slider_img') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 
	  </div>
	</div>
					 

			 <div class="text-xs-right">
	<input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add Slider">					 
						</div>
					</form>




					  
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box --> 
			</div>

 


		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  



@endsection