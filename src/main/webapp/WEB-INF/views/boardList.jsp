<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Spring MVC01</title>
	
	<!-- bootstrap, jquery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Spring MVC01</h2>
		<div class="panel panel-default">
		  <div class="panel-heading">BOARD
		  	<a href="<c:url value='/boardForm.do' />" class="btn btn-xs pull-right btn-primary">게시물 쓰기</a>
		  </div>
		  <div class="panel-body">
		  	<table class="table table-bordered table-hover">
		  		<tr>
		  			<td>번호</td>
		  			<td>재목</td>
		  			<td>작성자</td>
		  			<td>작성일</td>
		  			<td>조회수</td>
		  		</tr>
		  		<c:forEach var="vo" items="${list}">
		  		<tr>
		  			<td>${vo.idx}</td>
		  			<td><a href="<c:url value='/boardContent.do?idx=${vo.idx}' />">${vo.title}</a></td>
		  			<td>${vo.writer}</td>
		  			<td>${fn:split(vo.indate, " ")[0]}</td>
		  			<td>${vo.count}</td>	  		
		  		</tr>
		  		</c:forEach>
		  	</table>
		  </div>
		  <div class="panel-footer">인프런_스프1탄</div>
		</div>
	</div>
</body>
</html>