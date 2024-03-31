package com.elderly.servlet.user1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.elderly_user;
import com.elderly.entity.homer_user;
import com.elderly.entity.service_user;
import com.elderly.entity.worker_user;
import com.elderly.srevice.elderly_homerDao;
import com.elderly.srevice.elderly_serviceDao;
import com.elderly.srevice.elderly_userDao;
import com.elderly.srevice.elderly_workerDao;

/**
 * Servlet implementation class DoServiceUpdate
 */
@WebServlet("/manage/admin_doserviceupdate")
public class DoServiceUpdate extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=utf-8");
				String name = request.getParameter("serviceName");
				String age= request.getParameter("serviceAge");
				String phone = request.getParameter("servicePhone");
				String type = request.getParameter("serviceType");
				String what = request.getParameter("serviceWhat");
			//创建用户实体
				service_user w = new service_user(name,age,phone,type,what);
				
				//加入到数据库用户表中
				int count = elderly_serviceDao.update(w);
				
				
				//成功或失败重新定向
					
					if(count > 0) {
						response.sendRedirect("admin_doserviceselect?cp="+request.getParameter("cpage"));
					}else {
						PrintWriter out = response.getWriter();
						
						out.write("<script>");
						out.write("alert('用户修改失败');");
						out.write("location.href='admin_toserviceupdate?name="+name+"'");
						out.write("</script>");
					}
		
	}

}
