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
	out.println("<h3>��Ű ������ ���� �߽��ϴ�.</h3>");
	cookie[] cookie = request.getCookies();

	out.println("���� ������ ��Ű�� ���� = " + cookies.length + "<br>");
	out.println("=====================================<br>");
	
	for (cookie c: cookies) { //foreach()�� ���
		out.println("<ul>");
		out.println("<li>��Ű�� �̸�(Ű): " + c.getName() + "</li>" );
		out.println("<li>��Ű�� ��: " + c.getvalue() + "</li>" );
		out.println("</ui>" );
		out.pritnln("---------------------------------<br>");
	}
%>
</body>
</html>