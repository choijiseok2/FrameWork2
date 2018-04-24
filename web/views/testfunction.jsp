<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>functions</title>
</head>
<body>
<h1>jstl function library test page </h1>
<h2>문자열 관련 함수 태그들을 제공함 </h2>
<h4>다른 라이브러리 태그와 다른 점은? EL안에서 사용하거나, 혹은 value 속성에 처리된 결과를 대입할수잇다.</h4>
<c:set var="str" value="How are you?" />
str : ${str }<br>
모두 대문자로 : ${fn:toUpperCase(str) }<br>
모두 소문자로 : ${fn:toLowerCase(str) }<br>
are 의 위치  : ${fn:indexOf(str,"are") }<br>
are를 were로 바꿈 : ${fn: replace(str,"are","were") }<br>
문자열의 길이: ${fn:length(str)}<br>
are 분리 추출: ${fn:substring(str,4,7) }<br>
</body>
</html>