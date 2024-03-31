<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>职工招聘</title>
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

    <section class="section-padding">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="service-details">
                        <div class="section_heading mb_30">
                            <span class="section_heading_title_small">智慧养老服务平台</span>
                            <h2 class="section_heading_title_big">如果您想加入我们 <br> 请阅读职位后提交您的信息</h2>
                        </div>
                        <p class="desc mb_45">作为智慧养老服务平台的工作人员，打破了传统的工作模式。当平台出现订单时，工作人员按约定时间上门服务，这样既可以让工作人员有多余的休息时间，也让老人享受到更细心的服务.</p>
                        <!--Accordian Boxed-->
                        <div class="accordian-boxed">
                            <!--Accordian Box-->
                            <ul class="accordion-box alt-2">                            
                                <!--Block-->
                                <li class="accordion block">
                                    <div class="acc-btn"><div class="icon-outer"><span class="far fa-plus"></span> <span class="far fa-minus"></span></div>养老护理员</div>
                                    <div class="acc-content">
                                        <div class="content">
                                            <p class="mb_20"></p>
                                            <h4 class="fs_20 mb_10">职责:</h4>
                                            <p class="service-details-desc mb_30">为老年人提供生活护理、饮食护理、助浴护理、清洁护理、助行护理、代办护理、医疗护理、精神慰藉、文化体育、急救、安全保护、法律援助.</p>
                                            <ul class="service-details-lsit mb_30">
                                                <li>工资：3k-5k</li>
                                                <li>提供五险一金</li>
                                                <li>要求证件齐全</li>
                                            </ul>
                                            
                                        </div>
                                    </div>
                                </li>                           
                                <!--Block-->
                                <li class="accordion block active-block">
                                    <div class="acc-btn active"><div class="icon-outer"><span class="far fa-plus"></span> <span class="far fa-minus"></span></div>陪护员</div>
                                    <div class="acc-content current">
                                        <div class="content">
                                            <p class="mb_20"></p>
                                            <h4 class="fs_20 mb_10">职责:</h4>
                                            <p class="service-details-desc mb_30">在医院、社区或家庭为病人及病人家属提供护理服务，以促进病人尽快康复.</p>
                                            <ul class="service-details-lsit mb_30">
                                                <li>工资：2k-4k</li>
                                                <li>提供五险一金</li>
                                                <li>要求证件齐全</li>
                                            </ul>                                     
                                        </div>
                                    </div>
                                </li>
                                <!--Block-->
                                <li class="accordion block">
                                    <div class="acc-btn"><div class="icon-outer"><span class="far fa-plus"></span> <span class="far fa-minus"></span></div>康复医生</div>
                                    <div class="acc-content">
                                        <div class="content">
                                            <p class="mb_20"></p>
                                            <h4 class="fs_20 mb_10">职责:</h4>
                                            <p class="service-details-desc mb_30">能够综合、协调地运用医疗、教育、社会学等方面的知识，并使用物理因素和方法(包括电、光、热、声响、机械设备和主动活动)，尽可能地为生病、受伤、残废的老年人提供康复和重建服务.</p>
                                            <ul class="service-details-lsit mb_30">
                                                <li>工资：7k-9k</li>
                                                <li>提供五险一金</li>
                                                <li>要求证件齐全</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <!--Block-->
                                <li class="accordion block">
                                    <div class="acc-btn"><div class="icon-outer"><span class="far fa-plus"></span> <span class="far fa-minus"></span></div>心理咨询师</div>
                                    <div class="acc-content">
                                        <div class="content">
                                            <p class="mb_20"></p>
                                            <h4 class="fs_20 mb_10">职责:</h4>
                                            <p class="service-details-desc mb_30">运用心理学和相关知识，遵循心理学原理，通过心理咨询等技术和方法，协助老年人解决心理问题.</p>
                                            <ul class="service-details-lsit mb_30">
                                                <li>工资：5k-6k</li>
                                                <li>提供五险一金</li>
                                                <li>要求证件齐全</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <!--Block-->
                                <li class="accordion block">
                                    <div class="acc-btn"><div class="icon-outer"><span class="far fa-plus"></span> <span class="far fa-minus"></span></div>志愿者</div>
                                    <div class="acc-content">
                                        <div class="content">
                                            <p class="mb_20"></p>
                                            <h4 class="fs_20 mb_10">职责:</h4>
                                            <p class="service-details-desc mb_30">帮助其他工作人员的相关工作.</p>
                                            <ul class="service-details-lsit mb_30">
                                                <li>颁发工作证书</li>
                                                <li>提供餐食补助</li>
                                                <li>要求证件齐全</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <!--Block-->
                                <li class="accordion block">
                                    <div class="acc-btn"><div class="icon-outer"><span class="far fa-plus"></span> <span class="far fa-minus"></span></div>座席人员</div>
                                    <div class="acc-content">
                                        <div class="content">
                                            <p class="mb_20"></p>
                                            <h4 class="fs_20 mb_10">职责:</h4>
                                            <p class="service-details-desc mb_30">居家养老座席值班人员，受理呼叫中心的电话呼入，业务派单等.</p>
                                            <ul class="service-details-lsit mb_30">
                                                <li>工资：2k-2.5k</li>
                                                <li>提供五险一金</li>
                                                <li>要求证件齐全</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>                        
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 ps-lg-60">
                    <div class="appointment-form-widget">
                        <h4 class="event-info-widget-title">怎样联系到您？</h4>
                        <div class="form-alt-2">
                            <form  action="/DaChuang/manage/doworkeradd1"  method="post" id="myform" name="myform" >
                                <div class="form-group"><input type="text" placeholder="请输入您的姓名" name="workerName"></div>
                                <div class="form-group"><input type="radio" name="sex" id="nan" checked="checked" value="T" >男
                                												<input type="radio" name="sex" id="nv" value="F" >女
                                </div>
                                <div class="form-group"><input type="text" placeholder="请输入您的手机号码" name="workerPhone"></div>
                                <div class="form-group"><input type="text" placeholder="请输入您想选择的职位" name="workerChose"></div>
                                <div class="form-group"><input type="radio" name="workerStatu" id="nan" checked="checked"  value="前台申请" >前台申请
                                <div class="form-group"><textarea type="text" placeholder="请输入您的个人简介" name="workerMassage"></textarea></div>
                                <c:if test="${isLogin==1 }">
                                <div class="form-group col-md-12">
                                    <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                    <button class="btn-1 btn-small" type="submit" data-loading-text="Please wait...">立刻提交<i class="flaticon-right-arrow-1"></i><span></span></button>
                                </div>
                                </c:if> 		 
                            </form>  		
                        </div>
                        <c:if test="${isLogin!=1 }">
                                <div class="form-group col-md-12">
                                    <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                    <button class="btn-1 btn-small" type="" data-loading-text="Please wait...">请先登录 <i class="flaticon-right-arrow-1"></i><span></span></button>
                                </div>
                                </c:if>
                    </div>
                </div>
            </div>
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













