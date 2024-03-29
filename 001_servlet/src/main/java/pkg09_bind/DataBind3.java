package pkg09_bind;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DataBind3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  // 외우기
	   
	  // ServletContext에 데이터 저장하기
    request.setAttribute("c", "일반데이터");
    
    
    // 데이터 확인 페이지로 이동하기
    // response.sendRedirect("/servlet/dataConfirm");
    request.getRequestDispatcher("/dataConfirm").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
