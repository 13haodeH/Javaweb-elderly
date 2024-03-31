<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
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
            width: 750px;
            height: 650px;
            background-color: #fff;
            position: relative;
            top: 80px;
            left: 350px;
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
        .error {
            display: inline-block;
            color: #FF0004;
        }
        .img1 {
        	position: relative;
        	top:7px;
        }
    </style>
    <script src="js/jquery-1.12.4.min.js"></script>
    <script>
    //验证码
       function change(img){
    	   img.src="getcode?"+new Date().getTime();
       }
       $(function () {
    	    // 定义开关变量
    	    var flagUser=false
    	    var flagPwd=false
    	    var flagCpwd=false
    	    var flagEmail=false
    	    var flagCode=false
    	    var $submit=$('#myform')

    	    // 找到所在标签元素
    	    var $userName = $('#userName')
    	    var $password=$('#password')
    	    var $repassword=$('#repassword')
    	    var $phone=$('#phone')
    	    var $veryCode=$('#veryCode')

    	    // 1.如果失去焦点，则进行检查判断用户名是否合法
    	    $userName.blur(function () {
    	        // 封装函数 调用函数
    	        fnCheckUser()
    	    })
    	    function fnCheckUser() {
    	        // 获取用户输入的数据
    	        var vals = $userName.val()
    	        // 正则，正则验证用户输入的数据是否合法
    	        var re = /^\w{6,20}$/

    	        if (vals == '') {
    	            $userName.next().show().html('用户名不能为空!')
    	            $userName.next().addClass('error')
    	            flagUser=false
    	            return
    	        }
    	        else {
    	            // 合法 -- 隐藏报错信息
    	            $userName.next().hide()
    	            flagUser=true
    	        } 
    	    }

    	        // 2.如果密码框失去焦点，则进行检查判断密码是否合法
    	    $password.blur(function(){
    	        // 封装函数，调用函数
    	        fnCheckPwd()
    	    })
    	    function fnCheckPwd(){
    	        // 获取密码框输入的数据
    	        var vals=$password.val()
    	        // 如果输入框为空，则提示不能为空并return
    	        if (vals==''){
    	            $password.next().show().html('密码不能为空!')
    	            $password.next().addClass('error')
    	            flagPwd=false
    	            return
    	        }
    	        else
    	        {
    	            // 如果匹配成功，则隐藏span标签
    	            $password.next().hide()
    	            flagPwd=true
    	        }   
    	    }

    	    // 3.判断两次输入的密码是否一致
    	    $repassword.blur(function(){
    	        // 封装函数，调用函数
    	        fnCheckCpwd()
    	    })
    	    function fnCheckCpwd(){
    	        // 获取重复密码框输入的数据
    	        var vals=$password.val()
    	        var cvals=$repassword.val()
    	        if(cvals==''){
    	            $repassword.next().show().html('重复密码框不能为空!')
    	            $repassword.next().addClass('error')
    	            flagCpwd=false
    	            return  
    	        }
    	        else if (vals!=cvals){
    	            $repassword.next().show().html('两次密码输入不一致!')
    	            $repassword.next().addClass('error')
    	            flagCpwd=false
    	            return
    	        }
    	        else{
    	            $repassword.next().hide()
    	            flagCpwd=true
    	        }
    	    }

    	    // 4.如果邮箱框失去焦点，则进行检查判断邮箱是否合法
    	    $phone.blur(function(){
    	        // 封装函数，调用函数
    	        fnCheckPhone()
    	    })
    	    function fnCheckPhone(){
    	        // 获取手机号框输入的数据
    	        var vals=$phone.val()
    	        
    	        // 如果输入框为空，则提示不能为空并return
    	        if (vals==''){
    	            $phone.next().show().html('手机号不能为空！')
    	            $phone.next().addClass('error')
    	            flagEmail=false
    	            return
    	        }else{
    	        	$phone.next().hide()
    	            flagEmail=true
    	        }
    	       
    	    }

    	 // 4.如果验证码框失去焦点，则进行检查判断验证码是否合法
    	    $veryCode.blur(function(){
    	        // 封装函数，调用函数
    	        fnCheckCode()
    	    })
    	    function fnCheckCode(){
    	        // 获取验证码框输入的数据
    	        var vals=$veryCode.val()	  
    	        // 如果输入框为空，则提示不能为空并return
    	        if (vals==''){
    	        	$veryCode.next().next().show().html('验证码不能为空！')
    	        	 $veryCode.next().next().addClass('error')
    	            flagCode=false 
    	            return
    	        }else{
    	        	var url = "checkusernum?num="+encodeURI($veryCode.val())+"&"+new Date().getTime();
    	        	$.get(url, function (date) {
        				if(date == "false") {
        					$veryCode.next().next().show().html('验证码输入有误！')
        					 $veryCode.next().next().addClass('error')
                			flagCode = false;
        					return
        				}else{
        					$veryCode.next().next().hide()
            	            flagCode=true;
        					
        				}
        				
        			});
    	        }
    	       
    	    }
    	    

    	    // 6.所有输入框验证通过再提交注册
    	    $submit.submit(function(){
    	        if(flagUser && flagPwd && flagCpwd && flagEmail && flagCode){
    	            alert('注册成功')
    	        }
    	        else{
    	            alert("注册失败")
    	            return false
    	        }
    	    })
    	})

    	
    </script>
</head>

<body>
    <div class="boss">
        <div class="center">
            <div class="title">
     <h4>智慧养老系统前台</h4>
    <h5>注册</h5>
            </div>
            <form action="register" name="myform" id="myform" method="post" onsubmit="return checkForm(this)">
                <table class="t1" border="0" cellspacing="40" width="750px">
                   <!--第一行	-->
	<tr>
	<td width="100px"><label for="ID">用户名：</label></td>
        <td><input type="text" placeholder="请输入用户名" id="userName" style="height: 25px;" name="userName" >&nbsp;&nbsp;<span></span>
        </td>
       
	</tr>
	<tr>
		<td><label for="name">密码：</label></td>
		<td><input type="password" placeholder="请输入密码" id="password"  class="password" style="height: 25px;" name="password"  >&nbsp;&nbsp;<span></span></td>
     
	</tr>	
	<tr>
	<td>确认密码：</td>
	<td><input type="password"  id="repassword" style="height: 25px;" placeholder="请再次输入密码" name="repassword" >&nbsp;&nbsp;<span></span></td>
        
	</tr>
    <tr>
        <td><label for="num">手机号码：</label></td>
        <td><input type="text" placeholder="请输入手机号码"  name="phone" style="height: 25px;" id="phone" >&nbsp;&nbsp;<span></span></td>
        
    </tr>
    <tr>
        <td><label for="health">验证码：</label></td>
        <td><input type="text" placeholder="点击图片刷新验证码"  style="height: 25px;" name="veryCode"  id="veryCode">
        <img src="getcode" alt="看不清，换一张"  height="25px"  class="img1" onclick="change(this)">&nbsp;&nbsp;<span></span>
        </td>
        
    </tr>
                </table> 
         <input type="submit" value="点击注册" class="btn">
            </form>
            <div class="login">已有账号？<a href="login.jsp">点击登录</a></div>
        </div>
    
    </div>
    
</body>
 
</html>
