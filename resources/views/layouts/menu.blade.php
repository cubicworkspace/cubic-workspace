<ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                            <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <li class="sidebar-toggler-wrapper hide">
                                <div class="sidebar-toggler">
                                    <span></span>
                                </div>
                            </li>

                            <li class="nav-item  ">
                                <a href="{{ url('/dashboard') }}" class="nav-link nav-toggle">
                                    <i class="icon-home"></i>
                                    <span class="title">Dashboard</span>
                                </a>
                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-users"></i>
                                    <span class="title">Administrator</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item">
                                        <a href="{{ url('/user') }}" class="nav-link ">
                                            <span class="title">User</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('/admin') }}" class="nav-link ">
                                            <span class="title">Admin</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('/categoryadmin') }}" class="nav-link ">
                                            <span class="title">Category Admin</span>
                                        </a>
                                    </li>
                            </ul>
                            </li>

                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-picture"></i>
                                    <span class="title">Media</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item  ">
                                        <a href="{{ url('/media') }}" class="nav-link ">
                                            <span class="title">Media</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/categorymedia') }}" class="nav-link ">
                                            <span class="title">Category Media</span>
                                        </a>
                                    </li>
                                 </ul>
                            </li>

                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-wallet"></i>
                                    <span class="title">Companies</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item  ">
                                        <a href="{{ url('/companies') }}" class="nav-link ">
                                            <span class="title">Companies</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/informasicompanies') }}" class="nav-link ">
                                            <span class="title">Informasi Companies</span>
                                        </a>
                                    </li>
                                 </ul>
                            </li>

                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-briefcase"></i>
                                    <span class="title">Partnership</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-ite">
                                        <a href="{{ url('/adminpartnership') }}" class="nav-link ">
                                            <span class="title">Admin Partnership</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/companypartnership') }}" class="nav-link ">
                                            <span class="title">Company Partnership</span>
                                        </a>
                                    </li>
                                   
                                 </ul>
                            </li>

                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-settings"></i>
                                    <span class="title">Services</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item ">
                                        <a href="{{ url('/companyservices') }}" class="nav-link ">
                                            <span class="title">Company Services</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/tagservices') }}" class="nav-link ">
                                            <span class="title">Tag Services</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/services') }}" class="nav-link ">
                                            <span class="title">Services</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/categoryservices') }}" class="nav-link ">
                                            <span class="title">Category Services</span>
                                        </a>
                                    </li>
                                 </ul>
                            </li>

                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-bulb"></i>
                                    <span class="title">Billing</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-ite">
                                        <a href="{{ url('/billingcompanyservices') }}" class="nav-link ">
                                            <span class="title">Billing Company Services</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/historybilling') }}" class="nav-link ">
                                            <span class="title">History Billing Company Services</span>
                                        </a>
                                    </li>
                                 </ul>
                            </li>

                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-pointer"></i>
                                    <span class="title">Country & City</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-ite">
                                        <a href="{{ url('/country') }}" class="nav-link ">
                                            <span class="title">Country</span>
                                        </a>
                                    </li>
                                    <li class="nav-item ">
                                        <a href="{{ url('/city') }}" class="nav-link ">
                                            <span class="title">City</span>
                                        </a>
                                    </li>
                                 </ul>
                            </li>
</ul>
<!-- END SIDEBAR MENU -->