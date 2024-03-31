package com.elderly.servlet.user1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.drug_user;
import com.elderly.entity.elderly_user;
import com.elderly.entity.service_user;
import com.elderly.srevice.elderly_drugDao;
import com.elderly.srevice.elderly_serviceDao;
import com.elderly.srevice.elderly_userDao;

/**
 * Servlet implementation class DoServiceSelect
 */
@WebServlet("/manage/admin_doserviceselect")
public class DoServiceSelect extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int cpage = 1;//当前页
		int count = 5;//每页显示条数
		
		//获取用户指定的页面
		String cp = request.getParameter("cp");
		
		//接受用户搜索的关键字
		String keyword = request.getParameter("keywords");
		
		if(cp!=null) {
			cpage = Integer.parseInt(cp);
		}
		
		int arr[] = elderly_serviceDao.totalPage(count,keyword);
		
		//获取所有用户记录
		ArrayList<service_user> list = elderly_serviceDao.selectAll(cpage,count,keyword);
		
		
		//放到请求对象域里
		request.setAttribute("userlist", list);
		request.setAttribute("tsum", arr[0]);
		request.setAttribute("tpage", arr[1]);
		request.setAttribute("cpage", cpage);
		
		if(keyword!=null) {
			request.setAttribute("searchParams", "&keywords="+keyword);
		}
		
		request.getRequestDispatcher("admin_service.jsp").forward(request, response);
		
	}


}
