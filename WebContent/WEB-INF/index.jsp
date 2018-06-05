<%@page import="todo.utils.HTMLUtils"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <jsp:include page="header.jsp"/>
<jsp:include page="_successes.jsp" />
<jsp:include page="_errors.jsp" />


		<table class="table">
		<tr>
			<th>#</th><th>題名</th><th>重要度</th><th>期限</th>
		</tr>

		<c:forEach var="todo" items="${list}">

		<tr>

			<td>${todo.id}</td>
			<td><a href="update.html?id=${todo.id}">${todo.title}</a></td>
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
