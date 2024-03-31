<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改用户</title>
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
            height: 600px;
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
            <form action="/DaChuang/manage/admin_douserupdate" method="post" id="myform" name="myform">
    			<input type="hidden" name="cpage" value="${cpage}">
                
                <table class="t1" border="0" cellspacing="50" width="500px" >
                   <!--第一行	-->
	<tr>
	<td><label for="ID">老人ID：</label></td>
	<td><input type="text" placeholder="请输入老人ID" id="ID" name="userID" style="height: 25px;" value="${user.USER_ID }"></td>
	</tr>
	<tr>
		<td><label for="name">姓名：</label></td>
		<td><input type="text" placeholder="请输入老人姓名" id="name"  name="userName" style="height: 25px;" value="${user.USER_NAME }"> </td>
	</tr>	
	<tr>
	<td>性别：</td>
	<td><input type="radio"  name="sex"  id="nan"  value="男"  ${user.USER_SEX=='男' ? "checked":""}><label for="nan">男</label>
	<input type="radio"  name="sex"  id="nv"  value="女"  ${user.USER_SEX=='女' ? "checked":""} ><label for="nv" >女</label></td>
	</tr>
    <tr>
        <td><label for="num">房间号：</label></td>
        <td><input type="text" placeholder="请输入老人房间号" id="num"  name="number" style="height: 25px;" value="${user.USER_NUM }"></td>
    </tr>
    <tr>
        <td><label for="health">健康状况：</label></td>
        <td><input type="text" placeholder="请输入老人健康状况" id="health"  name="health" style="height: 25px;" value="${user.USER_HEALTH }"></td>
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
