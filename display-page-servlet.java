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
@WebServlet("/display")
public class Display extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		PrintWriter out = res.getWriter();
		HttpSession session = req.getSession();
		//HERE ANOTHER SERVLET MAY SEND ANY NO OF COOKIES SO THE RETURN TYPE FOR GETTING THEM IS []
//		Cookie[] cookie = req.getCookies();
//		String name = "";
//		for(Cookie c : cookie) {
//				if(c.getName().equals("name"))
//					name = c.getValue();
//		}
		//out.println(session.getAttribute("conf"));
		if(session.getAttribute("conf")!= null)
			out.println("Mail Mismatch!");
		else {
			out.println("Welcome "+session.getAttribute("name")+".");//FOR using the name frome COOKIES USE "name" in print
			out.println();
			out.println("Your Email is Confirmed!");
//			RequestDispatcher rd = req.getRequestDispatcher("in");
//			rd.forward(req, res);
		}
		
		
	}
}
