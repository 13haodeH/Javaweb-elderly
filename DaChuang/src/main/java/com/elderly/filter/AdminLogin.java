package com.elderly.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AdminLogin
 */
@WebFilter("/manage/*")
public class AdminLogin implements Filter {

    /**
     * Default constructor. 
     */
    public AdminLogin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
					HttpServletRequest req = (HttpServletRequest)request;
					HttpServletResponse resp = (HttpServletResponse)response;
					
					req.setCharacterEncoding("UTF-8");
					resp.setContentType("text/html;charset=UTF-8");
					
					HttpSession session = req.getSession();
					String flag = (String)session.getAttribute("Login");
					
					
					
					String request_uri = req.getRequestURI();// 获取/DaChuang/manage/下的目录
					String ctxpath = req.getContextPath();// 获取/DaChuang/下的目录
					String uri = request_uri.substring(ctxpath.length());// 获取/manage/下的目录
					//System.out.println(request_uri+"##"+ctxpath+"##"+uri+"##"+flag);
					if(uri.contains("admin_")) {
						if(flag != null && flag.equals("1")) {
							chain.doFilter(req, resp);
						}else {
							PrintWriter out = resp.getWriter();
							out.write("<script>");
							out.write("alert('请先登录！');");
							out.write("location.href='login1.jsp';");
							out.write("</script>");
							out.close();
						}
					}else {
						chain.doFilter(req, resp);
					}
					
					return;
					
					
					
					
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
