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
import com.elderly.entity.worker_user;
import com.elderly.srevice.elderly_homerDao;
import com.elderly.srevice.elderly_userDao;
import com.elderly.srevice.elderly_workerDao;

/**
 * Servlet implementation class DoHomeAdd
 */
@WebServlet("/manage/dohomeadd")
public class DoHomeAdd extends HttpServlet {


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String name = request.getParameter("homeName");
		String phone = request.getParameter("homePhone");
		String type = request.getParameter("homeType");
		String email = request.getParameter("homeEmail");
		String massage = request.getParameter("homeMassage");
	//创建用户实体
		homer_user w = new homer_user(name,phone,type,email,massage);
		//加入到数据库用户表中
		int count = elderly_homerDao.add(w);
		
		//成功或失败重新定向
			
			if(count > 0) {
				PrintWriter out = response.getWriter();
				
				out.write("<script>");
				out.write("alert('申请提交成功');");
				out.write("location.href='/DaChuang/index.jsp';");
				out.write("</script>");
			}else {
				PrintWriter out = response.getWriter();
				
				out.write("<script>");
				out.write("alert('申请提交失败');");
				out.write("location.href='/DaChuang/index.jsp';");
				out.write("</script>");
			}
	}

}
