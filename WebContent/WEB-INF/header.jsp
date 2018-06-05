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
			<div class="dropdown text-right" >
  			<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    		野島
  			  <span class="caret"></span>
  			</button>
  			<ul class="dropdown-menu " aria-labelledby="dropdownMenu1">
  				 <li><a href="login.html">ログアウト</a></li>
  			</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>

	<div class="container ">

	<jsp:include page="_successes.jsp" />

	<jsp:include page="_errors.jsp" />




