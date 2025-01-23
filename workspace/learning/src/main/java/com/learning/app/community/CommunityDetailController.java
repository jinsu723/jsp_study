package com.learning.app.community;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.learning.app.Execute;
import com.learning.app.Result;
import com.learning.app.dao.CommunityDAO;
import com.learning.app.dto.CommunityDTO;
import com.learning.app.dto.UserDTO;

public class CommunityDetailController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int postNumber = Integer.parseInt(request.getParameter("postNum"));
		CommunityDTO communityDTO = new CommunityDTO();
		CommunityDAO communityDAO = new CommunityDAO();
		Result result = new Result();

		List<CommunityDTO> postDetail = communityDAO.communityDetils(postNumber);
		List<CommunityDTO> detailComment = communityDAO.communityDetailComment(postNumber);
		
		String cmText = request.getParameter("commentText");
		System.out.println("입력된 댓글 값: "+ cmText);

		int viewPostNumber = postNumber;
		System.out.println("해당 게시글 PK값: "+viewPostNumber);
		
		request.setAttribute("details", postDetail);
		request.setAttribute("comments", detailComment);
		request.setAttribute("postNum", viewPostNumber);
		result.setPath("/app/communityForum/communityForumDetail.jsp");
		result.setRedirect(false);
		
		HttpSession session = request.getSession(false);
		if(session != null) {
			UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
			if(userDTO != null) {
				request.setAttribute("userCheckLogins", true);
				request.setAttribute("loginUserName", userDTO.getUserNickname());
				System.out.println("로그인 한 사용자: "+userDTO.getUserNickname());
			} else {
				request.setAttribute("userCheckLogins", false);
				request.setAttribute("loginUserName", false);
				System.out.println("로그인 하지 않음");
			}
		} else {
			System.out.println("세션 불량입니다.");
		}

		return result;

	}
}
