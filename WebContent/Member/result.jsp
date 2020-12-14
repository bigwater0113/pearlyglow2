<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member/result.jsp</title>
</head>
<body>
<c:choose>
	<c:when test="${code=='success' }">
		<h1>요청작업을 성공적으로 수행했습니다...</h1>
	</c:when>
	<c:otherwise>
		<h1>오류로 인해 요청작업을 수행하지 못했습니다...</h1>
	</c:otherwise>
</c:choose>
<a href="${pageContext.request.contextPath}/index.jsp?spage=main.jsp">홈</a>
</body>
</html>