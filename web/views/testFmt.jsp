<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4> 
testCore.jsp에서 session에 저장한 Sum의 변수값 = ${sum}<br>
testCore.jsp에서 가져온 에 저장한 no의 변수값 = ${param.no}<br>
testCore.jsp에서 가져온 에 저장한 no의 변수값 = <%=request.getParameter("no") %>
</h4>

</body>
</html>