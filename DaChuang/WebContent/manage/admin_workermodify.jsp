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
            <form action="/DaChuang/manage/admin_doworkerupdate" method="post" id="myform" name="myform">
    			<input type="hidden" name="cpage" value="${cpage}">
                
                <table class="t1" border="0" cellspacing="50" width="500px" >
                   <!--第一行	-->
	<tr>
	<td><label for="ID">姓名：</label></td>
	<td><input type="text" placeholder="请输入员工姓名" id="ID" name="workerName" style="height: 25px;" value="${user.USER_NAME }"></td>
	</tr>	
	<tr>
	<td>性别：</td>
	<td><input type="radio"  name="sex"  id="nan"  value="T"  ${user.USER_SEX=='T' ? "checked":""}><label for="nan">男</label>
	<input type="radio"  name="sex"  id="nv"  value="F"  ${user.USER_SEX=='F' ? "checked":""} ><label for="nv" >女</label></td>
	</tr>
	<tr>
		<td><label for="name">手机号码：</label></td>
		<td><input type="text" placeholder="请输入手机号码" id="name"  name="workerPhone" style="height: 25px;" value="${user.USER_PHONE }"> </td>
	</tr>
    <tr>
        <td><label for="num">职位：</label></td>
        <td><input type="text" placeholder="请输入职位" id="num"  name="workerChose" style="height: 25px;" value="${user.USER_CHOSE }"></td>
    </tr>
    <tr>
        <td><label for="health">状态：</label></td>
        <td><input type="text" placeholder="请输入员工状态" id="health"  name="workerStatu" style="height: 25px;" value="${user.USER_STATU }"></td>
    </tr>
    <tr>
        <td><label for="health">个人简历：</label></td>
        <td><input type="text" placeholder="请输入员工简历" id="health"  name="workerMassage" style="height: 25px;" value="${user.USER_MASSAGE }"></td>
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
