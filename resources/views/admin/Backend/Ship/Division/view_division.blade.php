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
				  <h6 class="box-title">Division List</h6>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Division Name </th> 
								<th>Action</th>

							</tr>
						</thead>
						<tbody>
	 @foreach($divisions as $item)
	 <tr>
		<td> {{ $item->division_name }}  </td> 

		<td width="40%">
 <a href="" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i> </a>
 <a href="" class="btn btn-danger" title="Delete Data" id="delete">
 	<i class="fa fa-trash"></i></a>
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


<!--   ------------ Add Division Page -------- -->


          <div class="col-4">

			 <div class="box">
				<div class="box-header with-border">
				  <h6 class="box-title">Add Division </h6>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('division.store') }}" >
	 	@csrf


	 <div class="form-group">
		<h6>Division Name  <span class="text-danger">*</span></h6>
		<div class="controls">
	 <input type="text"  name="division_name" class="form-control" > 
	 @error('division_name') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 
	</div>
	</div>



			 <div class="text-xs-right">
	<input type="submit" class="btn btn-rounded btn-primary mb-6h6" value="Add New">					 
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