@extends('layout.website')
@section('content')

<!-- start end Page title -->
			<div class="page-title" style="background-image:url('{{ asset('frontend/images/hero-header/breadcrumb.jpg') }}');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">Result list</h1>
							
							
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			<div class="content-wrapper">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-4 col-md-3">
							
							<aside class="sidebar with-filter">
				
								<div class="sidebar-search-wrapper bg-light-2">
								
									<div class="sidebar-search-header">
										<h4>Search Again</h4>
									</div>
									
									<div class="sidebar-search-content">

										<div class="form-group">
											
											<select name="destination" class="select2-multi form-control" data-placeholder="Choose a Destination" multiple>
												<option value="">Choose a Location</option>
												<option value="0">Any Location</option>
												<option value="Jakarta">Jakarta</option>
												<option value="Bandung" selected>Bandung</option>
												<option value="Solo">Solo</option>
												
											</select>

										</div>
									
										<div class="form-group">
														
											<select name="month" class="select2-multi form-control" data-placeholder="Choose a Type" multiple>
												<option value="">Choose a Type</option>
												<option value="0">CoWorking</option>
												<option value="1">Office</option>
												<option value="2">Residence</option>
											</select>
											
										</div>
										
										<div class="form-group">

											
											<input type="date" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
										</div>
									
										<a href="#" class="btn btn-primary btn-block">Search</a>
									
									</div>
									
								</div>
								
								
								
								<div class="sidebar-inner">
									<div class="clear"></div>
									<div class="sidebar-module">
										<h6 class="sidebar-title">Filter Text Inside Sidebar Inner</h6>
										<div class="sidebar-module-inner">
											<p>Park fat she nor does play deal our. Procured sex material his offering humanity laughing moderate can.</p>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</aside>
							
							
						</div>
						
						<div class="col-sm-8 col-md-9">
							
							<div class="sorting-wrappper">
			
								<div class="sorting-header">
									<h3 class="sorting-title uppercase">3 Countries: Germany, France, Austria</h3>
									<p class="sorting-lead">587 results found</p>
								</div>
								
								<div class="sorting-content">
								
									<div class="row">
									
										<div class="col-sm-12 col-md-8">
											<div class="sort-by-wrapper">
												<label class="sorting-label">Sort by: </label> 
												<div class="sorting-middle-holder">
													<ul class="sort-by">
														<li class="active up"><a href="#">Name <i class="fa fa-long-arrow-down"></i></a></li>
														<li><a href="#">Price</a></li>
														<li><a href="#">Location</a></li>
													</ul>
												</div>
											</div>
										</div>
										
										
									</div>
								
								</div>

							</div>
							
							<div class="package-list-item-wrapper on-page-result-page">
							
								<div class="package-list-item clearfix">
									<div class="image">
										<img src="{{ asset('frontend/images/tour-package/01.jpg') }}" alt="Tour Package" />
										<div class="absolute-in-image">
											
										</div>
									</div>
									
									<div class="content">
										<h5>PostCard Cafe <button class="btn"><i class="fa fa-heart-o"></i></button></h5>
										<div class="row gap-10">
											<div class="col-sm-12 col-md-9">
												
												<p class="line18">Letter wooded direct two men indeed income sister. Impression up admiration partiality is...</p>
												
												<ul class="list-info">
													<li><span class="icon"><i class="fa fa-map-marker"></i></span> <span class="font600">City: </span> Bandung</li>
													<li><span class="icon"><i class="fa fa-flag"></i></span> <span class="font600">Status:</span> Avaliabel</li>
													
												</ul>
												
											</div>
											<div class="col-sm-12 col-md-3 text-right text-left-sm">
												
												
												
												<div class="price">Rp 10 Jt Perbulan</div>
												
												<a href="detail_package.php" class="btn btn-primary btn-sm">view</a>
												
											</div>
										</div>
									</div>
									
								</div>
								
								<div class="package-list-item clearfix">
									<div class="image">
										<img src="{{ asset('frontend/images/tour-package/02.jpg') }}" alt="Tour Package" />
										
									</div>
									
									<div class="content">
										<h5>Manami Buah Batu<button class="btn"><i class="fa fa-heart-o"></i></button></h5>
										<div class="row gap-10">
											<div class="col-sm-12 col-md-9">
												
												<p class="line18">Letter wooded direct two men indeed income sister. Impression up admiration partiality is...</p>
												
												<ul class="list-info">
													<li><span class="icon"><i class="fa fa-map-marker"></i></span> <span class="font600">City: </span> North Jakarta </li>
													
													
												</ul>
											</div>
											<div class="col-sm-12 col-md-3 text-right text-left-sm">
												
											
												
												<div class="price">Rp 1,5 Jt Perbulan</div>
												
												<a href="detail_package.php" class="btn btn-primary btn-sm">view</a>
												
											</div>
										</div>
									</div>
									
								</div>
								
							
							<div class="pager-wrappper clearfix">
			
								<div class="pager-innner">
								
									<div class="flex-row flex-align-middle">
											
										<div class="flex-column flex-sm-12">
											Showing reslut 1 to 15 from 248 
										</div>
										
										<div class="flex-column flex-sm-12">
											<nav class="pager-right">
												<ul class="pagination">
													<li>
														<a href="#" aria-label="Previous">
															<span aria-hidden="true">&laquo;</span>
														</a>
													</li>
													<li class="active"><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><span>...</span></li>
													<li><a href="#">11</a></li>
													<li><a href="#">12</a></li>
													<li><a href="#">13</a></li>
													<li>
														<a href="#" aria-label="Next">
															<span aria-hidden="true">&raquo;</span>
														</a>
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
			

@endsection