package com.ajw.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ajw.dao.ProductDAO;
import com.ajw.dto.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/productUpdate.do")
public class ProductUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// url에 전달된 파라미터 값 받기
		String code = request.getParameter("code");
		
		// 선택한 상품 조회하기 위해 파라미터 ProductDAO로 전달
		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectProductByCode(code);
		
		// 선택한 상품 ProductVO 객체 속성으로 전달
		request.setAttribute("product", pVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productUpdate.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 업로드할 이미지 파일 경로를 서버상 실제 경로로 찾아옵니다.
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "utf-8";  // 파일 이름이 한글일 경우 한글 깨지지 않도록 인코딩
		int sizeLimit = 20*1024*1024;  // 업로드 파일 크기 최대 20MB
		
		// MultipartRequest객체 생성 - 생성되는 순간 서버로 파일 업로드됨.
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		String code = multi.getParameter("code");
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String description = multi.getParameter("description");
		String pictureUrl = multi.getFilesystemName("pictureUrl");  // 선택한 파일 이름 얻어오기
		
		if(pictureUrl == null) {
			pictureUrl = multi.getParameter("nonmakeImg");
		}
		
		// DB처리를 위한 상품정보를 ProductVO에 set
		ProductVO pVo = new ProductVO();
		pVo.setCode(Integer.parseInt(code));
		pVo.setName(name);
		pVo.setPrice(price);
		pVo.setDescription(description);
		pVo.setPictureUrl(pictureUrl);
		
		// DB처리를 담당하는 ProductDAO 객체 얻어오기
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.updateProduct(pVo);
		
		response.sendRedirect("productList.do");	
	}

}
