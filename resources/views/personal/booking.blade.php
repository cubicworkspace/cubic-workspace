@extends('layouts.website')
@section('content')
<!-- start Main Wrapper -->
		<div class="main-wrapper">
			<div class="breadcrumb-wrapper bg-light-2">
				<div class="container">
					<ol class="breadcrumb-list booking-step">
						<li><a href="{{ url('/') }}">Home</a></li>
						<li><span>List Booking Information</span></li>
					</ol>
				</div>
			</div>
			
			
			<div class="content-wrapper">
			
				<div class="container">
			
					<div class="row">
						<div class="col-sm-4 col-md-3 mt-50-xs">
						@foreach($editmember as $edit)
						@include('personal.personal')
						@endforeach
						</div>
						<div class="col-sm-8 col-md-9">
						<ul class="nav nav-tabs">
						  <!-- <li><a href="{{ url('personal/dashboard') }}">Dashboard</a></li> -->
						  <li class="active"><a href="{{ url('personal/booking') }}/{{ Auth::user()->id }}/{{ Auth::user()->email }}"><i class="fa fa-archive"></i> List Booking Information</a></li>
						  <li><a href="{{ url('personal/historybooking') }}/{{ Auth::user()->id }}/{{ Auth::user()->email }}"><i class="fa fa-archive"></i> History Booking Information</a></li>
						  <li><a href="{{ url('personal/profile') }}/{{ Auth::user()->id }}/{{ Auth::user()->email }}"><i class="fa fa-user"></i> Personal Information</a></li>
						</ul>
							<div class="confirmation-wrapper">
							
								<div class="payment-success">
								</div>
							
								<div class="confirmation-content">
									
									<div class="section-title text-left">
										<h4>List Booking Information</h4>

									</div>
									<!-- <a href="detail_package.php" class="btn btn-primary btn-sm">Online</a>
									<a href="detail_package.php" class="btn btn-primary btn-inverse btn-sm">Offline</a> -->
												
									<div class="package-list-item-wrapper on-page-result-page">
								@if (count($bookingspaces ) > 0)
								@foreach($bookingspaces as $row)
								<div class="package-list-item clearfix">
									<div class="image">
										<img src="{{ asset('upload/companypartnership') }}/{{ $row->companypartnership->favicon }}" alt="Tour Package" />
										<div class="absolute-in-image">
										</div>
									</div>
									<div class="content">
										<h5>{{ $row->companyservices->name }} <button class="btn"></button></h5>
										<div class="row gap-10">
											<div class="col-sm-12 col-md-9">
												<p class="line18">{{ $row->companyservices->information }}</p>
												<ul class="list-info">
													<li><span class="icon"><i class="fa fa-dot-circle-o"></i></span> <span class="font600">Type: </span> {{ $row->services->name }}</li>
													<li><span class="icon"><i class="fa fa-flag"></i></span> <span class="font600">Status:</span> @if($row->status == 'Y') On @elseif($row->status == 'N') Off @endif </li>
													<li><span class="icon"><i class="fa fa-calendar"></i></span> <span class="font600">Date:</span> {{ date('d F Y', strtotime($row->datein))}} - {{ date('d F Y', strtotime($row->dateout))}}</li>
												</ul>
												<br>
												<a href="{{ url('/website/package/invoice/print/') }}/{{ $row->invoice }}" class="btn btn-primary btn-sm">Download Pdf</a>
												<!-- <a href="detail_package.php" class="btn btn-primary btn-sm">Perpanjang</a> -->
											</div>											
										</div>
									</div>
								</div>
								@endforeach
									@else
									<div class="alert alert-danger alert-dismissible" role="alert">
						            	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								    	<i class="fa fa-warning"></i> No data list booking information</b>
						            </div>
								@endif
								
							
							<div class="pager-wrappper clearfix">
			
								<div class="pager-innner">
								
									<div class="flex-row flex-align-middle">
											
										<!-- <div class="flex-column flex-sm-12">
											Showing reslut 1 to 15 from 248 
										</div> -->
										
										<div class="flex-column flex-sm-12">
											<nav class="pager-right">
												<ul class="pagination">
													<li>
               										 {{ $bookingspaces->links() }}
													</li>
												</ul>
											</nav>
										</div>
									
									</div>
									
								</div>
								
							</div>
							
						</div>
									
								</div>
								
								
								
								
								
							
							</div>
							
						</div>

						

					</div>
				
				</div>
					
			</div>

		</div>
		<!-- end Main Wrapper -->

@endsection