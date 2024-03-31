package com.elderly.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.elderly.entity.backstage_user;
import com.elderly.entity.register_user;
import com.elderly.srevice.elderly_userDao;

/**
 * Servlet implementation class login1
 */
@WebServlet("/manage/login1")
public class Login1 extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		 int count = elderly_userDao.selectBybackstage(name,pwd);
		 
		 if(count>0) {
			 HttpSession session= request.getSession();
			 backstage_user user = elderly_userDao.selectbackstage(name,pwd);
			 
			 session.setAttribute("name", user);
			 session.setAttribute("Login", "1");
			 //System.out.println(name+"##"+pwd);
			 response.sendRedirect("admin_index.jsp");
			 
			 
		 }else {
			 PrintWriter out = response.getWriter();
				
				out.write("<script>");
				out.write("alert('用户登录失败');");
				out.write("location.href='login1.jsp'");
				out.write("</script>");
				out.close();
		 }
	}

}
