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
            <form action="/DaChuang/manage/admin_dohomeupdate" method="post" id="myform" name="myform">
    			<input type="hidden" name="cpage" value="${cpage}">
                
                <table class="t1" border="0" cellspacing="50" width="500px" >
                   <!--第一行	-->
	<tr>
	<td><label for="ID">姓名：</label></td>
	<td><input type="text" placeholder="请输入姓名" id="ID" name="homeName" style="height: 25px;" value="${user.HOMER_NAME }"></td>
	</tr>	
	
	<tr>
		<td><label for="name">手机号码：</label></td>
		<td><input type="text" placeholder="请输入手机号码" id="name"  name="homePhone" style="height: 25px;" value="${user.HOMER_PHONE }"> </td>
	</tr>
	<tr>
	<td>人员类型：</td>
	<td><input type="radio"  name="homeType"  id="nan"  value="老人"  ${user.HOMER_TYPE=='老人' ? "checked":""}><label for="nan">老人</label>
	<input type="radio"  name="homeType"  id="nv"  value="家属"  ${user.HOMER_TYPE=='家属' ? "checked":""} ><label for="nv" >家属</label>
	<input type="radio"  name="homeType"  id="a"  value="员工"  ${user.HOMER_TYPE=='员工' ? "checked":""} ><label for="a" >员工</label>
	<input type="radio"  name="homeType"  id="b"  value="企业"  ${user.HOMER_TYPE=='企业' ? "checked":""} ><label for="b" >企业</label>
	</td>
	</tr>
    <tr>
        <td><label for="num">邮箱：</label></td>
        <td><input type="text" placeholder="请输入邮箱" id="num"  name="homeEmail" style="height: 25px;" value="${user.HOMER_EMAIL }"></td>
    </tr>
    <tr>
        <td><label for="health">备注信息：</label></td>
        <td><input type="text" placeholder="请输入备注信息" id="health"  name="homeMassage" style="height: 25px;" value="${user.HOMER_MASSAGE }"></td>
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
