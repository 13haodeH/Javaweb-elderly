package com.elderly.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.elderly_user;
import com.elderly.entity.register_user;
import com.elderly.srevice.elderly_userDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=utf-8");
				
				String name = request.getParameter("userName");
				String pass = request.getParameter("password");
				String repass = request.getParameter("repassword");
				String phone = request.getParameter("phone");
				//创建用户实体
				register_user e = new register_user(name,pass,repass,phone);
				
				//加入到数据库用户表中
				int count = elderly_userDao.insert1(e);
				
				
				//成功或失败重新定向
					
					if(count > 0) {
						response.sendRedirect("login.jsp");
					}else {
						PrintWriter out = response.getWriter();
						
						out.write("<script>");
						out.write("alert('用户注册失败');");
						out.write("location.href='register.jsp';");
						out.write("</script>");
					}
	}

}
