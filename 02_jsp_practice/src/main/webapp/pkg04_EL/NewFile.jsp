<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
  EL
  1. Expression Language (표현 언어)
  2. Bind 영역에 저장된 값을 나타낼 수 있다.
  3. JSP script element 중 하나인 표현식(<%=값%>)을 대체할 수 있다.
  4. 형식
    ${값}
 --%>
 
 <%--
  Bind 영역 (데이터 저장 영역)
  1. pageContext : this(NewFile_jsp)  : 현재 JSP 인 NewFile.jsp 에서만 접근 가능하다.
  2. request     : HttpServletRequest : 응답 전까지 접근 가능하다.
  3. session     : HttpSession        : 브라우저 닫기 전까지 접근 가능하다.
  4. application : ServletContext     : 애플리케이션 종료 전까지 접근 가능하다.
  --%>
  
 <%--
  JSP Bind 영역이 우선 순위
  1. 동일한 이름의 속성(Attribute)이 여러 영역에 동시에 존재하는 경우 우선으로 사용되는 속성이 있다. 
  2. 높은 순위                          낮은 순위
     pageContext > request > session > application              
  --%>
 
 <%--
  JSP Bind 영역에 EL 내장객체
  1. pageContext : pageScope
  2. request     : requestScope
  3. session     : sessionScope
  3. application : applicationScope 
  --%>
  
<% int a = 10; request.setAttribute("a", a); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%=a%>  <%-- 둘이 같다 --%>
  ${a}

<hr>

  <%-- JSP Bind 영역에 데이터 저장하기 --%>
  <%
    pageContext.setAttribute("a", 1);
    request.setAttribute("a", 2);
    session.setAttribute("a", 3);
    application.setAttribute("a", 4);
  %>
  
  <%-- JSP Bind 영역에 저장된 Java 객체 정보 확인 --%>
  <%
    Book book = Book.builder()
                    .title("소나기")
  %>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
</body>
</html>