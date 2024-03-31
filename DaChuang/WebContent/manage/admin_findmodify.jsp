<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改信息</title>
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
            <form action="/DaChuang/manage/admin_dofindupdate" method="post" id="myform" name="myform">
    			<input type="hidden" name="cpage" value="${cpage}">
                
                <table class="t1" border="0" cellspacing="50" width="500px" >
                   <!--第一行	-->
	<tr>
	<td><label for="ID">老人姓名：</label></td>
	<td><input type="text" placeholder="请输入老人姓名" id="ID" name="findName" style="height: 25px;" value="${user.FIND_NAME }"></td>
	</tr>	
	
	<tr>
		<td><label for="name">老人年龄：</label></td>
		<td><input type="text" placeholder="请输入老人年龄" id="name"  name="findAge" style="height: 25px;" value="${user.FIND_AGE }"> </td>
	</tr>
	<tr>
	<td><label for="namea">监护人手机号码：</label></td>
	<td>
	<input type="text" placeholder="请输入监护人手机号码" id="namea"  name="findPhone" style="height: 25px;" value="${user.FIND_PHONE}">
	</td>
	</tr>
    <tr>
        <td><label for="num">丢失位置：</label></td>
        <td><input type="text" placeholder="请输入丢失位置" id="num"  name="findPosition" style="height: 25px;" value="${user.FIND_POSITION }"></td>
    </tr>
    <tr>
        <td><label for="health">相貌等特征：</label></td>
        <td><input type="text" placeholder="请输入老人相貌等的特征" id="health"  name="findFeatures" style="height: 25px;" value="${user.FIND_FEATURES }"></td>
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
