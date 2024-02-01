<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
	<title>Spring MVC01</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- bootstrap, jquery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<h2>Spring MVC01</h2>
	<div class="panel panel-default">
		<div class="panel-heading">Board</div>
		<div class="panel-body">
			<form action="<c:url value='/boardInsert.do' />" method="post">
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" class="form-control" id="title" name="title">
				</div>
				<div class="form-group">
					<label for="contents">내용</label>
					<textarea rows="7" class="form-control" id="content" name="content" ></textarea>
				</div>
				<div class="form-group">
					<label for="writer">작성자</label>
					<input type="text" class="form-control" id="writer" name="writer">
				</div>
				<button type="submit" class="btn btn-success btn-default">등록</button>				
				<button type="reset" class="btn btn-warning btn-default">취소</button>
			</form>		
		</div>
		<div class="panel-footer">인프런_스프1탄</div>
	</div>
</div>
</body>
</html>