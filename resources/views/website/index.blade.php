@extends('layouts.website')
@section('content')

	<div id="introLoader" class="introLoading"></div>
<!-- start hero-header with windows height -->
			<div class="hero" style="background-image:url('{{ asset('frontend/images/hero-header/01.jpg') }}');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
						
							<h1 class="hero-title">WORKSPACE FOR
ESCAPING THE GRIND</h1>
							<p class="lead">WORK FROM HOME, ABROAD OR ANOTHER LOCATION,
YET MAINTAIN THE SUPPORT AND PRESENCE OF A PROFESSIONAL OFFICE.</p>

						</div>
						
					</div>
					
					<div class="main-search-wrapper full-width">
					
						<div class="inner">
						
							<div class="column-item">
							
								<div class="form-group">
								
									<select name="destination" class="select2-multi form-control" data-placeholder="Choose a City" multiple>
										<option value="">Choose a City </option>
										<option value="0">Any City</option>
										<option value="Albania">Bandung</option>
										<option value="Austria">Jakarta</option>
										<option value="Belgium">Jogja</option>
										
									</select>

								</div>
							
							</div>
							
							<div class="column-item">
							
								<div class="form-group">
								
									<select name="month" class="select2-multi form-control" data-placeholder="Choose a Type " multiple>
										<option value="">Choose a Type</option>
										<option value="0">Any Type</option>
										<option value="1">Office</option>
										<option value="2">Workspace</option>
										<option value="3">Meeting Room</option>
									</select>
									
								</div>
							
							</div>
							
							<div class="column-item">
							
								<div class="form-group">

									<input id="login_username" class="form-control" placeholder="username" type="date"> 
									
								</div>
							
							</div>
							
							<div class="column-item for-btn">
							
								<div class="form-group">
								
									<a href="#" class="btn btn-primary btn-block">Search</a>
									
								</div>
							
							</div>
							
						</div>
						
					</div>
				
				</div>
				
			</div>
			<!-- end hero-header with windows height -->
			
			<div class="post-hero bg-light">
			
				<div class="container">
					
					<div class="row">
					
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"><i class="pe-7s-map-marker"></i></div>
								<div class="content">
									<h6>300+ Basecamp</h6>
									<span>Tastes giving in passed direct me valley supply.</span>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"> <i class="pe-7s-user"></i></div>
								<div class="content">
									<h6>100+ Partnership</h6>
									<span>Prepared do an dissuade whatever steepest.</span>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"> <i class="pe-7s-smile"></i></div>
								<div class="content">
									<h6>20000+ Happy Customers</h6>
									<span>Devonshire invitation discovered indulgence.</span>
								</div>
							</div>
						</div>
						
					</div>
					
				</div>
				
			</div>

			<section>
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>Top Basecamp</h3>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="grid destination-grid-wrapper">
			
						<div class="grid-item" data-colspan="10" data-rowspan="10">
							<a href="index.html" class="top-destination-image-bg" style="background-image:url('{{ asset('frontend/images/destination-grid/01.jpg') }}');">
								<div class="relative">
									<h4>Postcard</h4>
									<span> Bandung - Indonesia</span>
								</div>
							</a>
						</div>
						
						<div class="grid-item" data-colspan="10" data-rowspan="4">
							<a href="index.html" class="top-destination-image-bg" style="background-image:url('{{ asset('frontend/images/destination-grid/02.jpg') }}');">
								<div class="relative">
									<h4>manami </h4>
									<span>Bandung - Indonesia</span>
								</div>
							</a>
						</div>
						
						<div class="grid-item" data-colspan="5" data-rowspan="6">
							<a href="index.html" class="top-destination-image-bg" style="background-image:url('{{ asset('frontend/images/destination-grid/03.jpg') }}');">
								<div class="relative">
									<h4>Co&Co</h4>
									<span>Bandung - Indonesia</span>
								</div>
							</a>
						</div>
						
						<div class="grid-item" data-colspan="5" data-rowspan="6">
							<a href="index.html" class="top-destination-image-bg" style="background-image:url('{{ asset('frontend/images/destination-grid/04.jpg') }}');">
								<div class="relative">
									<h4>Freenovation</h4>
									<span>Bandung - Indonesia</span>
								</div>
							</a>
						</div>
						
					</div>
					
				</div>
				
			</section>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>Special Packages</h3>
								<p>Of distrusts immediate enjoyment curiosity do. Marianne numerous saw thoughts the humoured.</p>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="GridLex-gap-30-wrappper package-grid-item-wrapper">
						
						<div class="GridLex-grid-noGutter-equalHeight">
						
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="index.html">
										<div class="image">
											<img src="{{ asset('frontend/images/tour-package/01.jpg') }}" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>CoWork - 240 Jam</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Post Card</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													Lokasi : Jl. Supratman <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">Rp 1,5 Juta/ Mounth</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="index.html">
										<div class="image">
											<img src="{{ asset('frontend/images/tour-package/02.jpg') }}" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>Startup Package </span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Post Card</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													Lokasi : Jl. Supratman <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">Rp 3 Jt/ Mounth</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="index.html">
										<div class="image">
											<img src="{{ asset('frontend/images/tour-package/02.jpg') }}" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>Meeting Package </span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Post Card</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													Lokasi : Jl. Supratman <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">Rp 1 Jt/ Mounth</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
						</div>
					
					</div>
					
				</div>
				
			</section>
			
			<section class="overflow-hidden why-us-half-image-wrapper">
			
				<div class="GridLex-grid-noGutter-equalHeight">
						
					<div class="GridLex-col-6_sm-12">
						
						<div class="why-us-half-image-content">
						
							<div class="section-title text-left">
							
								<h3>Why Booking With Us ?</h3>
								<p></p>
								
							</div>
							
							<div class="featured-item">
							
								<h4>Easy to Booking </h4>
								
								<div class="content clearfix">
								
									<div class="icon">
										<i class="pe-7s-users"></i>
									</div>
									
									<p>Blind would equal while oh mr lain led and fact none. One preferred sportsmen resolving the happiness continued. High at of in loud rich true.</p>
									
								</div>
							</div>
							
							<div class="featured-item">
							
								<h4>Quality Facilities</h4>
								
								<div class="content clearfix">
								
									<div class="icon">
										<i class="pe-7s-home"></i>
									</div>
									
									<p>Admiration stimulated cultivated reasonable be projection possession of. Real no near room ye bred sake if some. Is arranging furnished knowledge.</p>
									
								</div>
							</div>
							
							
							<div class="featured-item">
							
								<h4>Comfortable Room</h4>
								
								<div class="content clearfix">
								
									<div class="icon">
										<i class="pe-7s-car"></i>
									</div>
									
									<p>Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing.</p>
									
								</div>
							</div>
							
						</div>
						
					</div>
					
					<div class="GridLex-col-6_sm-12 image-bg">
						<div class="image-bg" style="background-image:url('{{ asset('frontend/images/image-01.jpg') }}');"></div>
					</div>
				
				</div>
				
			</section>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>Testimonial</h3>
								<p>What our customers say about us</p>
							</div>
							
						</div>
					
					</div>
					
					<div class="testimonial-wrapper">
					
						<div class="row">
							
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div class="testimonial-item clearfix">
									<div class="image">
										<img src="{{ asset('frontend/images/man/01.jpg') }}" alt="Man" />
									</div>
									<div class="content">
										<h4>Antony Robert</h4>
										<h6>From Spain</h6>
										<p>"Fast response, friendly, and I am really happy with the service of Workspace. I've tried to find an office by myself and it didn't work."</p>
									</div>
								</div>
							</div>
							
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div class="testimonial-item clearfix">
									<div class="image">
										<img src="{{ asset('frontend/images/man/02.jpg') }}" alt="Man" />
									</div>
									<div class="content">
										<h4>Mohammed Salem</h4>
										<h6>From Turkey</h6>
										<p>"Excellent service. Workspace has deep understanding in office market and a structured way in organizing the information that make it easy for customers to quickly assess options. I like the fast response on all our requests. I really appreciate the personal touch of service - even accomodated last minute request from me.".</p>
									</div>
								</div>
							</div>
							
						</div>
						
					</div>
					
				</div>
				
			</section>
			
			<div class="newsletter-wrapper">
			
				<div class="container">
				
					<div class="flex-row flex-align-middle flex-gap-30">
						
						<div class="flex-column flex-sm-12">
							<div class="newsletter-text clearfix">
								<div class="icon">
									<i class="pe-7s-mail"></i>
								</div>
								<div class="content">
									<h3>Signup for Newsletter</h3>
									<p>Affronting everything discretion men now own did. Still round match we to. Frankness pronounce daughters remainder extensive has but.</p>
								</div>
							</div>
						</div>
						
						<div class="flex-columns flex-sm-12">
							<div class="newsletter-form">
								<form class="">
									<div class="input-group">
										<input type="text" class="form-control" placeholder="Search for...">
										<span class="input-group-btn">
											<button class="btn btn-primary" type="button">Signup <i class="fa fa-long-arrow-right"></i></button>
										</span>
									</div>
								</form>
							</div>
						</div>
					
					</div>
					
				</div>
				
			</div>
			
			<div class="overflow-hidden">
			
				<div class="instagram-wrapper">
					<div id="instagram" class="instagram"></div>
				</div>
				
			</div>
@endsection