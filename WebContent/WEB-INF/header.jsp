<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>footer</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body style="background-color : #FAFAFA">
		<nav class="navbar navbar-default" style="background-color : white">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#globalnav" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span></button>
				<a class="navbar-brand" href="index.html">Todoリスト</a>
			</div>
		</div><!-- /.container-fluid -->
	</nav>

	<div class="container ">
	<!--
		<div class="alert alert-success alert-dismissible" role="alert">
  				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 			 	<strong>完了しました!  </strong>
 			 	<ul>
					<li>No.27のTodoを更新しました。</li>
				</ul>
		</div>
	-->
	<c:if test="${errors.size() > 0}">
		<div class="alert alert-danger alert-dismissible" role="alert">
  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 			<strong>エラーが発生しました！ </strong>
 			<ul>
				<c:forEach var="error" items="${ errors}" >
					<li>${error}</li>
				</c:forEach>
			</ul>
		</div>
	</c:if>




