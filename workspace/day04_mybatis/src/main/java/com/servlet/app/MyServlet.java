package com.servlet.app;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

/**
 * Servlet implementation class Myservlet
 */
//@WebServlet("/Myservlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		
		
		request.setAttribute("id", id);
		request.setAttribute("pw", pw);
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("gender", gender);
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(age);
		System.out.println(gender);
//		request.getRequestDispatcher("result.jsp").forward(request, response);
		
		// sqlSessionFactory의 openSession()을 사용하면 sqlSession을 가져온다
		// 반환타입 확인하기!!
		// openSession()에 true를 넣어줘야 auto commut이 된다
		SqlSession sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
		
		// ++++++++++++++++++++++++++
		// UserMapper에 넘겨줄 map 만들기
		Map<String, String> userMap = new HashMap<>();
		userMap.put("userId", request.getParameter("id"));
		userMap.put("userPw", request.getParameter("pw"));
		userMap.put("userName", request.getParameter("name"));
		userMap.put("userAge", request.getParameter("age"));
		userMap.put("userGender", "M");
		// ++++++++++++++++++++++++++
		
		// sqlSession에는 insert, select, update, delete 메소드가 존재한다(crud)
		// 매개변수로 미리 작성한 sql문의 쿼리를 알려주면 된다
		// sql문 mapper.xml 파일에 작성되어야 한다(아직 없으므로 만들러 간다)
		sqlSession.insert("user.join", userMap);
		
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
