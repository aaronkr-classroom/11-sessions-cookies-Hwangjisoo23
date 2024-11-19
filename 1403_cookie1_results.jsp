<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookie results</title>
</head>
<body>
<%
	out.println("<h3>쿠키 설정이 성공 했습니다.</h3>");
	cookie[] cookie = request.getCookies();

	out.println("현재 설정된 쿠키의 개수 = " + cookies.length + "<br>");
	out.println("=====================================<br>");
	
	for (cookie c: cookies) { //foreach()와 비슷
		out.println("<ul>");
		out.println("<li>쿠키의 이름(키): " + c.getName() + "</li>" );
		out.println("<li>쿠키의 값: " + c.getvalue() + "</li>" );
		out.println("</ui>" );
		out.pritnln("---------------------------------<br>");
	}
%>
</body>
</html>