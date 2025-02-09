package com.learning.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learning.app.Execute;
import com.learning.app.Result;
import com.learning.app.dao.CommunityDAO;

public class CommunityDetailDeleteController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("게시글 삭제 요청 받음");
		Result result = new Result();

		System.out.println("게시글 삭제 요청. 넘겨받은 값은: " + request.getParameter("pk"));
		int postNum = Integer.parseInt(request.getParameter("pk"));
		
		CommunityDAO communityDAO = new CommunityDAO();
		
		communityDAO.postDeleteDetail(postNum);
		System.out.println(postNum+"의 게시글 삭제 완료");
//		결과 함 확인하고 

		result.setPath("/app/communityForum/communityForum.cf");
		result.setRedirect(false);
		return result;
	}

}
