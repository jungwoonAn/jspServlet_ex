package com.ajw.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload2.do")
public class MultiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 여기를 바꿔주면 다운받은 경로가 바뀜
		String savePath = "upload";
		// 최대 업로드 파일 크기를 5MB로 제한
		int uploadFileSizeLimit = 5*1024*1024;
		String encType = "utf-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : " + uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, 
					uploadFilePath, 
					uploadFileSizeLimit,
					encType,  					
					new DefaultFileRenamePolicy());
			
			// 업로드 된 여러 파일들의 이름 얻기	
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file = (String) files.nextElement();
				String fileName = multi.getFilesystemName(file);
				// 중복된 파일을 업로드할 경우 파일명이 바뀐다.
				String ori_fileName = multi.getOriginalFileName(file);
				out.print("<br>업로드된 파일명 : " + fileName);
				out.print("<br>원본 파일명 : " + ori_fileName);
				out.print("<hr>");
			}		
		}catch(Exception e) {
			System.out.println("예외 발생 : " + e);
		}
	}

}
