                                    @if (Session::has('success'))
                                            <div class="alert alert-success alert-dismissible" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <i class="fa fa-check-circle"></i> {!! session('success') !!}
                                          </div>
                                    @elseif (Session::has('warning'))
                                          <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <i class="fa fa-warning"></i> {!! session('warning') !!}
                                          </div>
                                    @elseif (Session::has('error'))
                                          <div class="alert alert-danger alert-dismissible" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <i class="fa fa-times-circle"></i> {!! session('error') !!}
                                          </div>

                                    @endif