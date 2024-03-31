package com.elderly.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.elderly_user;
import com.elderly.srevice.elderly_userDao;

/**
 * Servlet implementation class DoUserUpdate
 */
@WebServlet("/manage/admin_douserupdate")
public class DoUserUpdate extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=utf-8");
				
				String userid = request.getParameter("userID");
				String username = request.getParameter("userName");
				String usersex = request.getParameter("sex");
				String usernum = request.getParameter("number");
				String userhealth = request.getParameter("health");
				//创建用户实体
				elderly_user e = new elderly_user(userid,username,usersex,usernum,userhealth);
				
				//加入到数据库用户表中
				int count = elderly_userDao.update(e);
				
				
				//成功或失败重新定向
					
					if(count > 0) {
						response.sendRedirect("admin_douserselect?cp="+request.getParameter("cpage"));
					}else {
						PrintWriter out = response.getWriter();
						
						out.write("<script>");
						out.write("alert('用户修改失败');");
						out.write("location.href='admin_touserupdate?id="+userid+"'");
						out.write("</script>");
					}
		
	}

}
