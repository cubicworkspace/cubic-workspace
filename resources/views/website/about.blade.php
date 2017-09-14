@extends('layouts.website')
@section('content')
			<!-- start end Page title -->
			<div class="page-title" style="background-image:url('{{ asset('frontend/images/hero-header/breadcrumb.jpg') }}');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">About Us</h1>
							
							<ol class="breadcrumb-list">
								<li><a href="index-2.html">Homepage</a></li>
								<li><span>About Us</span></li>
							</ol>
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			<div class="content-wrapper pt-0 pb-0">
			<div class="section pt-60">
				
					<div class="container">

						<p class="font15 mb-30">@foreach($companies as $row)</p>
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="profile-item clearfix">
									<div class="content">
										"{{ $row->profile }}"
									</div>
								</div>
							</div>
						@endforeach
						</div>
						</div>
						</div>
						<div class="about-us-grid-block GridLex-gap-20-wrappper">
						
							<div class="GridLex-grid-noGutter-equalHeight gap-20">
									
								<div class="GridLex-col-4_xs-12">
									<div class="about-us-grid-block-item mb-20">
										<h4 class="heading mt-0 text-white">Mission</h4>
										<p>@foreach($companies as $row)
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="about-us-item clearfix">
									<div class="content">
										<p>"{{ $row->mision }}"</p>
									</div>
								</div>
							</div>
						@endforeach
									</div>
								</div>
								
								<div class="GridLex-col-3_xs-12">
									<div class="image-bg mb-20" style="background-image:url('{{ asset('frontend/images/about-us/about-us-image-bg-01.jpg') }}');"></div>
								</div>
								
								<div class="GridLex-col-3_xs-12">
									<div class="image-bg mb-20" style="background-image:url('{{ asset('frontend/images/about-us/about-us-image-bg-02.jpg') }}');"></div>
								</div>
								
							</div>
						
							<div class="GridLex-grid-noGutter-equalHeight gap-20">
			
								<div class="GridLex-col-3_xs-12">
									<div class="image-bg mb-20" style="background-image:url('{{ asset('frontend/images/about-us/about-us-image-bg-03.jpg') }}');"></div>
								</div>
								
								<div class="GridLex-col-4_xs-12">
									<div class="about-us-grid-block-item mb-20">
										<h4 class="heading mt-0 text-white">Vission</h4>
										@foreach($companies as $row)
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="about-us-item clearfix">
									<div class="content">
										<p>"{{ $row->vision }}"</p>
									</div>
								</div>
							</div>
						@endforeach
									</div>
								</div>
								
								<div class="GridLex-col-3_xs-12 mb-20">
									<div class="image-bg" style="background-image:url('{{ asset('frontend/images/about-us/about-us-image-bg-04.jpg') }}');"></div>
								</div>
								
							</div>
							
							<div class="GridLex-grid-noGutter-equalHeight gap-20">
			
								<div class="GridLex-col-3_xs-12 mb-20">
									<div class="image-bg" style="background-image:url('{{ asset('frontend/images/about-us/about-us-image-bg-05.jpg') }}');"></div>
								</div>

								<div class="GridLex-col-3_xs-12 mb-20">
									<div class="image-bg" style="background-image:url('{{ asset('frontend/images/about-us/about-us-image-bg-06.jpg') }}');"></div>
								</div>
								
								<div class="GridLex-col-4_xs-12">
									<div class="about-us-grid-block-item mb-20">
										<h4 class="heading mt-0 text-white">Description</h4>
										@foreach($companies as $row)
							<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="description-item clearfix">
									<div class="content">
										<p>"{{ $row->description }}"</p>
									</div>
								</div>
							</div>
						@endforeach
									</div>
								</div>
								
							</div>
						
						</div>
						
					</div>
						
				</div>
				
				<div class="bg-light section">
				
					<div class="container">

						<div class="row">
								
							<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
								
								<div class="section-title">
								
									<h3>Our Team</h3>
									<p>Meet with our people behind the move.</p>
									
								</div>
								
							</div>
						
						</div>
						
						<div class="team-wrapper">
						
							<div class="row">
							
								<div class="col-xss-12 col-xs-6 col-sm-3 mv-15">
								
									<div class="team-item">
										@foreach($team as $row)
										<div class="image">
											<option value="{{ $row->id }}"><img src="{{ asset('upload/team') }}/{{ $row->image }}" width="120">
											{{ $row->name }} 
											{{ $row->job }}</option>

	   									@endforeach
											<h5 class="uppercase">ROBERT SMITH</h5>
											<p>Director Manager</p>
											<ul class="social">
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
												<li><a href="#"><i class="fa fa-instagram"></i></a></li>
											</ul>
											
										</div>
										
									</div>
								
								</div>
							
								<div class="col-xss-12 col-xs-6 col-sm-3 mv-15">
								
									<div class="team-item">
										
										<div class="image">
											<img src="{{ asset('frontend/images/team/02.jpg') }}" alt="Team"  class="img-circle" />
										</div>
										
										<div class="content">
										
											<h5 class="uppercase">ROBERT SMITH</h5>
											<p>Director Manager</p>
											<ul class="social">
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
												<li><a href="#"><i class="fa fa-instagram"></i></a></li>
											</ul>
											
										</div>
										
									</div>
								
								</div>
								
								<div class="col-xss-12 col-xs-6 col-sm-3 mv-15">
								
									<div class="team-item">
										
										<div class="image">
											<img src="{{ asset('frontend/images/team/03.jpg') }}" alt="Team"  class="img-circle" />
										</div>
										
										<div class="content">
										
											<h5 class="uppercase">ROBERT SMITH</h5>
											<p>Director Manager</p>
											<ul class="social">
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
												<li><a href="#"><i class="fa fa-instagram"></i></a></li>
											</ul>
											
										</div>
										
									</div>
								
								</div>
								
								<div class="col-xss-12 col-xs-6 col-sm-3 mv-15">
								
									<div class="team-item">
										
										<div class="image">
											<img src="{{ asset('frontend/images/team/04.jpg') }}" alt="Team"  class="img-circle" />
										</div>
										
										<div class="content">
										
											<h5 class="uppercase">ROBERT SMITH</h5>
											<p>Director Manager</p>
											<ul class="social">
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
												<li><a href="#"><i class="fa fa-instagram"></i></a></li>
											</ul>
											
										</div>
										
									</div>
								
								</div>
								
							</div>
						
						</div>

					</div>
					
				</div>

				<div class="section partner-wrapper bg-primary">
				
					<div class="container">
					
						<div class="row">
						
							<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
								
								<div class="section-title">
								
									<h4>As seen on</h4>
									
								</div>
								
							</div>
						
						</div>
						
							
						<div class="partner-image-item">
						@foreach($companypartnership as $row)
	   							<option value="{{ $row->id }}">{{ $row->favicon }}</option>
	   						@endforeach
							<img src="{{ asset('frontend/images/partner/01.png') }}" alt="partner" />
							<img src="{{ asset('frontend/images/partner/02.png') }}" alt="partner" />
							<img src="{{ asset('frontend/images/partner/03.png') }}" alt="partner" />
							<img src="{{ asset('frontend/images/partner/04.png') }}" alt="partner" />
							<img src="{{ asset('frontend/images/partner/05.png') }}" alt="partner" />
							
						</div>
					
					</div>
					
				</div>
				
				
			</div>
			
@endsection