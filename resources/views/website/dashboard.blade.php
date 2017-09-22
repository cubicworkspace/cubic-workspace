@extends('layouts.website')
@section('content')
			<!-- start end Page title -->
			<div class="page-title" style="background-image:url('{{ asset('frontend/images/hero-header/breadcrumb.jpg') }}');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">Member</h1>
							
							<ol class="breadcrumb-list">
								<li><a href="{{ url('/') }}">Home</a></li>
								<li><span>Member</span></li>
							</ol>
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			<div class="content-wrapper pt-0 pb-0">
			<div class="section pt-60">
				
					<div class="container">
						<p class="font15 mb-30">
						                    <div class="alert alert-success alert-dismissible" role="alert">
						                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						                    <i class="fa fa-user"></i> Selamat datang  <b>{{ Auth::user()->name }}</b>
						                  </div>
					</div>

			</div>			
			</div>
			
@endsection