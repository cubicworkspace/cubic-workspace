<ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                            <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <li class="sidebar-toggler-wrapper hide">
                                <div class="sidebar-toggler">
                                    <span></span>
                                </div>
                            </li>

                            <li class="nav-item">
                                <a href="{{ url('/dashboard') }}" class="nav-link nav-toggle">
                                    <i class="icon-home"></i>
                                    <span class="title">Dashboard</span>
                                </a>
                            <li class="nav-item">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-users"></i>
                                    <span class="title">Administrator</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
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
                                    <li class="nav-ite">
                                        <a href="{{ url('/adminpartnership') }}" class="nav-link ">
                                            <span class="title">Admin Patnership</span>
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
</ul>
<!-- END SIDEBAR MENU -->