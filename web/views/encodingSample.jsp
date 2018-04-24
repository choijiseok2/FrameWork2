<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>encodingSample.jsp</title>
</head>
<body>
<h1>
testFmt.jsp 에서 전송한 test 값 출려고학인
<!-- </h1> -->
<%-- request.getParameter를 이용한 값 출력 = <%=request.getParameter("test") %> <br> --%>
<fmt:requestEncoding value="utf-8"/>
<c:set var="recieve" value="${param.test }" />
core값을 이용한 값 출력 = ${ recieve }




</body>
</html>