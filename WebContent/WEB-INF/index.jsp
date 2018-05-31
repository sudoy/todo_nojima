<%@page import="todo.utils.HTMLUtils"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <jsp:include page="header.jsp"/>

	<div class="container">
		<div class="alert alert-success alert-dismissible" role="alert">
  				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 			 	<strong>完了しました!  </strong>
 			 	<ul>
					<li>No.27のTodoを更新しました。</li>
				</ul>
		</div>

		<div class="alert alert-danger alert-dismissible" role="alert">
  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 			<strong>エラーが発生しました！ </strong>
 			<ul>
				<li>題名は必須入力です。</li>
				<li>題名は100文字以内で入力してください。</li>
				<li>期限は「YYYY//MM//DD」形式で入力してください。</li>
			</ul>
		</div>

		<table class="table">
		<tr>
			<th>#</th><th>題名</th><th>重要度</th><th>期限</th>
		</tr>

		<c:forEach var="todo" items="${list}">

		<tr>

			<td>${todo.id}</td>
			<td><a href="update.html">${todo.title}</a></td>
			<td>${todo.imp}</td>
			<td>${HTMLUtils.getFormat(todo.limitDate)}</td>

		</tr>
		</c:forEach>

		</table>

		<div class="form-group">
			<div class="col-sm-offset-0">
				<a href="entry.html" class="btn btn-primary" type="submit" ><span aria-hidden="true"></span> 追加</a>
			</div>
		</div>

	</div><!-- /container -->
 <jsp:include page="footer.jsp"/>
