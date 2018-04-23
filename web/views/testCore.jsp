<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>코어 테스트</h1>
<ul>
<li><h4>c:set 태그 변수나 배열 선언에 사용되는 태그</h4></li>
<c:set var="num1" value="100" />
<c:set var="num2" value="200" />
<c:set var="sum" value="${num1+num2 }" scope="session" />
${num1 } 과 ${num2 } 의 합은 ${sum }
<br>
<% 
int k=12,m=24;
%>
<c:set var="tot" value="<%= k+m %>" />
tot 변수의 값 = ${tot}<br>
<hr>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>

</ul>



</body>
</html>