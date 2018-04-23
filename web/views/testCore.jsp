<%@page import="java.util.Locale.Category"%>
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
<c:set var="sum" value="${num1+num2}" scope="session" />
${num1 } 과 ${num2 } 의 합은 ${sum }
<br>
<% 
int k=12,m=24;
%>
<c:set var="tot" value="<%= k+m %>" />
tot 변수의 값 = ${tot}<br>
<hr>
<li><h4>
<c:set var="colors" >red,green,blue,plnk,magenta</c:set> 
colors 배열 값 : ${colors}<br>
<c:forEach items="${colors}" var="color">
<font color="${color}">글자색 적용: ${color} </font><br>
</c:forEach>
</h4></li>
<li><h4>c:remove 태그 사용. 변수나 배열삭제시에 사용함.</h4></li>
<button onclick="delSum()"> sum 변수 삭제하기</button>
<script>
function delSum(){
	<c:remove var="sum" scope="session"/>
}</script>

<li><h4>c:out 태그 출력기능을 제공하는 태그</h4></li>
그대로 문자로 출력: <c:out value="<h2>이글은 c:out으로 출력됨 </h2>" escapeXml="true" />
태그로 해석되어  문자로 출력: <c:out value="<h2>이글은 태그로 인식되어 출력됨. </h2>" escapeXml="false" />
전송온값 출력: 
<c:out value="${param.name}" default="홍길동" /><br>
name : <%= request.getParameter("name") %><br>
<li><h4>
c:if 태그: if문과 같은 로직을 처리하는 태그
<c:if test="${num1 >= num2 }">큰값 : ${num1 } </c:if>
<c:if test="${num1 <= num2 }">큰값 : ${num2 } </c:if>

</h4></li>
<li><h4>
c:choose 태그 : switch 문과 같은 일을 하는 태그
</h4>
<c:set var="no" value="1" />
<c:choose>
	<c:when test="${no eq 1}"> 반갑</c:when>
	<c:when test="${no eq 2}"> 안녕</c:when>
	<c:otherwise>환영</c:otherwise>

</c:choose>

</li>
<li><h4> c:forEach 태그 : for문과 같은 태그</h4></li>
<c:forEach var="cnt" begin="1" end="10">
	반복 확인 : ${cnt}<br>
</c:forEach>

<c:forEach var="count" begin="1" end="20" step="2">
	반복값  : ${count}<br>
</c:forEach>

<c:forEach var="size" begin="1" end="7">
<font size="${size}" > 글자크기 ${size}</font>
</c:forEach>
<br>
<%
java.util.ArrayList<String> list=new java.util.ArrayList<String>();
list.add("dd");
list.add("ads");
list.add("abas");
list.add("h425");
list.add("m7587");
list.add("ney5423");
list.add("n8759yhgfd");
%>
<c:forEach var="category" varStatus="status" items="<%=list %>">
${status.index} : ${category }
</c:forEach>

<li><h4>
c:forTokens 태그 :java.util.StringTokenizer 클래스와 같은 역활을 수행.
</h4></li>
<ul>
<c:forTokens items="yellow pink blue green red" delims=" " var="clr">
<li> 
${clr}
</li>
</c:forTokens>
</ul>
다른것
<ul>
<c:forTokens items="yellow-pink*blue_green red" delims="/*-_ " var="clr2">
<li> 
${clr2}
</li>
</c:forTokens>
</ul>
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