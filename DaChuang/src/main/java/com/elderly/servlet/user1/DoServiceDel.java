package com.elderly.servlet.user1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.elderly_user;
import com.elderly.srevice.elderly_homerDao;
import com.elderly.srevice.elderly_serviceDao;
import com.elderly.srevice.elderly_userDao;
import com.elderly.srevice.elderly_workerDao;

/**
 * Servlet implementation class DoServiceDel
 */
@WebServlet("/manage/admin_doservicedel")
public class DoServiceDel extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置字符集
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=utf-8");
				
				String name = request.getParameter("name");
			
				//加入到数据库用户表中
				int count = elderly_serviceDao.del(name);
				
				
				//成功或失败重新定向
					
					if(count > 0) {
						response.sendRedirect("admin_doserviceselect?cp="+request.getParameter("cpage"));
					}else {
						PrintWriter out = response.getWriter();
						
						out.write("<script>");
						out.write("alert('用户删除失败');");
						out.write("location.href='admin_doserviceselect?cp="+request.getParameter("cpage")+"'");
						out.write("</script>");
					}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
