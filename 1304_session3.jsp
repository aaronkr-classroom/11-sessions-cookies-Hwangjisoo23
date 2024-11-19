<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session 3</title>
</head>
<body>
<%
	if (request.isRequestedSessionIdValid()){
	String session_id = session.getId();
	long last_time = session.getLastAccessdeTime();
	long start_time = session.getCreationTime();
	long user_time = (last_time - start_time) / 60000;
	
	out.println("세션 아이디: " + session_id + "<br>");
	out.println("요청 시각 시간: " + start_time + "<br>");
	out.println("요청 마지막 시간: " + last_time + "<br>");
	out.println("웹 사이트의 경과 시간: " + user_time + "<br>");
	
	}else{
		our.println("세션이 유효하지 않아서 유효 하겠습니다.");
		
		String uesr_id = request.getParameter("id");
		String uesr_pw = request.getParameter("pw");
		
		if (uesr_idequals("admain"&& uesr_pw.equals("1234")){
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.println("세션 설정이 성공 했습니다.</br>");
			out,println(user_id + " 님 환영합니다");
		
		}else{
			out.println("세션 설정이 실패 했습니다.");
		}
	}
%>
</body>
</html>