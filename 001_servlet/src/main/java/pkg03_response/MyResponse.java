package pkg03_response;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class MyResponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  // 1. 응답 Content-Type 설정 + UTF-8 인코딩
	  //    1) HTML  : text/html
	  //    2) XML   : application/xml
	  //    3) JSON  : application/json
	  response.setContentType("text/html; charset=UTF-8");
	  
	  // 2. 응답 출력 스트림 알아내기(문자 출력 스트림)
	  PrintWriter out = response.getWriter();
	  
	  // 3. 응답 만들기
	  out.println("<!DOCTYPE html>");
	  out.println("<html lang=\"ko\">");
	  out.println("<head>");
	  out.println("<meta charset=\"UTF-8\">");
	  out.println("<title>Insert title here</title>");
	  out.println("</head>");
	  out.println("<body>");
	  out.println("<h1>안녕하세요</h1>");
	  out.println("</body>");
	  out.println("</html>");
	  out.flush();
	  out.close();
  }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
