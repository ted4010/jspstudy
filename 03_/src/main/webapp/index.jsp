<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

  <div class="wrap">
    <select id="type">
      <option value="date">현재날짜</option>
      <option value="time">현재시간</option>
      <option value="datetime">현재날짜와시간</option>
    </select>
    <button id="btn" type="button">요청</button>
  </div>
  
  <script src="/mvc/assets/js/index.js"></script>

</body>
</html>