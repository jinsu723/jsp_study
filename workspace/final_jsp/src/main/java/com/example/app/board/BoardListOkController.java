package com.example.app.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.app.Execute;
import com.example.app.Result;
import com.example.app.board.dao.BoardDAO;
import com.example.app.dto.BoardListDTO;

public class BoardListOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		System.out.println("=== BoardListOkController 실행 ===");
		
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		
		String temp = request.getParameter("page");
		int page = (temp == null) ? 1 : Integer.valueOf(temp); // 페이지 번호 기본값 : 1
		int rowCount = 10; // 한 페이지당 게시글 수
		int pageCount = 5; // 페이지 버튼 수
		
		// 페이징 처리
		int startRow = (page - 1) * rowCount + 1; // 시작행(1, 11, 21, ...)
		int endRow = startRow + rowCount - 1; // 끝행(10, 20, 30, ...)
		
		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		// 게시글 목록 조회
		List<BoardListDTO> boardList = boardDAO.selectAll(pageMap);
		request.setAttribute("boardList", boardList);
		
		// 페이징 정보 설정
		// BoardMapper.xml의 getTotal을 이용하여 전체 게시글 개수 조회
		// 실제 마지막 페이지 번호(realEndPage)를 계산ㅎㅁ
		int total = boardDAO.getTotal();
		int realEndPage = (int)Math.ceil(total / (double)rowCount);  // 실제 마지막 페이지 (전체 게시글 기준으로 계산)
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);  // 현제 페이지 그룹에서의 마지막 페이지
		int startPage = endPage - (pageCount - 1);  // 현제 페이지 그룹에서의 첫 페이지

		startPage = Math.max(startPage, 0);
		endPage = Math.min(endPage,  realEndPage);  // endPage가 실제 존재하는 마지막 페이지(realEndPage)보다 크면 조정
		
		// prev, next 버튼 활성화 여부 확인
		boolean prev = startPage > 1;
		boolean next = endPage < realEndPage;
		
		request.setAttribute("page", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);
		
		System.out.println("===페이징 정보 확인===");
		System.out.println("pageMap : " + pageMap);
		System.out.println("boardList : " + boardList);
		System.out.println("startPage : " + startPage);
		System.out.println("startPage : " + startPage + ", endPage: " + endPage + ", realEndPage : " + realEndPage +  ", prev : " + prev + ", next : " + next);
		System.out.println("====================");
		
		result.setPath("/app/board/boardList.jsp");
		result.setRedirect(false);
		
		return result;
	}
	
}
