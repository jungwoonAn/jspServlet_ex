package ex01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addition03")
public class AdditionalServlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
           
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("add", add);
		
		/*
		   <Forward방식>
		   RequestDispatcher 인터페이스를 사용하면 현제 요청과 응답 객체를 유지한 채로
		   다른 서블릿 또는 JSP로 넘길 수 있다.
		 */
		RequestDispatcher dispatcher = request.getRequestDispatcher("addition03.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
