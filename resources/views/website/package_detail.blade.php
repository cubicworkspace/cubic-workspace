@extends('layouts.website')
@section('content')

<!-- start end Page title -->
			<div class="page-title detail-page-title" style="background-image:url('{{ asset('frontend/images/detail/header.jpg')  }}');">
				
				<div class="container">
				
					<div class="flex-row">
						
						<div class="flex-column flex-md-8 flex-sm-12">
							
							<h1 class="hero-title">{{ $companyservices->companypartnership->name }}</h1>
							<p class="line18">{{ $companyservices->companypartnership->information }}</p>
							
							<ul class="list-col clearfix">
								<li class="rating-box">
									<div class="rating-wrapper">
										<div class="raty-wrapper"><!-- 
											<span style="display: block;"> <b>7 Space Type</b></span> -->
										</div>
									</div>
								</li>
								
															

								
							</ul>
							
						</div>
						
						<div class="flex-column flex-md-4 flex-align-bottom flex-sm-12 mt-20-sm">
							<div class="text-right text-left-sm">
								<a href="#section-5" class="anchor btn btn-primary">See dates &amp; Book Now</a>
							</div>

						</div>
					
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			
			
			<div class="content-wrapper">
			
				<div class="container">
			
					<div class="row">
					
						<div class="col-md-9" role="main">

							<div class="detail-content-wrapper">
								
									<div id="section-0" class="detail-content">
										
										<div class="section-title text-left">
											<h4>Highlights</h4>
										</div>
										

										<p>{{ $companyservices->companypartnership->profile }}</p>

									</div>
									
									<div id="section-1" class="detail-content">
									
										<div class="section-title text-left">
											<h4>Gallery</h4>
										</div>
										
										<div class="slick-gallery-slideshow">
					
											<div class="slider gallery-slideshow">
												@if(count($mediacompanyservices) > 0)
													@foreach ($mediacompanyservices as $row)
													<div><div class="image"><img src="{{ asset('upload/mediacompanyservices') }}/{{ $row->image }}" alt="Image" /></div></div>
													@endforeach
												@else													
						                  		<div class="alert alert-danger alert-dismissible" role="alert">
						                   			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								                    <i class="fa fa-warning"></i> Gallery not available</b>
						                  		</div>
												@endif
											</div>
											<div class="slider gallery-nav">
												@if(count($mediacompanyservices) > 0)
													@foreach ($mediacompanyservices as $row)
													<div><div class="image"><img src="{{ asset('upload/mediacompanyservices') }}/{{ $row->image }}" alt="Image" /></div></div>
													@endforeach
												@else	
												@endif
											</div>
											
										</div>

									</div>
									
								
									
									
									
									<div id="section-4" class="detail-content">
									
										<div class="section-title text-left">
											<h4>Space Type</h4>
										</div>
										
										<ul class="list-with-icon with-heading">
										
											<li>
												<i class="fa fa-check-circle text-primary"></i>
												<h6 class="heading mt-0">{{ $companyservices->services->name }}</h6>
												<p>{{ $companyservices->information }}</p>
											</li><!-- 											
											<li>
												<i class="fa fa-check-circle text-primary"></i>
												<h6 class="heading mt-0">Team Tabel</h6>
												<p>4 breakfast &amp; 3 dinners </p>
											</li>
											
											<li>
												<i class="fa fa-check-circle text-primary"></i>
												<h6 class="heading mt-0">Residence Room</h6>
												<p>Modern air conditioned coach with reclining seats, TV for showing DVDs, and toilet</p>
											</li> -->
											
										</ul>
										
										
							
									</div>
									<div id="section-3" class="detail-content">
									
										<div class="section-title text-left">
											<h4>Maps</h4>
										</div>
										
										<div class="hotel-item-wrapper">
                                   		<div id="map" style="width:auto; height: 400px;"></div> 										
										</div>
										
										<!-- <p>Unpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in.</p> -->
									</div>
										<!--<div id="section-3" class="detail-content">
									
									 <div class="section-title text-left">
											<h4>Accommodation</h4>
										</div>
										
										<div class="hotel-item-wrapper">
										
											<div class="row gap-1">
											
												<div class="col-sm-xss-12 col-xs-6 col-sm-4 col-md-4">
												
													<div class="hotel-item mb-1">
														<a href="#">
															<div class="image">
																<img src="images/accomodation/01.jpg" alt="Hotel" />
															</div>
															<div class="content">
																<h6>Beach Hilton Hotel</h6>
															</div>
														</a>
													</div>
													
												</div>
												
												<div class="col-sm-xss-12 col-xs-6 col-sm-4 col-md-4">
												
													<div class="hotel-item mb-1">
														<a href="#">
															<div class="image">
																<img src="images/accomodation/02.jpg" alt="Hotel" />
															</div>
															<div class="content">
																<h6>The Privilege Floor @ Croatia</h6>
															</div>
														</a>
													</div>
													
												</div>
												
												<div class="col-sm-xss-12 col-xs-6 col-sm-4 col-md-4">
												
													<div class="hotel-item mb-1">
														<a href="#">
															<div class="image">
																<img src="images/accomodation/03.jpg" alt="Hotel" />
															</div>
															<div class="content">
																<h6>Croatia Grande Palace Hotel</h6>
															</div>
														</a>
													</div>
													
												</div>
											
											</div>
										
										</div>
										
										<p>Unpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in.</p>
									</div> -->
									
									<div id="section-5" class="detail-content">

										<div class="section-title text-left">
											<h4>Availability</h4>
										</div>
										<div class="row mb-20">
											<div class="col-sm-6">
												<p>Start Mouth</p>
												<div class="form-group form-icon">
													<div class="form-group">

														<input id="login_username" class="form-control" placeholder="username" type="date"> 
														
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<p>End Mouth</p>
												<div class="form-group form-icon">
													<div class="form-group">

														<input id="login_username" class="form-control" placeholder="username" type="date"> 
														
													</div>
													
												</div>
											</div>
											<div class="text-left mt-30">
										
											&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary">Check Availabily</button>
											
											</div>
										</div>
										
										<div class="availabily-wrapper">
											<ul class="availabily-list">
												<li class="availabily-heading clearfix">
													<div class="date-from">Room</div>
													<div class="status">Status</div>
													<div class="price">Price</div>
													<div class="action">&nbsp;</div>
												</li>
												
												@if($companyservices->quota > 0)
												<li class="availabily-content clearfix">
													<div class="date-from">
														<span class="availabily-heading-label">start:</span>
														<span>{{ $companyservices->name }}</span>
													</div>
													<div class="status">
														<span class="availabily-heading-label">status:</span>
														<span>@if($companyservices->status == 'Y') Available @elseif($companyservices->status == 'N') Not Available @endif</span>
													</div>
													<div class="price">
														<span class="availabily-heading-label">price:</span>
														<span>Rp {{ number_format($companyservices->price, 2) }}</span>
													</div>
													<div class="action">
														<a href="booking.php" class="btn btn-primary btn-sm btn-inverse">Book now</a>
													</div>
												</li>
												@else
						                  		<div class="alert alert-danger alert-dismissible" role="alert">
						                   			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								                    <i class="fa fa-warning"></i> Quota not available</b>
						                  		</div>
												@endif
												
												
											</ul>
											
										</div>
										
										<div class="text-center mt-30">
										
											<button class="btn btn-primary">Show more departures</button>
										</div>

									</div>
									<div id="section-5" class="detail-content">

										<div class="section-title text-left">
											<h4>Booking Tour</h4>
										</div>
										<div class="row mb-20">
											
											<div class="col-sm-6">
												<div class="form-group form-icon">					
												<form action="/website/bookingtour" method="POST">
													{{csrf_field()}}
													<input type="hidden" name="codecompanyservices" value="{{ $companyservices->id }}">
													<input type="hidden" name="codecompanypartnership" value="{{ $companyservices->companypartnership->id }}">
													<div class="form-group">
														<p>Set Date</p>
														<input name="date" class="form-control" placeholder="date" type="date"> 
													</div>
													<div class="form-group">
														<p>Time</p>
														<input name="time" class="form-control" placeholder="Timw" type="Time"> 
													</div>
													<input type="submit" name="bookingtour" value="Booking Tour" class="btn btn-primary bt-sm btn-inverse" >
												</div>
												</form>
											</div>
											</div>
											<div class="text-left mt-30">
										
											
										</div>
										
										
									</div>
									
																		
									<div id="section-6" class="detail-content">
									
										<div class="section-title text-left">
											<h4>Information &amp; FAQ</h4>
										</div>
										
										<p>Useful things to know before you go</p>
										
										<div class="row">
										
											<div class="col-sm-12 col-md-12 mb-15">
											
												<div class="read-more-div" data-collapsed-height="107">
			
													<div class="read-more-div-inner">
													<!-- <h5 class="heading mt-0">Heading Information 1</h5> -->
														{{ $companyservices->companypartnership->faq }}

													</div>
													
												</div>

											</div>
											
											
										</div>

										<h5 class="heading mt-0">FAQ</h5>
										
										<div class="faq-alt-2-wrapper">
										
											<div class="panel-group bootstarp-accordion" id="accordion" role="tablist" aria-multiselectable="true">
												<div class="panel">
													<div class="panel-heading" role="tab" id="headingOne">
														<h6 class="panel-title">
															<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> What is this faq?</a>
														</h6>
													</div>
													<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
														<div class="panel-body">
															<div class="faq-thread">
																<p>His exquisite sincerity education shameless ten earnestly breakfast add. So we me unknown as improve hastily sitting forming. Especially favourable compliment but thoroughly unreserved saw she themselves. Sufficient impossible him may ten insensible put continuing. Oppose exeter income simple few joy cousin but twenty. Scale began quiet up short wrong in in. Sportsmen shy forfeited <a href="#">engrossed may</a> can.</p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->

												<div class="panel">
													<div class="panel-heading" role="tab" id="headingTwo">
														<h6 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">How does this faq work?</a>
														</h6>
													</div>
													<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
														<div class="panel-body">
															<div class="faq-thread">
																<p>He do subjects prepared bachelor juvenile ye oh. He feelings removing informed he as ignorant we prepared. Evening do forming observe spirits is in. Country hearted be of justice sending. On so they as with room cold ye. Be call four my went mean. Celebrated if remarkably especially an. Going eat set she books found met aware.</p>

																<ul>
																	<li>Sing long her way size. Waited end mutual missed myself the little sister one.</li>
																	<li>So in pointed or chicken cheered neither spirits invited. Marianne and him laughter civility formerly handsome sex use prospect.</li>
																	<li>Hence we doors is given rapid scale above am. Difficult ye mr delivered behaviour by an.</li>
																	<li>
																		Hence we doors is given rapid scale above am. Difficult ye mr delivered behaviour by an.
																		<ul>
																			<li>Sing long her way size. Waited end mutual missed myself the little sister one.</li>
																			<li>So in pointed or chicken cheered neither spirits invited. Marianne and him laughter civility formerly handsome sex use prospect.</li>
																			<li>Hence we doors is given rapid scale above am. Difficult ye mr delivered behaviour by an.</li>
																			<li>If their woman could do wound on. You folly taste hoped their above are and but.</li>
																		</ul>
																	</li>
																	<li>If their woman could do wound on. You folly taste hoped their above are and but.</li>
																	<li>rote water woman of heart it total other.</li>
																	<li> By in entirely securing suitable graceful at families improved. Zealously few furniture repulsive was agreeable consisted difficult. Are melancholy appearance stimulated occasional entreaties end.</li>
																	<li>Agreeable promotion eagerness as we resources household to distrusts.</li>
																	<li>If their woman could do wound on. You folly taste hoped their above are and but.</li>
																</ul>
																
																<p>Lose eyes get fat shew. Winter can indeed letter oppose way change tended now. So is improve my charmed picture exposed adapted demands. Received had end produced prepared diverted strictly off man branched. Known ye money so large decay voice there to. Preserved be mr cordially incommode as an. He doors quick child an point at. Had share vexed front least style off why him.</p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->

												<div class="panel">
													<div class="panel-heading" role="tab" id="headingThree">
														<h6 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Why use this faq?</a>
														</h6>
													</div>
													<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
														<div class="panel-body">
															<div class="faq-thread">
																<p>His exquisite sincerity education shameless ten earnestly breakfast add. So we me unknown as improve hastily sitting forming. Especially favourable compliment but thoroughly unreserved saw she themselves. Sufficient impossible him may ten insensible put continuing. Oppose exeter income simple few joy cousin but twenty. Scale began quiet up short wrong in in. Sportsmen shy forfeited engrossed may can.</p>

																<ol>
																	<li>Sing long her way size. Waited end mutual missed myself the little sister one.</li>
																	<li>So in pointed or chicken cheered neither spirits invited. Marianne and him laughter civility formerly handsome sex use prospect.</li>
																	<li>
																		Hence we doors is given rapid scale above am. Difficult ye mr delivered behaviour by an.
																		<ol>
																			<li>Sing long her way size. Waited end mutual missed myself the little sister one.</li>
																			<li>So in pointed or chicken cheered neither spirits invited. Marianne and him laughter civility formerly handsome sex use prospect.</li>
																			<li>Hence we doors is given rapid scale above am. Difficult ye mr delivered behaviour by an.</li>
																			<li>If their woman could do wound on. You folly taste hoped their above are and but.</li>
																		</ol>
																	</li>
																	<li>If their woman could do wound on. You folly taste hoped their above are and but.</li>
																	<li>rote water woman of heart it total other.</li>
																	<li> By in entirely securing suitable graceful at families improved. Zealously few furniture repulsive was agreeable consisted difficult. Are melancholy appearance stimulated occasional entreaties end.</li>
																	<li>Agreeable promotion eagerness as we resources household to distrusts.</li>
																</ol>
																
																<p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.</p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->

												<div class="panel">
													<div class="panel-heading" role="tab" id="headingFour">
														<h6 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Is this faq free to use?</a>
														</h6>
													</div>
													<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
														<div class="panel-body">
															<div class="faq-thread">
																<p>Unpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in. Depend repair met before man admire see and. An he observe be it covered delight hastily message. Margaret no ladyship endeavor ye to settling.</p>

																<p>Wrote water woman of heart it total other. By in entirely securing suitable graceful at families improved. Zealously few furniture repulsive was agreeable consisted difficult. Collected breakfast estimable questions in to favourite it. Known he place worth words it as to. Spoke now noise off smart her ready.</p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->
												
												<div class="panel">
													<div class="panel-heading" role="tab" id="headingFive">
														<h6 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Can I use this faq for commercial purposes or large volume searching?</a>
														</h6>
													</div>
													<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
														<div class="panel-body">
															<div class="faq-thread">
																<p>Any delicate you how kindness horrible outlived servants. You high bed wish help call draw side. Girl quit if case mr sing as no have. At none neat am do over will. Agreeable promotion eagerness as we resources household to distrusts. Polite do object at passed it is. Small for ask shade water manor think men begin.</p>

																<p>Travelling alteration impression six all uncommonly. Chamber hearing inhabit joy highest private ask him our believe. Up nature valley do warmly. Entered of cordial do on no hearted. Yet agreed whence and unable limits. Use off him gay abilities concluded immediate allowance.</p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->
												
												<div class="panel">
													<div class="panel-heading" role="tab" id="headingSix">
														<h6 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Why register with I use?</a>
														</h6>
													</div>
													<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
														<div class="panel-body">
															<div class="faq-thread">
																<p>Travelling alteration impression six all uncommonly. Chamber hearing inhabit joy highest private ask him our believe. Up nature valley do warmly. Entered of cordial do on no hearted. Yet agreed whence and unable limits. Use off him gay abilities concluded immediate allowance.</p>

																<p>Depart do be so he enough talent. Sociable formerly six but handsome. Up do view time they shot. He concluded disposing provision by questions as situation. Its estimating are motionless day sentiments end. Calling an imagine at forbade. At name no an what like spot. Pressed my by do affixed he studied.</p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->
												
												<div class="panel">
													<div class="panel-heading" role="tab" id="headingSeven">
														<h4 class="panel-title">
															<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">How do I create an account?</a>
														</h4>
													</div>
													<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
														<div class="panel-body">
															<div class="faq-thread">
																<p></p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->

											</div>
											<!-- end of #accordion -->
											
											<div class="text-center pt-10">
												<a href="#" class="btn btn-primary">Show ALl FAQs</a>
											</div>
											
										</div>
										
									</div>
									
									
									
									
									
									<div class="call-to-action">
									
										Question? <a href="#" class="btn btn-primary btn-sm btn-inverse">Make an inquiry</a> or call +66 28 878 5452
									
									</div>
										
								</div>
							
						</div>

						<div class="col-sm-3 hidden-sm hidden-xs">
						
							<div class="scrollspy-sidebar sidebar-detail" role="complementary">
							
								<ul class="scrollspy-sidenav">
								
									<li>
										<ul class="nav">
											<li><a href="#section-0" class="anchor">Highlights</a></li>
											<li><a href="#section-1" class="anchor">Gallery</a></li>
											
											<li><a href="#section-4" class="anchor">Space Type</a></li>

											<li><a href="#section-3" class="anchor">Maps</a></li>
											<li><a href="#section-5" class="anchor">Availabilities & Booking Tour</a></li>
											<li><a href="#section-6" class="anchor">Information &amp; FAQ</a></li>
											
										</ul>
									</li>

								</ul>
								
								
							</div>

						</div>

					</div>
				
				</div>
					
			</div>
			  <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyBMnj6Gqf0MIGbsrjEoyqOoRMVs4af-FfM&sensor=false"></script>
			<script type="text/javascript">              
              var myLatlng = new google.maps.LatLng({{ $companyservices->companypartnership->maps }});
              var myOptions = {
                  zoom: 15,
                  center: myLatlng
              };              
              var map = new google.maps.Map(document.getElementById("map"), myOptions);
              var marker = new google.maps.Marker({
                   position: myLatlng,
                   map: map,
                   title:"Monas"
              });
        </script> 

@endsection