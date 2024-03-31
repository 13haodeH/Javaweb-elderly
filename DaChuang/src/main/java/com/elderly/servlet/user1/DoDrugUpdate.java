package com.elderly.servlet.user1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.drug_user;
import com.elderly.entity.elderly_user;
import com.elderly.srevice.elderly_drugDao;
import com.elderly.srevice.elderly_userDao;

/**
 * Servlet implementation class DoDrugUpdate
 */
@WebServlet("/manage/admin_dodrugupdate")
public class DoDrugUpdate extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=utf-8");
				
				String id = request.getParameter("drugID");
				String name = request.getParameter("drugName");
				String use = request.getParameter("drugUse");
				String price = request.getParameter("drugPrice");
				String num = request.getParameter("drugNum");
				//创建用户实体
				drug_user e = new drug_user(id,name,use,price,num);
				
				//加入到数据库用户表中
				int count = elderly_drugDao.update(e);
				
				
				//成功或失败重新定向
					
					if(count > 0) {
						response.sendRedirect("admin_dodrugselect?cp="+request.getParameter("cpage"));
					}else {
						PrintWriter out = response.getWriter();
						
						out.write("<script>");
						out.write("alert('用户修改失败');");
						out.write("location.href='admin_todrugupdate?id="+id+"'");
						out.write("</script>");
					}
		
	}

}
