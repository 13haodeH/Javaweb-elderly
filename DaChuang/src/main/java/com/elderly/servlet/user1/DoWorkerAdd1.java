package com.elderly.servlet.user1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.elderly_user;
import com.elderly.entity.worker_user;
import com.elderly.srevice.elderly_userDao;
import com.elderly.srevice.elderly_workerDao;

/**
 * Servlet implementation class DoWorkerAdd
 */
@WebServlet("/manage/doworkeradd1")
public class DoWorkerAdd1 extends HttpServlet {


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String workername = request.getParameter("workerName");
		String workersex = request.getParameter("sex");
		String workerphone = request.getParameter("workerPhone");
		String workerchose = request.getParameter("workerChose");
		String workerstatu = request.getParameter("workerStatu");
		String workermassage = request.getParameter("workerMassage");
		//创建用户实体
		worker_user w = new worker_user(workername,workersex,workerphone,workerchose,workerstatu,workermassage);
		//加入到数据库用户表中
		int count = elderly_workerDao.insert(w);
		
		//成功或失败重新定向
			
			if(count > 0) {
				PrintWriter out = response.getWriter();
				
				out.write("<script>");
				out.write("alert('申请提交成功');");
				out.write("location.href='/DaChuang/Career.jsp';");
				out.write("</script>");
			}else {
				PrintWriter out = response.getWriter();
				
				out.write("<script>");
				out.write("alert('用户添加失败');");
				out.write("location.href='/DaChuang/Career.jsp';");
				out.write("</script>");
			}
	}

}
