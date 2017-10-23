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
			
				<div class="container">
					<style type="text/css">
						.flex-gap-30 > .flex-columns, .flex-gap-30 > .flex-column {
						    padding-left: 115px;
						    padding-right: 15px;
						}
					</style>
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
							<div >
									<div class="input-group">
										
										<span class="input-group-btn">
											<input type="submit"  data-toggle="modal" data-target=".bd-example-modal-lg" class="btn btn-primary" type="button" value="Register Partnership"> <i class="fa fa-long-arrow-right"></i>
										</span>
									</div>
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

			<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
 				 <div class="modal-dialog modal-lg">
   					<div class="modal-content">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal">&times;</button>
			                <h4 class="modal-title"><b>Register Partnership</b></h4>
			            </div>
			            <div class="modal-body">
			            	<form action="/website/member/signup" method="POST">
			                Isi disini datanya
							</form>
			            </div>
			            <div class="modal-footer">
			                <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
			                <input type="submit" name="signup" value="Sign Up" class="btn btn-primary"> 
			            </div>
       				 </div>
 			 </div>
</div>
@endsection