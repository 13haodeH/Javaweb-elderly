<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>用户登录</title>
     <link rel="shortcut icon" href="manage/img/logos.png" type="image/x-icon">
<link rel="icon" href="manage/img/logos.png" type="image/x-icon">
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        .boss {
            width: 1517px;
            height: 900px;
            background-color: #f1f2f7;
        }
        .center {
            width: 650px;
            height: 450px;
            background-color: #fff;
            position: relative;
            top: 80px;
            left: 450px;
            border-radius: 20px;
        }
        .t1 {
            position: relative;
            font-size: 20px;
            top: -45px;
            left: 100px;
        }
        .title {
            padding: 30px 220px;
        }
        h4 {
            font-size: 25px;
            font-weight: 400;
        }
        h5 {
            font-size: 15px;
            font-weight: 400;
            padding: 15px 85px;
        }
        .btn {
        width: 200px;
		height: 34px;
		background-color: #004deb;
		color: #fff;
		font-size: 14px;
		position: relative;
            left: 210px;
            top: -40px;
        }
        .login {
            position: relative;
            left: 240px;
        }
        .login a {
            text-decoration: none;
            color: #0036F5;
        }
        .login a:hover {
              color: #9C9C9C;
        }
    </style>
</head>

<body>
    <div class="boss">
        <div class="center">
            <div class="title">
     <h4>智慧养老系统前台</h4>
    <h5>登录</h5>
            </div>
            <form action="login" method="post" name="frm" id="frm">
                <table class="t1" border="0" cellspacing="40" width="650px">
                   <!--第一行	-->
	<tr>
	<td width="100px"><label for="ID">用户名：</label></td>
        <td><input type="text" placeholder="请输入用户名" id="name"  name="name" style="height: 25px;">&nbsp;&nbsp;<span></span>
        </td>
       
	</tr>
	<tr>
		<td><label for="name">密码：</label></td>
		<td><input type="password" placeholder="请输入密码" id="pwd" name="pwd"  style="height: 25px;"> <span></span></td>
     
	</tr>	
	
                </table> 
         <input type="submit" value="点击登录" class="btn">
            </form>
            <div class="login">没有账号？<a href="register.jsp">点击注册</a></div>
        </div>
    
    </div>
    
</body>
</html>
