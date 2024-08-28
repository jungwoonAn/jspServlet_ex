package unit09;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ajw.javabeans.MemberBean;

@WebServlet("/memberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberBean member = new MemberBean("홍길동", "boss");
		request.setAttribute("member", member);
		RequestDispatcher dispatcher = request.getRequestDispatcher("09_el.jsp");
		dispatcher.forward(request, response);
	}

}
