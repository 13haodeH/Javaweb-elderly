<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改订单</title>
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
            width: 500px;
            height: 650px;
            background-color: #fff;
            position: relative;
            top: 80px;
            left: 500px;
            border-radius: 20px;
        }
        .t1 {
            position: relative;
            font-size: 20px;
            top: 20px;
        }
    </style>
</head>

<body>
    <div class="boss">
        <div class="center">
            <form action="/DaChuang/manage/admin_doserviceupdate" method="post" id="myform" name="myform">
    			<input type="hidden" name="cpage" value="${cpage}">
                
                <table class="t1" border="0" cellspacing="50" width="500px" >
                   <!--第一行	-->
	<tr>
	<td><label for="ID">姓名：</label></td>
	<td><input type="text" placeholder="请输入姓名" id="ID" name="serviceName" style="height: 25px;" value="${user.SERVICE_NAME }"></td>
	</tr>	
	<tr>
	<td><label for="age">年龄：</label></td>
	<td><input type="text" placeholder="请输入年龄" id="age" name="serviceAge" style="height: 25px;" value="${user.SERVICE_AGE }"></td>
	</tr>	
	
	<tr>
		<td><label for="name">手机号码：</label></td>
		<td><input type="text" placeholder="请输入手机号码" id="name"  name="servicePhone" style="height: 25px;" value="${user.SERVICE_PHONE }"> </td>
	</tr>
	<tr>
	<td>人员类型：</td>
	<td><input type="radio"  name="serviceType"  id="nan"  value="老人"  ${user.SERVICE_TYPE=='老人' ? "checked":""}><label for="nan">老人</label>
	<input type="radio"  name="serviceType"  id="nv"  value="家属"  ${user.SERVICE_TYPE=='家属' ? "checked":""} ><label for="nv" >家属</label>
	<input type="radio"  name="serviceType"  id="b"  value="其他"  ${user.SERVICE_TYPE=='其他' ? "checked":""} ><label for="b" >其他</label>
	</td>
	</tr>
    <tr>
        <td><label for="health">所需服务：</label></td>
        <td><input type="text" placeholder="请输入所需服务" id="health"  name="serviceWhat" style="height: 25px;" value="${user.SERVICE_WHAT}"></td>
    </tr>
    <tr>
        <td>
        <input type="submit" value="点击修改" style="width: 90px;height: 50px;position: relative;left: 150px;top: 10px;">
        </td> 
    </tr>  
                </table>        
            </form>
        </div>
    
    </div>
    
</body>
</html>
