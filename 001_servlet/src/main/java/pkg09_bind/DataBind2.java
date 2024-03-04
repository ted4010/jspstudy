package pkg09_bind;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class DataBind2 extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    // HttpSession에 데이터 저장하기
    HttpSession session = request.getSession();
    session.setAttribute("b", "로그인정보");
    
    // 세션 유지시간 설정하기 (디폴트 30분)
    session.setMaxInactiveInterval(60 * 60); // 초 단위 (1시간), -1과 같은 음수를 전달하면 무한으로 활용 가능

    /*
     * web.xml 파일을 이요한 세션 유지시간 설정하기 (30분)
     * 
     * <web-app xmlns="" version="">
     *  <session-config>
     *    <session-timeout>30</session-timeout>
     *  </session-config>
     * </web-app>   
     */
    
    // 세션 정보 삭제하기
    // session.invalidate();
    
    // 데이터 확인 페이지로 이동하기
    response.sendRedirect("/servlet/dataConfirm");

    
  }

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }

}
