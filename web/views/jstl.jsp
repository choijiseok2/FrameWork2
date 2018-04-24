<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:formatNumber value="0.12" type="percent" /> <br />
<fmt:formatNumber value="123456789" type="currency" /> <br />
<fmt:formatNumber value="123456789" type="currency" currencySymbol="$" />

</body>
</html>