<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session 2</title>
</head>
<body>
<%
	// session.invalidate();
	//세션이 제거 하거나 없으면 500오류를 발생
	
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	
	out.println("설정된 세션의 속성 값[0]:" + user_id + "<br>");
	out.println("설정된 세션의 속성 값[1]:" + user_pw + "<br>");
%>
</body>
</html>