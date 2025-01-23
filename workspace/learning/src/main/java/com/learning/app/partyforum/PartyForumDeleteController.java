package com.learning.app.partyforum;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learning.app.Execute;
import com.learning.app.Result;
import com.learning.app.dao.partyForumDAO;

public class PartyForumDeleteController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Result result = new Result();

//		request.getParameter("postNum");
//		System.out.println(Integer.parseInt(request.getParameter("postNum")));

		partyForumDAO partyForumDAO = new partyForumDAO();
		partyForumDAO.PartyDelete(Integer.parseInt(request.getParameter("postNum")));

		result.setRedirect(true);
		result.setPath(request.getContextPath() + "/app/partyForum/partyForum.fo");

		return result;
	}

}
