package com.example.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.app.Result;

/**
 * Servlet implementation class MemberFrontController
 */
@WebServlet("/MemberFrontController")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberFrontController() {
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
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}

	// get과 post를 구분하지 않고 사용할 것이다
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("member 서블릿 실행");

		// request.getContextPath() URL 루트경로를 의미
		System.out.println(request.getContextPath());

		// request.getRequestURI() 현재 요청의 URI를 의미
		System.out.println(request.getRequestURI());

		// 요청 url이 뭔지 구분하기
		// 우리가 필요한 것은 전체 uri에서 ContextPath를 제외시킨 부분이다
		String target = request.getRequestURI().substring(request.getContextPath().length());
		System.out.println(target);
		
		Result result = null;  // ++++
		Result loginResult = null;
		
		switch(target) {
		case "/member/join.me":
			System.out.println("join!");
			request.getRequestDispatcher("/app/member/join.jsp").forward(request, response);
			break;
		case "/member/joinOk.me":
			System.out.println("joinOk!");
			
			result = new JoinOkController().execute(request, response);
			System.out.println(result.getPath());
			
//			response.sendRedirect(request.getContextPath());
			
			break;
			// Ok가 필요한 이유는 회원가입 페이지로 단순히 이동하는 것과 회원가입을 처리하는 URL을 나누기 위함이다
		case "/member/login.me":
			System.out.println("login!");
			request.getRequestDispatcher("/app/member/login.jsp").forward(request, response);
			break;
		case "/member/loginOk.me":
			System.out.println("loginOk!");
			
			result = new LoginOkController().execute(request, response);
			break;
		}
		
		System.out.println("switch문 종료");
		
		if(result != null) {
			if(result.isRedirect()) {
				response.sendRedirect(result.getPath());
			} else {
				request.getRequestDispatcher(result.getPath()).forward(request, response);
			}
		}
		
//		if(loginResult != null) {
//			if(loginResult.isRedirect()) {
//				System.out.println(loginResult.getName());
//				request.setAttribute("message", loginResult.getName() + "님 환영합니다");
//				request.getRequestDispatcher("/app/member/main.jsp").forward(request, response);
//			} else {
////				request.getRequestDispatcher(loginResult.getPath()).forward(request, response);
//				request.setAttribute("message", "누구냐 너");
//				request.getRequestDispatcher("/app/member/main.jsp").forward(request, response);
//			}
//		}
	}

}
