<aside class="sidebar with-filter">
							
								<div class="sidebar-inner">
								
									<div class="sidebar-module">
										<h4 class="heading mt-0">Personal Information</h4>
										<div class="sidebar-module-inner">
											
											<ul class="help-list">
												@if($edit->image == '')
												<li><span class="font600"><img src="{{ asset('upload/noimage.png') }}" alt="Personal Member Image" />
												</li>
												@else
												<li><span class="font600"><img src="{{ asset('upload/member') }}/{{ $edit->image }}" alt="Personal Member Image" />
												</li>
												@endif
												<li><span class="font600">Name</span>: {{ Auth::user()->name }}</li>
												<li><span class="font600">Phone</span>: {{ $edit->phone }}</li>
												<li><span class="font600">Email</span>: {{ Auth::user()->email }}</li>
												
											</ul>
										</div>
									</div>
									
									
									<div class="sidebar-module">
								
									
								</div>
								
							</aside>