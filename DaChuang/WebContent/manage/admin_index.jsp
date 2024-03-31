<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>智慧养老服务系统后台</title>


<link rel="shortcut icon" href="img/logos.png" type="image/x-icon">
<link rel="icon" href="img/logos.png" type="image/x-icon">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .boss{
            width: 1517px;
            height: 1000px;
            
        }
        .right {
            width: 250px;
            height: 1000px;
            float: left;
        }
        .img1 {
            margin: 70px 90px;
        }
        .manage {
            font-size: 20px;
            margin: -50px 60px;
        }
        .manage1 {
            color: #9B9B9B;
            margin: 60px 90px;
        }
        .btn {
            margin: -30px 50px;
        }
        .btn2 {
            margin: -50px 120px;
        }
        .massage {
            font-size: 14px;
            color: #9B9B9B;
            margin: 80px 20px;
        }
        .massage2 {
            margin: -60px 40px;
        }
        .massage3 {
            margin: 90px 40px;
        }
        .massage4 {
            margin: -60px 40px;
        }
        .a3 {
            text-decoration: none;
            color: #000;
        }
        .a3:hover{
            color: #8A8586;
        }
        .left {
            width: 1267px;
            height: 1500px;
            background-color: #f1f2f7;
            float: left;
        }
        .system {
            font-size: 14px;
            color: #9B9B9B;
            margin: 90px 20px;
        }
        .system1 {
            margin: -70px 40px;
        }
        .system2 {
            margin: 100px 40px;
        }
        .system3 {
            margin: -65px 40px;
        }
        .left_massage {
            font-size: 20px;
            margin: 20px 85px;
        }
        .left_massage2 {
            font-size: 20px;
            margin: 60px 85px;
        }
        span{
            color: #0100FF;
        }
        .left_massage3 {
            width: 1100px;
            height: 950px;
            margin: -15px 85px;
            border-radius: 20px;
            background-color: #fff;
        }
        .left_massage31 {
            font-size: 14px;
              padding: 20px 25px;
        }
        .left_massage32 {
            border: 1px solid #ccc;
            width: 500px;
            height: 100px;
            margin: 10px 25px;
            border-radius: 15px;
        }
        .left_massage322 {
            color: #000;
            position: relative;
            top: -60px;
        }
        .left_massage323 {
            color: #000;
            position: relative;
            top: -25px;
            left: -180px;
            font-weight: 600;
            font-size: 25px;
        }
        .left_massage33 {
            border: 1px solid #ccc;
            width: 500px;
            height: 100px;
            margin: 30px 25px;
            border-radius: 15px;
        }
        .left_massage332 {
            color: #000;
            position: relative;
            top: -60px;
        }
        .left_massage333 {
            color: #000;
            position: relative;
            top: -23px;
            left: -195px;
            font-weight: 600;
            font-size: 25px;
        }
        .left_massage34 {
            border: 1px solid #ccc;
            width: 500px;
            height: 100px;
            margin: 35px 25px;
            border-radius: 15px;
        }
        .left_massage342 {
            color: #000;
            position: relative;
            top: -60px;
        }
        .left_massage343 {
            color: #000;
            position: relative;
            top: -23px;
            left: -165px;
            font-weight: 600;
            font-size: 25px;
        }
        .btn3 {
            float: right;
            margin: 45px 300px;
        }
        .btn4 {
            float: right;
            margin: 40px 300px;
        }
        .btn5 {
            float: right;
            margin: 50px 300px;
        }
        
	.ipt1 {
            height: 45px;
            background-color: #00a1fa;
            color: #fff;
            border-radius: 15px;
        }
        #main {
        	margin: 0px 200px;
        }
        #main1 {
        	margin: 30px 200px;
        }
    </style>
</head>

<body>

        <div class="right">
            <div class="img1">
                <img src="img/13.jpg" alt="" width="50px" >
            </div>
            <div class="manage">
                智慧养老系统
            </div>
            <c:if test="${Login!=1 }">
            <div class="manage1">
                管理员
            </div>
            </c:if>
            <c:if test="${Login==1 }">
            <div class="manage1">
                ${name.USER_NAME }
            </div>
            </c:if>
            <div class="btn"> 
                <a href="admin_index.jsp" class="a1">
                    <img src="img/1.jpg" alt="" title="管理员信息">
                </a>
            </div>
            <div class="btn2">
                <a href="logout1" class="a2">
                    <img src="img/2.jpg" alt="" title="注销">
                </a>
            </div>
            <div class="massage">
                信息管理
            </div>
            <a href="admin_douserselect" class="a3">
            <div class="massage2">
                <img src="img/3.jpg" alt="" width="20px" align="center">
                老年人信息管理
            </div>
            </a>
            <a href="admin_doworkerselect" class="a3">
            <div class="massage3">
                <img src="img/4.jpg" alt="" width="20px" align="center">
                工作人员信息管理
            </div>
            </a>
            <a href="/DaChuang/manage/admin_dodrugselect" class="a3">
            <div class="massage4">
                <img src="img/5.jpg" alt=""  width="20px" align="center">
                药物信息管理
            </div>
            </a>
            <div class="system">
                系统管理
            </div>
            <a href="/DaChuang/manage/admin_dohomeselect" class="a3">
            <div class="system1">
                <img src="img/6.jpg" alt="" width="20px" align="center">
                主页咨询记录
            </div>
            </a>
            <a href="/DaChuang/manage/admin_doserviceselect" class="a3">
            <div class="system2">
                <img src="img/7.jpg" alt="" width="20px" align="center">
                服务订单
            </div>
            </a>
            <a href="/DaChuang/manage/admin_dofindselect" class="a3">
            <div class="system3">
                <img src="img/14.jpg" alt="" width="20px" align="center">
                紧急寻找老人名单
            </div>
            </a>
        </div>
        <div class="left">
            <div class="left_massage">
                智慧养老系统后台
            </div>
            <div class="left_massage2">
                欢迎，<span>智慧养老服务系统</span>
            </div>
            <div class="left_massage3">
                <div class="left_massage31">
                    <div id="map-container"></div>  
                </div>
                    
            </div>
        </div>

    


</body>
</html>
 