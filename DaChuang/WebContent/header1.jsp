<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="page-wrapper">

    <div class="loader-wrap">
        <div class="preloader"><div class="preloader-close">Preloader Close</div></div>
        <div class="layer layer-one"><span class="overlay"></span></div>
        <div class="layer layer-two"><span class="overlay"></span></div>        
        <div class="layer layer-three"><span class="overlay"></span></div>        
    </div>

    <header class="main-header header-style-one">

        <div class="header-top-1">
            <div class="auto-container">
                <div class="header-top-1-row d-flex align-items-center justify-content-between">
                    <div class="header-top-1-left-column">
                        <ul class="header-top-1-contact-info d-flex align-items-center">
                            <li><i class="icon-1"></i><span>平台开放时间:</span> 8:00 am-6:00 pm</li>
                            <li><i class="icon-2"></i><span>联系我们:</span> <a href="tel:+86-181-0478-5218">+86-181-0478-5218</a></li>
                            <li><i class="icon-3"></i><span>电子邮箱:</span> <a href="mailto:2698779691@qq.com">2698779691@qq.com</a></li>
                        </ul>
                    </div>
                    <div class="header-top-1-right-column d-flex align-items-center">
                    	<c:if test="${isLogin!=1 }">
                        <div class="header-top-1-login"><a href="register.jsp">注册</a></div>
                        	</c:if>
                        <c:if test="${isLogin==1 }">
                        <div class="header-top-1-login"><a href="">您好：${name.USER_NAME }</a></div>
                        </c:if>
                        <ul class="header-top-1-social-icon d-flex align-items-center">
                        <c:if test="${isLogin==1 }">
                            <li><a href="logout">退出登录</a></li>
                            </c:if>
                            <li><a href="manage/login1.jsp">后台中心</a></li>
                       
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-upper">
            <div class="auto-container">
                <div class="inner-container d-flex align-items-center justify-content-between">
                    <div class="logo-box">
                        <div class="logo"><a href="index.jsp"><img src="assets/images/logo11.png" alt=""></a></div>
                    </div>
                    <div class="middle-column">
                        <div class="nav-outer">
                            <div class="mobile-nav-toggler"><img src="assets/images/icons/icon-bar.png" alt=""></div>
                            <nav class="main-menu navbar-expand-md navbar-light">
                                <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                                    <ul class="navigation">
                                        <li ><a href="index.jsp">主页</a>
                                        </li>                                        
                                        <li class=""><a href="HealthKnowleage.jsp">健康知识</a>
                                        </li>
                                        <li class="dropdown"><a href="#">关爱中心</a>
                                        <ul>
                                                <li><a href="video.jsp">关爱视频</a></li>          
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#">常见问题</a>
                                        <ul>
                                                <li><a href="Questions.jsp">老人常见问题解答</a></li>          
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#">职工中心</a>
                                            <ul>
                                                <li><a href="Career.jsp">职工应聘</a></li>
                                            </ul>
                                        </li>
                                        <li class=""><a href="order.jsp">服务中心</a>   
                                        </li>
                                        <li><a href="FindElderly.jsp">紧急寻找中心</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <div class="right-column">  
                    <c:if test="${isLogin!=1 }">
                    <div class="header-link-btn"><a href="login.jsp" class="btn-1">登录<span></span></a></div>
                    	</c:if>     
                    	<c:if test="${isLogin==1 }">
                    <div class="header-link-btn"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
                    	</c:if>                    
                        
                    </div>                        
                </div>
            </div>
        </div>
        <div class="sticky-header">
            <div class="header-upper">
                <div class="auto-container">
                    <div class="inner-container d-flex align-items-center justify-content-between">
                        <!--Logo-->
                        <div class="logo-box">
                            <div class="logo"><a href="index.jsp"><img src="assets/images/logo11.png" alt=""></a></div>
                        </div>
                        <div class="middle-column">
                            <!--Nav Box-->
                            <div class="nav-outer">
                                <!--Mobile Navigation Toggler-->
                                <div class="mobile-nav-toggler"><img src="assets/images/icons/icon-bar-2.png" alt=""></div>
    
                                <!-- Main Menu -->
                                <nav class="main-menu navbar-expand-md navbar-light">
                                </nav>
                            </div>
                        </div>
                        <div class="right-column">
                        <c:if test="${isLogin!=1 }">                            
                            <div class="header-link-btn"><a href="login.jsp" class="btn-1">登录 <span></span></a></div>
                        </c:if>   
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <div class="close-btn"><span class="fal fa-times"></span></div>
            
            <nav class="menu-box">
                <div class="nav-logo"><a href="index.jsp"><img src="assets/images/logof.png" alt="" title=""></a></div>
                <div class="menu-outer"><!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header--></div>
				<!--Social Links-->
				<div class="social-links">
					<ul class="clearfix">
						<li><a href="#"><span class="fab fa-twitter"></span></a></li>
						<li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
						<li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
						<li><a href="#"><span class="fab fa-instagram"></span></a></li>
						<li><a href="#"><span class="fab fa-youtube"></span></a></li>
					</ul>
                </div>
            </nav>
        </div>

        <div class="nav-overlay">
            <div class="cursor"></div>
            <div class="cursor-follower"></div>
        </div>
    </header>

    <div id="search-popup" class="search-popup">
        <div class="close-search theme-btn"><span class="flaticon-remove"></span></div>
        <div class="popup-inner">
            <div class="overlay-layer"></div>
            <div class="search-form">
                <form method="post" action="index.jsp">
                    <div class="form-group">
                        <fieldset>
                            <input type="search" class="form-control" name="search-input" value="" placeholder="Search Here" required >
                            <input type="submit" value="Search Now!" class="theme-btn">
                        </fieldset>
                    </div>
                </form>
                <br>
                <h3>Recent Search Keywords</h3>
                <ul class="recent-searches">
                    <li><a href="#">Finance</a></li>
                    <li><a href="#">Idea</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">Growth</a></li>
                    <li><a href="#">Plan</a></li>
                </ul>
            </div>
        </div>
    </div>