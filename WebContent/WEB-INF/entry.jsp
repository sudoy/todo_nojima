<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="todo.utils.HTMLUtils" %>

 <jsp:include page="header.jsp"/>

<jsp:include page="_successes.jsp" />
<jsp:include page="_errors.jsp" />
		<div >

  			<div class="panel-heading">
  			  	<h2 class="panel-title">登録フォーム</h2>
 			 </div>

		</div>
		<form class="form-horizontal" action="entry.html" method="post">

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label" >題名</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="title" name="title" placeholder="題名" value="${param.title}">
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">詳細 </label>
				<div class="col-sm-10">
				<textarea class="form-control" id="detail" placeholder="詳細" name="detail" rows="3" >${param.detail}</textarea>
				</div>
			</div>


			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">重要度 </label>
				<div class="radio col-sm-5">
    			<label><input type="radio" name="imp"  value="★★★"  ${HTMLUtils.checkImportance(parama.imp,'★★★') }>★★★</label><br>
    			<label><input type="radio" name="imp"  value="★★" ${HTMLUtils.checkImportance(parama.imp,'★★') }>★★</label><br>
    			<label><input type="radio" name="imp"  value="★" ${HTMLUtils.checkImportance(parama.imp,'★') }>★</label>
    			</div>
			</div>

    		<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">期限</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="limit_date" name="limit_date" placeholder="期限"  value="${param.limit_date}">
				</div>
			</div>


			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
				<a href="index.html" class="btn btn-default" type="submit" ><span  aria-hidden="true"></span> キャンセル</a>
				<input class="btn btn-primary" type="submit" value="追加" />
				</div>
			</div>
		</form>
	</div><!-- /container -->
 <jsp:include page="footer.jsp"/>