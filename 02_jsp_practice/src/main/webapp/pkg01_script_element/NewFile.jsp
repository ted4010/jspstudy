<!--  HTML 주석 : "소스 보기"에서 보인다. Java 코드는 주석 처리할 수 없다. -->
<%--   JSP 주석 : "소스 보기"에서 안 보인다. Java 코드를 주석 처리할 수 있다. --%>

<%--
  지시어(directive)
  1. <%@ page %>    : 현재 페이지 설정, import
  2. <%@ include %> : 현재 페이지에 다른 페이즈를 포함
  3. <%@ taglib %>  : JSTL(Java Standard Tag Library)
 --%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%--
    스크립트릿(scriptlet)
    1. Java 코드를 작성할 때 사용한다.
    2. <% Java 코드 %>
   --%>
   
  <% int a = 10; %>

  <%--
    표현식 (Expression)
    1. Java 값을 나타낼 때 사용한다. (변수, 메소드 반환 등)
    2. <%= Java 값 %>
   --%>
   
  <div><%=a%></div>
  
  <%--
    선언부 (Declaration)
    1. Java 메소드를 정의할 때 사용한다.
    2. <%! 메소드정의 %>
   --%>
   <%!
      // 정수 10을 반환하는 메소드
      public int getTen() {
        return 10; }
   %>
   <div><%=getTen()%></div>
   
   <%--
    Java 와 JavaScrpit
    1. Java 변수를 JavaScript에서 사용할 수 있다. (JavaScript에서 표현식을 사용한다.)
    2. 반대는 안 된다.
    --%>
    <script>
    	alert(<%=a%>);
    </script>
    
    <%-- 1. if문 --%>
    <% if(getTen() == 10) { %>
      <div>10 이다.</div>
    <% } else { %>
      <div>10이 아니다.</div>
    <% } %>
    
    <%-- 2. for 문 --%>
    <div>
      <select name="month">
        <% for(int m = 1; m <= 12; m++) {%>
          <option><%=m%>월</option>
        <% } %>
      </select>
    </div>
    
    <%-- 연습. 현재 날짜와 시간을 yyyy-MM--dd HH:mm:ss:SSSS 형식의 문자열을 반환하는 getNow() --%>
    <%!
      public String getNow() {
        return DateTimeFormatter.ofPattern("yyyy-MM--dd HH:mm:ss:SSSS").format(LocalDateTime.now());
    }
    %>
    <div><%=getNow()%></div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</body>
</html>