<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>紧急寻找中心</title>
<!-- Stylesheets -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="assets/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="assets/css/color.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<link rel="shortcut icon" href="assets/images/logos.png" type="image/x-icon">
<link rel="icon" href="assets/images/logos.png" type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

<%@ include file="header1.jsp"  %>

  <section class="section-padding pb-0 p_relative">
        <div class="gray-bg h_280 l_0 b_0 r_0 p_absolute"></div>
        <div class="auto-container">
            <div class="row align-items-end">
                <div class="col-lg-5">
                    <div class="section_heading mb_40">
                        <span class="section_heading_title_small">智慧养老服务平台</span>
                        <h2 class="section_heading_title_big">若老人意外丢失 <br> 平台为您提供GPS定位</h2>
                    </div>
                </div>
                <div class="col-lg-7">
                    <ul class="contact-info-1 d-flex flex-wrap justify-content-lg-end mb_40">
                        <li>
                            <h4 class="fs_20 mb_10"><i class="icon-14 mr_10 fs_18"></i>平台地址</h4>
                            <p>内蒙古工业大学金川校区</p>
                        </li>
                        <li>
                            <h4 class="fs_20 mb_10"><i class="icon-16 mr_10 fs_18"></i>联系方式</h4>
                            <p><a href="tel:(+86)181 0478 5218">(+86)181 0478 5218</a></p>
                        </li>
                        <li>
                            <h4 class="fs_20 mb_10"><i class="icon-15 mr_10 fs_15"></i>邮箱</h4>
                            <p><a href="mailto:2698779691@qq.com">2698779691@qq.com</a></p>
                        </li>
                    </ul>
                </div>
                <div class="contact-map p_relative">
                    <iframe src="http://maps.baidu.com" width="600" height="550" frameborder="0" style="border:0; width: 100%" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </section>

    <section class="section-padding gray-bg">
        <div class="auto-container">  
            <div class="section_heading text-center mb_40">
                <span class="section_heading_title_small">智慧养老服务平台</span>
                <h2 class="section_heading_title_big">不要着急，冷静应对<br>将信息提交到平台，平台为您服务</h2>
            </div>          
            <div class="form-alt-3">
                <form method="post" action="/DaChuang/manage/dofindadd" id="contact-form">
                    <div class="row clearfix">
                        <div class="form-group col-md-6">
                            <input type="text" name="findName" value="" placeholder="请输入老人姓名" required>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <input type="text" name="findAge" value="" placeholder="请输入老人年龄" required>
                        </div>

                        <div class="form-group col-md-12">
                            <input type="text" name="findPhone" value="" placeholder="请输入您的电话号码" required>
                        </div>
                         <div class="form-group col-md-12">
                            <input type="text" name="findPosition" value="" placeholder="请输入老人丢失位置" required>
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="findFeatures" placeholder="请输入老人相貌等特征"></textarea>
                        </div>
                        <c:if test="${isLogin==1 }">
                        <div class="form-group col-md-12 text-center">
                            <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                            <button class="btn-1 btn-small" type="submit" data-loading-text="Please wait...">立即提交<i class="flaticon-right-arrow-1"></i><span></span></button>
                        </div>
                        </c:if>
                    </div>
                </form>
            </div>
            <c:if test="${isLogin!=1 }">
                        <div class="form-group col-md-12 text-center">
                            <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                            <button class="btn-1 btn-small" type="submit" data-loading-text="Please wait...">请先登录<i class="flaticon-right-arrow-1"></i><span></span></button>
                        </div>
                        </c:if>
        </div>
    </section>

    

<%@ include file="footer1.jsp"  %>
<!-- Scroll to top end -->

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.nice-select.min.js"></script>
<script src="assets/js/jquery.fancybox.js"></script>
<script src="assets/js/isotope.js"></script>
<script src="assets/js/appear.js"></script>
<script src="assets/js/wow.js"></script>
<script src="assets/js/TweenMax.min.js"></script>
<script src="assets/js/swiper.min.js"></script>
<script src="assets/js/jquery.ajaxchimp.min.js"></script>
<script src="assets/js/parallax-scroll.js"></script>

<script src="assets/js/script.js"></script>


</body>
</html>













