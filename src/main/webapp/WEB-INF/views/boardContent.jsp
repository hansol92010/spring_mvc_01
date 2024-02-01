<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Spring MVC01</title>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	
  	<!-- bootstrap, jquery -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Spring MVC01</title>
</head>
<body>
<div class="container">
	<h2>Spring MVC01</h2>
	<div class="panel panel-default">
		<div class="panel-heading">BOARD</div>
		<div class="panel-body">
			<form action="<c:url value='/modify.do' />" method="post">	
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" class="form-control" id="title" name="title" value="${vo.title }" readonly="readonly" />
				</div>
				<div class="form-group">
					<label for="contents">내용</label>
					<textarea rows="7" class="form-control" id="content" name="content" readonly="readonly">${vo.content}</textarea>
				</div>
				<div class="form-group">
					<label for="writer">작성자</label>
					<input type="text" class="form-control" id="writer" name="writer" value="${vo.writer }" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="indate">작성일</label>
					<input type="text" class="form-control" id="indate" name="indate" value="${fn:split(vo.indate, ' ')[0]}" readonly="readonly" />
				</div>		
				<a href="<c:url value='/boardUpdateForm.do' />/${vo.idx}"class="btn btn-primary btn-default" id="modify">수정</a>
				<a href="<c:url value='/boardDelete.do' />/${vo.idx}" class="btn btn-warning btn-default">삭제</a>				
				<a href="<c:url value='/boardList.do' />" class="btn btn-info btn-default" id="list">리스트</a>
			</form>		
		</div>
		<div class="panel-footer">인프런_스프1탄</div>
	</div>
</div>
</body>
</html>