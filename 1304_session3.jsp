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
	
	out.println("���� ���̵�: " + session_id + "<br>");
	out.println("��û �ð� �ð�: " + start_time + "<br>");
	out.println("��û ������ �ð�: " + last_time + "<br>");
	out.println("�� ����Ʈ�� ��� �ð�: " + user_time + "<br>");
	
	}else{
		our.println("������ ��ȿ���� �ʾƼ� ��ȿ �ϰڽ��ϴ�.");
		
		String uesr_id = request.getParameter("id");
		String uesr_pw = request.getParameter("pw");
		
		if (uesr_idequals("admain"&& uesr_pw.equals("1234")){
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.println("���� ������ ���� �߽��ϴ�.</br>");
			out,println(user_id + " �� ȯ���մϴ�");
		
		}else{
			out.println("���� ������ ���� �߽��ϴ�.");
		}
	}
%>
</body>
</html>