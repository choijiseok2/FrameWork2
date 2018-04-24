<%@page import="java.util.logging.SimpleFormatter"%>
<%@page import="java.util.Locale.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html >
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<li><h4>다른 jsp페이지나 서블릿으로 연결처리하는 값도 같이 전달 가능.<Br>
<a href="testFmt.jsp?no=123">testFmt로 이동 a태그를 이용.</a><Br>
<c:url var="testf" value="testFmt.jsp"> <c:param name="no" value="123" /> </c:url>
<a href="${testf}"> c:url을 이용해서 이동 </a>

</h4></li>
<hr>
<li><h4>c:import 태그: jsp의 include 지시자 또는 표준액션태그인 jsp:include 태그와 같은 기능을 제공한다.</h4></li>
<%@ include file="importSample.jsp" %>
<c:import url="importSample.jsp?content=send by Ctag " />

<li><h4>
c:catch태그: 자바의 try catch 문과 같은 기능을 수행하는 기능입니다.
</h4></li>
<c:catch>
<!-- 자바의 try영역과 같은 위치. -->
<c:set var="num" value="null" />
<c:set var="num3" value="77" />
나눈결과 : ${ num3/num }
</c:catch >
<li><h4>
c:redirct 태그: response.sendRedirect()메소드와 같은 역활.
</h4>
<c:set var="move" value="0" />
<c:if test="${move eq 1}">
<c:redirect url="testFmt.jsp"> </c:redirect>
</c:if>
<button onclick="changemove()">페이지이동</button>
</li>
<li>
<h4>fmt:formatDate 태그: 날짜와 시간에 포맷 적용하는 태그</h4>
java.text.SimpleDateFormat 클래스와 format()메소드 사용과 동일함.<br>
value 속성에는 java.util.date 클래스 객체를 사용해야함.<br>
<fmt:formatDate value="<%= new java.util.Date() %>"/><Br>
<c:set var="date" value="<%= new java.util.Date() %>" />
<fmt:formatDate value="${date}" /><br />
<hr>
[short] : <fmt:formatDate value="${date}" type="both" dateStyle='short'  timeStyle="short" /> <br/>
[medium] : <fmt:formatDate value="${date}" type="both" dateStyle='medium' timeStyle="medium" /> <br/>
[long] : <fmt:formatDate value="${date}" type="both" dateStyle='long' timeStyle="long" /> <br/>
[full] : <fmt:formatDate value="${date}" type="both" dateStyle='full' timeStyle="full" /> <br/>
<hr>
현재 날짜 : <fmt:formatDate value="${date}" type="date" pattern="yyyy/MM/dd (E)" /> <br/>
현재 시각 : <fmt:formatDate value="${date}" type="time" pattern="(a) hh:mm:ss" /> <br/>
<hr>

</li>
<li><h4>
fmt:setLocale 태그: 지역대를 설정하는 태그</h4></li>
java.util.locale 클래스와 같은 기능<br>
<fmt:setLocale value="ko_kr"/>
미국 지역대로 설정하는 경우 시분초또한 미국식으로 바끤다.<br>
<fmt:setLocale value="en_us"/>
<c:set var="us" value="<%=new java.util.Date() %>" />
<fmt:formatDate value="${us}" dateStyle="full" type="both" timeStyle="full" />
<li><h4>fmt time zone 태그: 시간대를 설정하는 태그
setTimeZone 사용해도됨</h4></li>
<fmt:setLocale value="ko_kr"/>
한국 현재 시간: <fmt:formatDate value="${date}" type="both" /><br>
뉴욕 현재 시간: <fmt:timeZone value="America/New_York">
<fmt:formatDate value="<%= new java.util.Date() %>" type="both"/>
</fmt:timeZone>
<hr>
encodingSample.jsp 파일로 form정보 전송하기<br>
<form action="encodingSample.jsp" method="post">
전송값 :<input type="text" name="test">
<br> <input type="submit">
</form>
<li><h4>
fmt:formatNumber 태그: 숫자 데이터 변환.
</h4></li>
<hr>
숫자 그대로 출력 : 
<fmt:formatNumber value="123456789" groupingUsed="false"> </fmt:formatNumber><br>
천단위로 구분기호 적용:
<fmt:formatNumber value="123456789" groupingUsed="true"> </fmt:formatNumber><br>
실수값 소수 자릿수 지정<br>
<fmt:formatNumber value="1.23456789" pattern="#.###" /><br>
<fmt:formatNumber value="1.2" pattern="#.###" /><br>
퍼센트로 출력<br>
<fmt:formatNumber value="0.12" type="percent" /> <br />
<fmt:formatNumber value="123456789" type="currency" /> <br/> 
<fmt:formatNumber value="123456789" type="currency"
currencySymbol="$" />


<li><h4></h4></li>
<li><h4></h4></li>
<li><h4></h4></li>

</ul>



</body>
</html>