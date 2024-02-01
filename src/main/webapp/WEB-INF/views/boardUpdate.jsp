<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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
			<form action="<c:url value='/boardUpdate.do' />" method="post">	
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" class="form-control" id="title" name="title" value="${vo.title }" />
				</div>
				<div class="form-group">
					<label for="contents">내용</label>
					<textarea rows="7" class="form-control" id="content" name="content">${vo.content}</textarea>
				</div>
				<div class="form-group">
					<label for="writer">작성자</label>
					<input type="text" class="form-control" id="writer" name="writer" value="${vo.writer }" readonly="readonly">
				</div>
				<div>
					<input type="hidden" name="idx" value="${vo.idx}"/>
				</div>
				<button type="submit" class="btn btn-primary btn-default">수정완료</button>
				<button type="reset" class="btn btn-danger btn-default">취소하기</button>				
				<button type="button" class="btn btn-warning btn-default" onClick="location.href='${ctx}/boardList.do'">리스트</button>				
				
			</form>		
		</div>
		<div class="panel-footer">인프런_스프1탄</div>
	</div>
</div>
</body>
</html>