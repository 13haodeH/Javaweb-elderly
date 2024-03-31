package com.elderly.servlet.user1;

import java.io.IOException;
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
 * Servlet implementation class ToDrugUpdate
 */
@WebServlet("/manage/admin_todrugupdate")
public class ToDrugUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("id");
		
		//通过id到数据里查找
		drug_user user =  elderly_drugDao.selectByID(id);
		
		request.setAttribute("user", user);
		
		request.setAttribute("cpage", request.getParameter("cpage"));
		request.getRequestDispatcher("admin_drugmodify.jsp").forward(request, response);
	}

	

}
