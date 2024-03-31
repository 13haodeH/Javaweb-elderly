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
            <form action="/DaChuang/manage/admin_dodrugupdate" method="post" id="myform" name="myform">
    			<input type="hidden" name="cpage" value="${cpage}">
                
                <table class="t1" border="0" cellspacing="50" width="500px" >
                   <!--第一行	-->
	<tr>
	<td><label for="ID">药物ID：</label></td>
	<td><input type="text" placeholder="请输入药物ID" id="ID" style="height: 25px;" name="drugID" value="${user.DRUG_ID }"></td>
	</tr>
	<tr>
		<td><label for="name">药物名称：</label></td>
		<td><input type="text" placeholder="请输入药物名称" id="name" style="height: 25px;" name="drugName" value="${user.DRUG_NAME }"> </td>
	</tr>	
	<tr>
	<td>药物用途：</td>
	<td>
	<input type="text" placeholder="请输入药物用途" id="name" style="height: 25px;" name="drugUse" value="${user.DRUG_USE }"> 
	</td>
	</tr>
    <tr>
        <td><label for="num">药物价格：</label></td>
        <td><input type="text" placeholder="请输入药物价格" id="num" style="height: 25px;" name="drugPrice" value="${user.DRUG_PRICE }"></td>
    </tr>
    <tr>
        <td><label for="health">药物规格：</label></td>
        <td><input type="text" placeholder="请输入药物规格" id="health" style="height: 25px;" name="drugNum" value="${user.DRUG_NUM }"></td>
    </tr>
    <tr>
        <td>
        <input type="submit" value="点击增加" style="width: 90px;height: 50px;position: relative;left: 150px;top: 10px;">
        </td> 
    </tr>   
                </table>        
            </form>
        </div>
    
    </div>
    
</body>
</html>
