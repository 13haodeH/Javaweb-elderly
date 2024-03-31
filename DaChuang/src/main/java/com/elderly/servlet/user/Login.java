package com.elderly.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.elderly.entity.register_user;
import com.elderly.srevice.elderly_userDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		 int count = elderly_userDao.selectByRegister(name,pwd);
		 
		 if(count>0) {
			 HttpSession session= request.getSession();
			 register_user user = elderly_userDao.selectAdmin(name,pwd);
			 
			 session.setAttribute("name", user);
			 session.setAttribute("isLogin", "1");
			 
			 response.sendRedirect("index.jsp");
			 
			 
		 }else {
			 PrintWriter out = response.getWriter();
				
				out.write("<script>");
				out.write("alert('用户登录失败');");
				out.write("location.href='login.jsp'");
				out.write("</script>");
				out.close();
		 }
		
	}

}
