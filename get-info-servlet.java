package com.tomcat_test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/get")
public class GetDetails extends HttpServlet {
public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String name = req.getParameter("name");
		String mail = req.getParameter("mail");
		String conf = req.getParameter("cmail");
		//String ph = req.getParameter("ph");
// SENDING DATA THROUGH REQ OBJECT
//		req.setAttribute("name", name);
//		req.setAttribute("mail", mail);
//		req.setAttribute("ph", ph);
//		if(!mail.equals(conf))
//				req.setAttribute("conf", conf);
//		RequestDispatcher rd = req.getRequestDispatcher("display");
//		rd.forward(req, res);

// SENDING DATA THROUGH SESSION
		HttpSession session = req.getSession();
		session.setAttribute("name", name);
		if(!mail.equals(conf))
			session.setAttribute("conf", conf);
// BUT THERE IS A DRAWBACK IN USING SESSIONS ONLY
// WE CAN DELETE ATTRIBUTES IN THE SESSION FROM ANOTHER SERVLET AS WELL
// IT WILL LEAD TO NULL POINTERS, SO WE USE COOKIES
//		Cookie cookie = new Cookie("name",name); 
//		res.addCookie(cookie);
		res.sendRedirect("disp.jsp"); 
	}
}
