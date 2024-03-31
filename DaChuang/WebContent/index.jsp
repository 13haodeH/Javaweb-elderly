<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>智慧养老服务平台</title>
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


    <section class="banner-section">
        <div class="swiper-container banner-slider">
            <div class="swiper-wrapper">
                <!-- Slide Item -->
                <div class="swiper-slide" style="background-image: url(assets/images/main-slider/banner-1.jpg);">
                    <div class="content-outer">
                        <div class="content-box">
                            <div class="inner">
                                <h4>科技改变世界</h4>
                                <h1>智慧养老服务平台 <br> 伴您前行</h1>
                                <div class="text">智慧养老服务平台让您可以<br>居家养老，智慧养老</div>
                                <div class="link-box">
                                    <a href="#in" class="btn-1 btn-large"  >了解更多信息<span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Slide Item -->
                <div class="swiper-slide" style="background-image: url(assets/images/main-slider/banner-1.jpg);">
                    <div class="content-outer">
                        <div class="content-box">
                            <div class="inner">
                                <h4>科技便利生活</h4>
                                <h1>智慧养老服务平台 <br>提供服务</h1>
                                <div class="text">智慧养老服务平台让您可以康复训练<br>问题咨询，修身养性</div>
                                <div class="link-box">
                                    <a href="#in" class="btn-1 btn-large" >了解更多信息 <span></span></a>
                                </div>
                            </div>                               
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-slider-nav">
            <div class="banner-slider-control banner-slider-button-prev"><span><i class="icon-5"></i></span></div>
            <div class="banner-slider-control banner-slider-button-next"><span><i class="icon-4"></i></span> </div>
        </div>
        <div class="banner-shape"><img src="assets/images/shape/banner-shape.svg" alt=""></div>
    </section>

    <section class="service-1-section">
        <div class="auto-container">
            <div class="section_heading text-center mb_90">
                <span class="section_heading_title_small">智慧养老服务平台</span>
                <h2 class="section_heading_title_big">每个人都值得我们的 <br> 最佳服务</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="service-1-block text-center wow fadeInLeft" data-wow-delay=".2s" data-wow-duration=".8s">
                        <div class="service-1-icon"><i class="icon-6"></i></div>
                        <h4 class="service-1-title">辅助生活</h4>
                        <p class="service-1-text">智慧养老服务平台可以 <br>  更大程度上辅助老人的日常生活<br>让老人享受高质量的智慧服务.</p>
                        <div class="service-1-link"><a href="order.jsp"><i class="icon-4"></i></a></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="service-1-block text-center wow fadeInLeft" data-wow-delay=".2s" data-wow-duration="1s">
                        <div class="service-1-icon"><i class="icon-7"></i></div>
                        <h4 class="service-1-title">健康医疗</h4>
                        <p class="service-1-text">智慧养老服务平台可以提供在线医疗 <br> 在线问诊等的在线服务<br>让老人享受专业且健康的医疗服务.</p>
                        <div class="service-1-link"><a href="order.jsp"><i class="icon-4"></i></a></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="service-1-block text-center wow fadeInLeft" data-wow-delay=".2s" data-wow-duration="1.2s">
                        <div class="service-1-icon"><i class="icon-8"></i></div>
                        <h4 class="service-1-title">居家护理</h4>
                        <p class="service-1-text">智慧养老服务平台可以提供上门护理服务 <br>让老人足不出户就可以<br>享受高质量生活.</p>
                        <div class="service-1-link"><a href="order.jsp"><i class="icon-4"></i></a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-1-section pt-0">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="about-1-image-wrap">
                        <div class="about-1-shape-1"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <div class="about-1-shape-2"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <div class="about-1-image-1"><img src="assets/images/resource/about-1.jpg" alt=""></div>
                        <div class="about-1-video-area" data-parallax='{"y": 30}'>
                            <div class="about-1-video-btn"><a href="assets/video/2.mp4" class="overlay-link play-now ripple" data-fancybox="video-1" data-caption=""><i class="icon-9"></i></a></div>
                            <p class="about-1-video-title">独家观看<br>康复视频</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section_heading mb_20">
                        <span class="section_heading_title_small">智慧养老服务平台</span>
                        <h2 class="section_heading_title_big">我们为您提供<br> <span>专业且健康</span>的康复视频<br> 为老年人打造<span>健康生活</span></h2>
                    </div>
                    <p class="aboout-1-desc">"三分治七分养"源自古代中医治疗理念，时至今日仍有道理，许多疾病通过优良的康复治疗能让疾病得到更好的管理与恢复，尤其是对于患有基础病，慢性病的老人，同时康复训练可以提高老人对战胜疾病的信心，在生理和心理上对疾病本身有一定的治疗作用.</p>
                    <ul class="about-1-list">
                        <li>平台为您提供康复训练视频.</li>
                        <li>平台为您提供自我护理视频.</li>
                        <li>平台为您提供急救知识视频.</li>
                    </ul>
                    <div class="about-1-btn">
                        <a href="video.jsp" class="btn-1">了解更多信息<span></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="fundraise-1-section">
        <div class="auto-container">
            <div class="section_heading text-center mb_90">
                <span class="section_heading_title_small">智慧养老服务平台</span>
                <h2 class="section_heading_title_big">我们关注您的需求<br> 我们帮您解决问题</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="fundraise-1-block wow fadeInLeft" data-wow-delay=".2s" data-wow-duration=".8s">
                        <div class="fundraise-1-image">
                            <img src="assets/images/resource/image-1.jpg" alt="">
                            <div class="fundraise-1-link-btn">
                                <a href="order.jsp" class="btn-1 btn-small">了解更多<span></span></a>
                            </div>
                        </div>
                        <div class="fundraise-1-content">
                            <h4 class="fundraise-1-title">咨询医师</h4>
                            <p class="fundraise-1-text">若您不方便外出行动，距离医院较远，社区医院无法解决您的问题，智慧养老服务平台为您提供在线咨询医师服务</p>
                            <div class="fundraise-1-skill-item">
                                <div class="fundraise-1-skill-bar">
                                    <div class="progressbar-1-outer">
                                        <div class="progressbar-1-inner progress-line" data-width="25">
                                            <div class="progressbar-1-percentage"><div class="count-box"><span class="count-text" data-speed="2000" data-stop="25">0</span>%</div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fundraise-1-price d-flex align-items-center justify-content-between">
                                <div class="fundraise-1-raise">25%的人选择</div>
                                <div class="fundraise-1-target"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="fundraise-1-block wow fadeInLeft" data-wow-delay=".2s" data-wow-duration="1s">
                        <div class="fundraise-1-image">
                            <img src="assets/images/resource/image-2.jpg" alt="">
                            <div class="fundraise-1-link-btn">
                                <a href="order.jsp" class="btn-1 btn-small">了解更多<span></span></a>
                            </div>
                        </div>
                        <div class="fundraise-1-content">
                            <h4 class="fundraise-1-title">上门护理</h4>
                            <p class="fundraise-1-text">若您存在子女工作不在身旁，失能、高龄等问题，需要专业人员照料老人生活，智慧养老服务平台为您提供上门护理服务.</p>
                            <div class="fundraise-1-skill-item">
                                <div class="fundraise-1-skill-bar">
                                    <div class="progressbar-1-outer">
                                        <div class="progressbar-1-inner progress-line" data-width="30">
                                            <div class="progressbar-1-percentage"><div class="count-box"><span class="count-text" data-speed="2000" data-stop="30">0</span>%</div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fundraise-1-price d-flex align-items-center justify-content-between">
                                <div class="fundraise-1-raise">30%的人选择</div>
                                <div class="fundraise-1-target"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="fundraise-1-block wow fadeInLeft" data-wow-delay=".2s" data-wow-duration="1.2s">
                        <div class="fundraise-1-image">
                            <img src="assets/images/resource/image-3.jpg" alt="">
                            <div class="fundraise-1-link-btn">
                                <a href="order.jsp" class="btn-1 btn-small">了解更多<span></span></a>
                            </div>
                        </div>
                        <div class="fundraise-1-content">
                            <h4 class="fundraise-1-title">老年公寓</h4>
                            <p class="fundraise-1-text">若您想安度晚年，享受良好的服务，过着规律的生活，找到志趣相同的伙伴，智慧养老服务平台为您提供在线老年公寓咨询.</p>
                            <div class="fundraise-1-skill-item">
                                <div class="fundraise-1-skill-bar">
                                    <div class="progressbar-1-outer">
                                        <div class="progressbar-1-inner progress-line" data-width="45">
                                            <div class="progressbar-1-percentage"><div class="count-box"><span class="count-text" data-speed="2000" data-stop="45">0</span>%</div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fundraise-1-price d-flex align-items-center justify-content-between">
                                <div class="fundraise-1-raise">45%的人选择</div>
                                <div class="fundraise-1-target"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="why-chooseus-1-section">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-6 pe-lg-5">
                    <div class="section_heading mb_20">
                        <span class="section_heading_title_small">智慧养老服务平台</span>
                        <h2 class="section_heading_title_big">为什么大多数人 <br> <span>选择智慧养老服务平台</span></h2>
                    </div>
                    <p class="why-chooseus-1-text">传统的养老模式旺旺注重医疗护理和物质生活方面的满足，忽略了老人对于精神世界的需求，智慧养老服务平台
                    可以整合周边的养老资源，将这些资源最大化利用，使医养结合更加紧密，为老人生活提供更多保障.</p>
                    <div class="">
                        <div class="why-chooseus-1-block d-flex">
                            <div class="why-chooseus-1-count">1</div>
                            <div class="why-chooseus-1-content flex-grow-1">
                                <h4 class="why-chooseus-1-title mb_15">在家即可安心养老</h4>
                                <p class="why-chooseus-1-text2">年轻人外出工作，忽略了留在家中老人的情感需求 <br> 智慧养老服务平台可以提供更加人性化的服务</p>
                            </div>
                        </div>
                        <div class="why-chooseus-1-block d-flex">
                            <div class="why-chooseus-1-count">2</div>
                            <div class="why-chooseus-1-content flex-grow-1">
                                <h4 class="why-chooseus-1-title mb_15">在家即可咨询医师</h4>
                                <p class="why-chooseus-1-text2">智慧养老服务平台可以整合医疗护理，社区服务人员等的资源<br> 更加保障老人生活安全</p>
                            </div>
                        </div>
                        <div class="why-chooseus-1-block d-flex">
                            <div class="why-chooseus-1-count">3</div>
                            <div class="why-chooseus-1-content flex-grow-1">
                                <h4 class="why-chooseus-1-title mb_15">在家即可康复训练</h4>
                                <p class="why-chooseus-1-text2">智慧养老服务平台提供康复训练视频 <br>在家即可学习康复</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="why-chooseus-1-image text-lg-end">
                        <div class="why-chooseus-1-shape"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <img src="assets/images/resource/image-4.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="video-1-section" id="in">
        <div class="video-1-bg" style="background-image: url(assets/images/background/video-bg.jpg);" data-parallax='{"y": 50}'></div>
        <div class="auto-container">
            <div class="video-1-video-btn" ><a href="assets/video/6.mp4" class="overlay-link play-now ripple" data-fancybox="video-1" data-caption="" ><i class="icon-10"></i></a></div>
        </div>
    </section>

    <section class="team-1-section">
        <div class="auto-container">
            <div class="team-1-wrapper">
                <div class="section_heading text-center mb_70">
                    <span class="section_heading_title_small">智慧养老服务平台</span>
                    <h2 class="section_heading_title_big">我们是一支专业的团队 <br> 成员</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-1-block">
                            <div class="team-1-image">
                                <div class="team-1-shape"></div>                                
                                <div class="team-1-image-wrap"><img src="assets/images/resource/team-1.jpg" alt=""></div>
                                <div class="team-1-share-icon-area">
                                    <ul class="team-1-social-icon">
                                       <li><a href="javascript:void(0);">202113504011</a></li>
                                    </ul>
                                    <div class="team-1-share-icon"><i class="icon-11"></i></div>
                                </div>
                            </div>
                            <h4 class="team-1-title">刘至洋</h4>
                            <p class="team-1-designaiton">工作者</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-1-block">
                            <div class="team-1-image">
                                <div class="team-1-shape"></div>                                
                                <div class="team-1-image-wrap"><img src="assets/images/resource/team-3.jpg" alt=""></div>
                                <div class="team-1-share-icon-area">
                                    <ul class="team-1-social-icon">
                                        <li><a href="javascript:void(0);">202113504006</a></li>
                                    </ul>
                                    <div class="team-1-share-icon"><i class="icon-11"></i></div>
                                </div>
                            </div>
                            <h4 class="team-1-title">陈浩</h4>
                            <p class="team-1-designaiton">工作者</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-1-block">
                            <div class="team-1-image">
                                <div class="team-1-shape"></div>                                
                                <div class="team-1-image-wrap"><img src="assets/images/resource/testimonial-2(1).jpg" alt=""></div>
                                <div class="team-1-share-icon-area">
                                    <ul class="team-1-social-icon">
                                      <li><a href="javascript:void(0);">202113504010</a></li>
                                    </ul>
                                    <div class="team-1-share-icon"><i class="icon-11"></i></div>
                                </div>
                            </div>
                            <h4 class="team-1-title">许嘉璐</h4>
                            <p class="team-1-designaiton">工作者</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-1-block">
                            <div class="team-1-image">
                                <div class="team-1-shape"></div>                                
                                <div class="team-1-image-wrap"><img src="assets/images/resource/testimonial-5(1).jpg" alt=""></div>
                                <div class="team-1-share-icon-area">
                                    <ul class="team-1-social-icon">
                                       <li><a href="javascript:void(0);">202113504004</a></li>
                                    </ul>
                                    <div class="team-1-share-icon"><i class="icon-11"></i></div>
                                </div>
                            </div>
                            <h4 class="team-1-title">彭勇嘉</h4>
                            <p class="team-1-designaiton">工作者</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="testimonial-1-section">
        <div class="auto-container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="section_heading mb_20">
                        <span class="section_heading_title_small">智慧养老服务平台</span>
                        <h2 class="section_heading_title_big">别人 <br> 怎样评价 <br> 智慧养老服务平台</h2>
                    </div>
                    <p class="testimonial-1-desc">随着人口老龄化现状的到来，智慧养老<br> 可以说是一个趋势。智慧养老是个非常大的范畴，<br> 在养老机构里，就有其中很多的终端设备来支撑智慧养老.</p>
                    <div class="slider-nav-style-2 testimonial-1-nav">
                        <div class="slider-control slider-button-prev"><span><i class="icon-5"></i></span></div>
                        <div class="slider-control slider-button-next"><span><i class="icon-4"></i></span> </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="testimonial-1-block-wrap">
                        <div class="testimonial-1-shape-1"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <div class="testimonial-1-shape-2"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <div class="swiper-container two-item-carousel">
                            <div class="swiper-wrapper">
                                <!-- Slide Item -->
                                <div class="swiper-slide">
                                    <div class="testimonial-1-block">
                                        <div class="testimonial-1-author-thumb">
                                            <img src="assets/images/resource/testimonial-1.jpg" alt="">
                                            <div class="testimonial-1-quote-icon"><i class="icon-25"></i></div>
                                        </div>
                                        <p class="testimonial-1-review-desc">“智慧养老是个新鲜事物，未来会越来越成熟，
                                        像手机一样和我们分不开。对于我这个年龄，
                                        我觉得要积极拥抱新鲜事物，
                                        它毕竟是为十年二十年后的我们服务的。”</p>
                                        <div class="testimonial-1-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <h4 class="testimonial-1-name">陈舒婷</h4>
                                        <p class="testimonial-1-designation">老人亲属</p>
                                    </div>
                                </div>
                                <!-- Slide Item -->
                                <div class="swiper-slide">
                                    <div class="testimonial-1-block">
                                        <div class="testimonial-1-author-thumb">
                                            <img src="assets/images/resource/team-12(1).jpg" alt="">
                                            <div class="testimonial-1-quote-icon"><i class="icon-25"></i></div>
                                        </div>
                                        <p class="testimonial-1-review-desc">“智慧养老应该为老年人的生活提供尽可能的便利，比如年纪大的老年人摔跤后，
                                        一般生活的质量都大大下降，
                                        怎么让他们防止那一跤，这就要智慧养老发挥作用了，
                                        你的设备也好、数据也好，都要让老人的摔跤不再悄悄、
                                        无迹象地来到他身边。”</p>
                                        <div class="testimonial-1-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <h4 class="testimonial-1-name">高启强</h4>
                                        <p class="testimonial-1-designation">老人亲属</p>
                                    </div>
                                </div>
                                <!-- Slide Item -->
                                <div class="swiper-slide">
                                    <div class="testimonial-1-block">
                                        <div class="testimonial-1-author-thumb">
                                            <img src="assets/images/resource/testimonial-4.jpg" alt="">
                                            <div class="testimonial-1-quote-icon"><i class="icon-25"></i></div>
                                        </div>
                                        <p class="testimonial-1-review-desc">“首先、健康老年人是不需要的；
                                        其次、失能半失能老人也用不了这个智慧平台；
                                        第三、这个智慧平台只能对身体有点病的老人有用，但是也达不到依赖的程度。
                                        也许有人说，这套系统还可以对老年人进行远程监护。
                                        包括突发性事情、忘了关闭煤气等等。
                                        没错，我并没有说这个智慧平台毫无意义，我只是说它的作用非常有限。”</p>
                                        <div class="testimonial-1-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <h4 class="testimonial-1-name">高启兰</h4>
                                        <p class="testimonial-1-designation">老人亲属</p>
                                    </div>
                                </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="blog-1-section theme-gray-bg">
        <div class="auto-container">
            <div class="section_heading text-center mb_60">
                <span class="section_heading_title_small">智慧养老服务平台</span>
                <h2 class="section_heading_title_big">提供更多急救知识<br>危急时刻急救</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-1-block wow fadeInLeft" data-wow-delay=".2s" data-wow-duration=".8s">
                        <div class="blog-1-image">
                            <img src="assets/images/resource/blog-1.jpg" alt="">
                            <div class="blog-1-date"><span>知识</span><br>急救</div>
                        </div>
                        <div class="blog-1-bottom-content">
                            <h4 class="blog-1-title"><a href="">如何处理食物吞咽时阻塞在食道中</a></h4>
                            <ul class="d-flex blog-1-meta-info">
                                <li><i class="icon-12"></i>用户</li>
                                <li><i class="icon-13"></i>1条评论</li>
                            </ul>
                            <p class="blog-1-excerpt">使用海姆立克急救法进行急救，如需了解请到关爱中心学习.</p>
                            <div class="blog-1-link-btn"><a href="video.jsp" class="btn-1 btn-small">了解更多 <span></span></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="blog-1-block wow fadeInLeft" data-wow-delay=".2s" data-wow-duration=".8s">
                        <div class="blog-1-image">
                           <img src="assets/images/resource/blog-2.jpg" alt="">
                            <div class="blog-1-date"><span>知识</span> <br> 急救</div>
                        </div>
                        <div class="blog-1-bottom-content">
                            <h4 class="blog-1-title"><a href="">如何处理外出出现心慌心悸的情况</a></h4>
                            <ul class="d-flex blog-1-meta-info">
                                <li><i class="icon-12"></i>用户</li>
                                <li><i class="icon-13"></i>1条评论</li>
                            </ul>
                            <p class="blog-1-excerpt">快速转移到安静的环境，调节情绪保持身心愉悦.</p>
                            <div class="blog-1-link-btn"><a href="https://baike.baidu.com/item/%E5%BF%83%E6%82%B8/102232?fromModule=search-result_lemma-recommend" class="btn-1 btn-small">了解更多 <span></span></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInLeft" data-wow-delay=".2s" data-wow-duration=".8s">
                    <div class="blog-1-block">
                        <div class="blog-1-image">
                            <img src="assets/images/resource/blog-3.jpg" alt="">
                            <div class="blog-1-date"><span>知识 </span><br> 急救</div>
                        </div>
                        <div class="blog-1-bottom-content">
                            <h4 class="blog-1-title"><a href="">患有基础性疾病的老人如何在外急救</a></h4>
                            <ul class="d-flex blog-1-meta-info">
                                <li><i class="icon-12"></i>用户</li>
                                <li><i class="icon-13"></i>1条评论</li>
                            </ul>
                            <p class="blog-1-excerpt">随身携带急救药品，速效救心丸、阿司匹林、硝酸甘油等.</p>
                            <div class="blog-1-link-btn"><a href="https://baike.120ask.com/art/386969" class="btn-1 btn-small">了解更多 <span></span></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-1-section pt-lg-0">
        <div class="auto-container">
            <div class="row align-items-center">                
                <div class="col-lg-6 order-lg-2">
                    <div class="section_heading mb_60">
                        <span class="section_heading_title_small">智慧养老服务平台</span>
                        <h2 class="section_heading_title_big">想要了解更多 <br> 智慧养老服务平台?</h2>
                    </div>
                    <div class="contact-form">
                        <form method="post" action="/DaChuang/manage/dohomeadd" id="contact-form">
                            <div class="row clearfix">
                                <div class="form-group col-md-6">
                                    <input type="text" name="homeName" value="" placeholder="请输入您的名字" >
                                </div>
                                
                                <div class="form-group col-md-6">
                                    <input type="text" name="homePhone" value="" placeholder="请输入您的电话号码" >
                                </div>
                                 <div class="form-group col-md-12">
                                    <input type="radio" name="homeType" id="nan" checked="checked" value="老人" ><label for="nan">老人</label>
									<input type="radio" name="homeType" id="nv" value="家属" ><label for="nv">家属</label>
                               		<input type="radio" name="homeType" id="yuan" value="员工" ><label for="yuan">员工</label>
                               		<input type="radio" name="homeType" id="qi" value="企业" ><label for="qi">企业</label>
                                </div>     
                                <div class="form-group col-md-12">
                                    <input type="text" name="homeEmail" value="" placeholder="请输入您的电子邮箱" required>
                                </div>    
                                <div class="form-group col-md-12">
                                    <textarea name="homeMassage" placeholder="备注信息"></textarea>
                                </div>
                                <c:if test="${isLogin==1 }">
                                <div class="form-group col-md-12">
                                    <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                    <button class="btn-1 btn-small" type="submit" data-loading-text="Please wait...">立刻提交 <i class="flaticon-right-arrow-1"></i><span></span></button>
                                </div>
                                </c:if>                            
                            </div>
                        </form>
                        <c:if test="${isLogin!=1 }">
                                <div class="form-group col-md-12">
                                    <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                    <button class="btn-1 btn-small" type="" data-loading-text="Please wait...">请先登录 <i class="flaticon-right-arrow-1"></i><span></span></button>
                                </div>
                                </c:if>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-1-image-wrap">
                        <div class="contact-1-shape-1"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <div class="contact-1-shape-2"><img src="assets/images/shape/pattern-1.png" alt=""></div>
                        <div class="contact-1-image wow fadeInLeft" data-wow-delay=".2s" data-wow-duration=".8s"><img src="assets/images/resource/side-image.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    

<!--Scroll to top-->
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













