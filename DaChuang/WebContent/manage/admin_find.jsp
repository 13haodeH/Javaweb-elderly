<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>紧急寻找老人名单管理</title>
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
            height: 1400px;
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
            margin: 50px 85px;
        }
            .left_massage3 {
                font-size: 14px;
                margin: -45px 85px;
            }
            .left_massage4 {
                width: 1100px;
                height: 200px;
                border-radius: 15px;
                margin: 70px 85px;
                background: url("img/image1.jpg");
                background-position: center;
            }
            .left_massage41 {
                padding: 20px 500px;
                font-weight: 600;
                font-size: 30px;
                color: #000;
            }
            .left_massage42 {
                padding: 10px 380px;
            }
            .left_massage5 {
                width: 1100px;
                margin: -40px 85px;
                height: 700px;
                border-radius: 15px;
                background-color: #fff;
            }
            .table1 {
                padding: 40px 40px;
                font-size: 14px;
            }
            .left_massage51 {
                float: right;
                margin: -290px 360px;
            }
            .left_massage51 a {
                text-decoration: none;
                color: #0036F5;
            }
            .left_massage51 a:hover {
                color: #9C9C9C;
            }
            .left_massage51 a span {
                font-weight: 600;
            }
            .left_massage52 {
                margin: 60px 430px;
            }
            .table1 a {
                text-decoration: none;
                color: #0036F5;
            }
            .table1 a:hover{
                color: #9C9C9C;
            }
             .left_massage52  a {
            	 text-decoration: none;
                color: #0036F5;
             }
             .left_massage52  a:hover {
            	color: #9C9C9C;
             }
        </style>
</head>

<body>
     <div class="boss">
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
            <a href="/DaChuang/manage/admin_douserselect" class="a3">
            <div class="massage2">
                <img src="img/3.jpg" alt="" width="20px" align="center">
                老年人信息管理
            </div>
            </a>
            <a href="/DaChuang/manage/admin_doworkerselect" class="a3">
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
                信息管理
            </div>
            <div class="left_massage3">
                丢失老人名单信息管理&nbsp;&nbsp;/&nbsp;&nbsp;信息查询&nbsp;&nbsp;/&nbsp;&nbsp;信息添加&nbsp;&nbsp;/&nbsp;&nbsp;信息修改&nbsp;&nbsp;/&nbsp;&nbsp;信息删除
            </div>
            <div class="left_massage4">
             <form action="/DaChuang/manage/admin_dofindselect" method="get">
                <div class="left_massage41">搜索</div>
                <div class="left_massage42">
                    <input type="text" style="width: 300px;height: 40px" placeholder="请输入您要查询老人的名字..." name="keywords" value="${param.keywords}">
                    <input type="submit" value="查询" style="width: 50px;height: 40px; position: relative;left: 320px;top: -42px;">
                </div>
                </form>
            </div>
            <div class="left_massage5">
                <table border="0" width="1200px" class="table1" cellspacing="30px">
                    <tr>
                        <td width="100px">老人姓名</td>
                        <td width="100px">老人年龄</td>
                        <td width="100px">监护人手机号码</td>
                        <td width="100px">丢失位置</td>
                        <td width="100px">相貌等特征</td>
                    </tr>
                    
                    <c:forEach var="u" items="${userlist}">
                    <tr>
                        <td>${u.FIND_NAME}</td>
                        <td>${u.FIND_AGE}</td>
                        <td>${u.FIND_PHONE}</td>
                        <td>${u.FIND_POSITION}</td>
                        <td>${u.FIND_FEATURES}</td>
                        <td width="100px"><a href="admin_tofindupdate?name=${u.FIND_NAME}&cpage=${cpage}">点击修改</a></td>
                        <td width="100px"><a href="javascript:Delete('你确定要删除【${u.FIND_NAME} 】吗？','admin_dofinddel?name=${u.FIND_NAME}&cpage=${cpage}')">点击删除</a></td>
                    </tr>
                     </c:forEach>
                     <script>
       				 function Delete(mess,url){
          			  if(confirm(mess)){
               		 location.href=url;
          	  }
      	  }
   					 </script>
                     
                </table>
            </div>
           
                <div class="left_massage52"> 
                共${tsum}条记录，当前是${cpage}/${tpage}页
                <a href="admin_dofindselect?cp=1${searchParams}">首页</a>
                <a href="admin_dofindselect?cp=${cpage-1 < 1 ?1:cpage-1}${searchParams}">上一页</a>
                <a href="admin_dofindselect?cp=${cpage+1> tpage ?tpage:cpage+1}${searchParams}">下一页</a>
                <a href="admin_dofindselect?cp=${tpage}${searchParams}">尾页</a>
            </div>
        </div>
    </div>
</body>
</html>
