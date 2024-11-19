<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sesstion1 processing</title>
</head>
<body>
	<% 
		String uesr_id = request.getParameter("id");
		String uesr_pw = request.getParameter("pw");
		
		if (uesr_idequals("admain"&& uesr_pw.equals("1234")){
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.println("세션 설정이 성공 했습니다.</br>");
			out,println(user_id + " 님 환영합니다");
		}
		else{
			out.println("세션 설정이 실패 했습니다.");
		}
		}
	%>
</body>
</html>