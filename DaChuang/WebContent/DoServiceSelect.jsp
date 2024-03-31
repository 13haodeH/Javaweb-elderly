package com.elderly.servlet.user1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.homer_user;

import com.elderly.srevice.elderly_homerDao;


/**
 * Servlet implementation class DoHomeSelect
 */
@WebServlet("/manage/admin_dohomeselect")
public class DoHomeSelect extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cpage = 1;
		int count = 5;

		String cp = request.getParameter("cp");
	
		String keyword = request.getParameter("keywords");
		
		if(cp!=null) {
			cpage = Integer.parseInt(cp);
		}
		
		int arr[] = elderly_homerDao.totalPages(count,keyword);
	
		ArrayList<homer_user> list = elderly_homerDao.selectAlls(cpage,count,keyword);
		
		
	
		request.setAttribute("userlist", list);
		request.setAttribute("tsum", arr[0]);
		request.setAttribute("tpage", arr[1]);
		request.setAttribute("cpage", cpage);
		
		if(keyword!=null) {
			request.setAttribute("searchParams", "&keywords="+keyword);
		}
		
		request.getRequestDispatcher("admin_home.jsp").forward(request, response);
		
	} 


}
