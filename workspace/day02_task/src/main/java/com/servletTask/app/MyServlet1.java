package com.servletTask.app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet1
 */
//@WebServlet("/MyServlet1")
public class MyServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyServlet1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		String name = request.getParameter("userName");
//		String age = request.getParameter("userAge");
//
//		System.out.println(name);
//		System.out.println(age);
//
//		response.setContentType("text/html; charset=UTF-8");
//		response.getWriter().println("<h1>GET 요청 처리</h1>");
//		response.getWriter().println("<p>이름 : " + name + "</p>");
//		response.getWriter().println("<p>나이: " + age + "</p>");

		String userName = request.getParameter("Name");
		int userAge = Integer.parseInt(request.getParameter("Age"));
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");
		
		System.out.println(userName);
		System.out.println(userAge);
		System.out.println(gender);
		
		request.setAttribute("Name", userName);
		request.setAttribute("Age", userAge);
		request.setAttribute("gender", gender);
		request.setAttribute("hobbies", hobbies);

		// Forward 요청 처리
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
