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
			<c:if test="${user ne null}">
			<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						${user.name}
						<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="logout.html">ログアウト</a></li>
						</ul>
					</li>
				</ul>
				</c:if>
			</div>
		</div><!-- /.container-fluid -->
	</nav>

	<div class="container ">






