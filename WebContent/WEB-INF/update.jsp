<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="todo.utils.HTMLUtils"%>

 <jsp:include page="header.jsp"/>


		<div >
  			<div class="panel-heading">
  			  	<h2 class="panel-title">更新フォーム</h2>
 			 </div>

		</div>
		<form class="form-horizontal" action="#" method="post">



			<div class="form-group">

				<input type="hidden" name="id" value="${list.id}"/>
				<label for="salesDate" class="col-sm-2 control-label">題名</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="salesDate" value="${list.title}"  placeholder="題名">
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">詳細 </label>
				<div class="col-sm-10">
				<textarea class="form-control" id="salesDate" rows="3"  placeholder="詳細" >${list.detail}</textarea>
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">重要度 </label>
				<div class="radio col-sm-5">
    			<label><input type="radio" name="importance"  value="${list.imp}" ${HTMLUtils.checkImportance(list.imp,'★★★')}>★★★</label><br>
    			<label><input type="radio" name="importance"  value="${list.imp}" ${HTMLUtils.checkImportance(list.imp,'★★') }>★★</label><br>
    			<label><input type="radio" name="importance"  value="${list.imp}" ${HTMLUtils.checkImportance(list.imp,'★') }>★</label>
    			</div>
			</div>

    		<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">期限</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="salesDate" value="${HTMLUtils.getFormat(list.limitDate)}" placeholder="期限" >
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
				<a href="index.html" class="btn btn-default" type="submit" ><span  aria-hidden="true"></span> キャンセル</a>
				<a href="index.html" class="btn btn-primary" type="submit" ><span  aria-hidden="true"></span> 更新</a>
				<a class="col-sm-offset-9 btn btn-danger" href="index.html" type="submit"  ><span  aria-hidden="true"></span> 削除</a>
				</div>
			</div>
		</form>

	</div><!-- /container -->
 <jsp:include page="footer.jsp"/>
