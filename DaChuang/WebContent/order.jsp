<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>订单中心</title>
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

    <section class="section-padding gray-bg">
        <div class="auto-container">  
            <div class="section_heading text-center mb_40">
                <span class="section_heading_title_small">智慧养老服务平台</span>
                <h2 class="section_heading_title_big">您需要什么服务？<br>将信息提交到平台，平台会与您联系</h2>
            </div>          
            <div class="form-alt-3">
                <form method="post" action="/DaChuang/manage/doserviceadd" id="contact-form">
                    <div class="row clearfix">
                        <div class="form-group col-md-6">
                            <input type="text" name="serviceName" value="" placeholder="请输入您姓名" required>
                        </div>
                        
                        <div class="form-group col-md-6">
                            <input type="text" name="serviceAge" value="" placeholder="请输入您年龄" required>
                        </div>

                        <div class="form-group col-md-12">
                            <input type="text" name="servicePhone" value="" placeholder="请输入您的电话号码" required>
                        </div>
                        <div class="form-group col-md-12">
                          <input type="radio" name="serviceType" id="nan" checked="checked" value="老人" ><label for="nan">老人</label>
									<input type="radio" name="serviceType" id="nv" value="家属" ><label for="nv">家属</label>            
                               		<input type="radio" name="serviceType" id="qi" value="其他" ><label for="qi">其他</label>
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="serviceWhat" placeholder="请输入您需要的服务及情况"></textarea>
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













