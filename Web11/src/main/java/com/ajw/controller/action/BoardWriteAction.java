package com.ajw.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ajw.dao.BoardDAO;
import com.ajw.dto.BoardVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardVO bVo = new BoardVO();
		bVo.setName(request.getParameter("name"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);
		new BoardListAction().execute(request, response);
	}

}
