<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie Processing</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParamerter("pw";)
	Strinf user_cookie = request.getParameter("ck");
	
	if (user_id.equals("admin")&&user_pw.equals("1234")){
		Cookie cookie_id = new Cookie("userID", user_id);
		Cookie cookie_pw = new Cookie("userPW", user_pw);
		Cookie cookie_ck = new Cookie("userCK", user_ck);
		
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		response.addCookie(cookie_ck);
		
		response.sendRedirect("1403_cookie1_results.jsp");
	}else{
		our.println("쿠키 생성이 실패했습니다.");
	}
%>
</body>
</html>