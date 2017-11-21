@extends('layouts.website')
@section('content')
<!-- start hero-header with windows height -->
			<div class="hero" style="background-image:url('{{ asset('upload/media') }}/{{ $media->image }}');">
			
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
						
							<h1 class="hero-title">{{ $media->name}}</h1>
							<p class="lead">{{ $media->writer }}</p>

						</div>
						
					</div>
					<div class="main-search-wrapper full-width">
					
						<div class="inner">						
							
							</form>
						</div>
						
					</div>
				
				</div>
				
			</div>
			<!-- end hero-header with windows height -->
			
			

			<section>
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>Partnership</h3>
							
							</div>
							
						</div>
					
					</div>
					
					<div class="grid destination-grid-wrapper">

					<!-- top companypartnership -->
					@foreach($companypartnership as $row)
					<div class="grid-item" data-colspan="5" data-rowspan="6">
							<a href="{{ url('/website/partnership') }}/{{ $row->id }}/{{ str_slug($row->name) }}" class="top-destination-image-bg" style="background-image:url('{{ asset('upload/companypartnership') }}/{{ $row->favicon }}');">
								<div class="relative">
									<h4>{{ $row->name }}</h4>
									<span>{{ $row->city->name }} - {{ $row->country->name }}</span>
								</div>
							</a>
						</div>
						@endforeach
					<!-- end companypartnership -->
						
					</div>
					
				</div>
				<br>
				<div class="post-hero bg-light">
			
				<div class="container">
					
					<div class="row">
					
						<!-- informasicompanies -->
						@foreach($header as $row)
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"><img src="{{ asset('upload/informasicompanies') }}/{{ $row->icon }}" /></div>
								<div class="content">
									<h6>{{ $row->name }}</h6>
									<span>{{ $row->description }}</span>
								</div>
							</div>
						</div>
						@endforeach
						<!-- end informasicompanies -->
						
					</div>
					
				</div>
				
			</div>
			</section>
			
			
			
			<div class="newsletter-wrapper">
			
				<div class="container"><!-- 
					<style type="text/css">
						.flex-gap-30 > .flex-columns, .flex-gap-30 > .flex-column {
						    padding-left: 115px;
						    padding-right: 15px;
						}
					</style> -->
					<div class="flex-row flex-align-middle flex-gap-30">
						
						<div class="flex-column flex-sm-12">
							<div class="newsletter-text clearfix">
								<div class="icon">
									<i class="pe-7s-user"></i>
								</div>
								<div class="content">
									<h3>Signup for Partnership</h3>
									<p>Affronting everything discretion men now own did. Still round match we to. Frankness pronounce daughters remainder extensive has but.</p>
								</div>
							</div>
						</div>
						
						<div class="flex-columns flex-sm-12">
									<div class="input-group">										
										<span class="input-group-btn">
									 	<!-- <a href="https://nanta2.typeform.com/to/WBh1zZ" class="btn btn-primary" > <i class="fa fa-long-arrow-right"></i> Register Partnership </a> -->
										<a data-toggle="modal" href="#partnerModal" class="btn btn-primary"><i class="fa fa-long-arrow-right"></i> Register Partnership</a>
										</span>
									</div>
							</div>
						</div>
					
					</div>
					
				</div>
				
			</div>

 			 <div class="modal fade modal-login modal-border-transparent" id="partnerModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
			<div class="modal-content">
				<button type="button" class="btn btn-close close" data-dismiss="modal" aria-label="Close">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
				
				<div class="clear"></div>
				<!-- Begin # DIV Form -->
				<div id="modal-login-form-wrapper">
					
					<!-- Begin # Login Form -->
					
			           <!--  <form action="{{ route('website.partnershipregister') }}" method="POST">
						{{csrf_field()}}
						<input type="hidden" name="codepartner" value="{{ $no }}">
						<div class="modal-body pb-5">					
							<h4 class="text-center heading mt-10 mb-20">Register Partnership</h4>
							<a href="{{ route('partner.login') }}" class="btn btn-google btn-block"><span class="fa fa-users"></span>
							   Sign-in Partnership</a>
							<div class="modal-seperator"></div>
							<div class="form-group"> 
									<input type="text" class="form-control" id="name" name="name" placeholder="Name Company" required>
							</div>
							<div class="form-group"> 
									<input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
							</div>
							<div class="form-group"> 
									<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
							</div>
							<div class="form-group"> 
									<input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number" required>
							</div>
							<div class="form-group"> 
									<textarea class="form-control" id="address" name="address" placeholder="Address" required></textarea>
							</div>				
						</div>						
						<div class="modal-footer">						
							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block">Registrasi</button>
								</div>
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block btn-inverse" data-dismiss="modal" aria-label="Close">Cancel</button>
								</div>
							</div>
							
						</div>
					</form> -->
					<!-- End # Login Form -->
					
								
				</div>
				<!-- End # DIV Form -->
								
			</div>
		</div>
	</div>
	<!-- END # MODAL LOGIN -->
</div>


@endsection