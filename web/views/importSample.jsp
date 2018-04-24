<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<div style="background: black; color:white; text-align: center">
<h2><%if(request.getParameter("content")!=null){ %><%=request.getParameter("content")%>importSample.jsp파일입니다.
<%}else{ %>
단순한 importSample.jsp파일입니다.
<%} %>

</h2>
<a></a>

</div>
</body>
</html>