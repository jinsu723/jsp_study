package com.example.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.app.Execute;
import com.example.app.Result;
import com.example.app.dto.MemberDTO;
import com.example.app.member.dao.MemberDAO;

public class JoinOkController implements Execute{

	// 프론트 컨트롤러에서 작성한 코드를 처리할건데
	// 일반 클래스는 request, response가 없다
	// 메소드를 만들어 매개변수로 전달받아 처리한다

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		System.out.println(memberDTO);
		Result result = new Result(); // ++++ Result 클래스 만든 후 추가

		memberDTO.setMemberId(request.getParameter("memberId"));
		memberDTO.setMemberPassword(request.getParameter("memberPassword"));
		memberDTO.setMemberName(request.getParameter("memberName"));
		memberDTO.setMemberAge(Integer.valueOf(request.getParameter("memberAge")));
		memberDTO.setMemberGender(request.getParameter("memberGender"));

		System.out.println("DTO");
		System.out.println(memberDTO);
		
		memberDAO.join(memberDTO);
		
		result.setRedirect(true);  // ++++ Result 객체 추가 후 작성
		result.setPath(request.getContextPath());
		
		return result;  // ++++ 반환값 수정 후 프컨으로 이동
	}
	
	
//	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		// sqlSession을 사용한다
//		MemberDAO memberDAO = new MemberDAO(); // +++ DAO 클래스의 메소드 실행하기 위한 객체 생성
//		MemberDTO memberDTO = new MemberDTO();
//		System.out.println(memberDTO);
//
//		memberDTO.setMemberId(request.getParameter("memberId"));
//		memberDTO.setMemberPassword(request.getParameter("memberPassword"));
//		memberDTO.setMemberName(request.getParameter("memberName"));
//		memberDTO.setMemberAge(Integer.valueOf(request.getParameter("memberAge")));
//		// valueOf() 문자열을 Integer 타입으로 바꿔준다.
//		// parsInt()와의 차이는 parseInt()는 문자열이 숫자가 아닐 경우 numberFormatException을 발생시키지만
//		// valueOf()는 null값을 반환한다(예외처리 안 함)
//
//		memberDTO.setMemberGender(request.getParameter("memberGender"));
//
//		memberDAO.join(memberDTO); // +++
//	}
}
