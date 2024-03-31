package com.elderly.servlet.user1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elderly.entity.elderly_user;
import com.elderly.entity.find_user;
import com.elderly.entity.homer_user;
import com.elderly.entity.worker_user;
import com.elderly.srevice.elderly_findDao;
import com.elderly.srevice.elderly_homerDao;
import com.elderly.srevice.elderly_userDao;
import com.elderly.srevice.elderly_workerDao;

/**
 * Servlet implementation class ToFindUpdate
 */
@WebServlet("/manage/admin_tofindupdate")
public class ToFindUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		
		//通过id到数据里查找
		find_user user =  elderly_findDao.selectByID(name);
		
		request.setAttribute("user", user);
		
		request.setAttribute("cpage", request.getParameter("cpage"));
		request.getRequestDispatcher("admin_findmodify.jsp").forward(request, response);
	}

	

}
