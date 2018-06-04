<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="todo.utils.HTMLUtils"%>

 <jsp:include page="header.jsp"/>


		<div >
  			<div class="panel-heading">
  			  	<h2 class="panel-title">更新フォーム</h2>
 			 </div>

		</div>
		<form class="form-horizontal" action="update.html?id=${list.id}" method="post">



			<div class="form-group">

				<input type="hidden" name="id" value="${list.id}"/>
				<label for="salesDate" class="col-sm-2 control-label">題名</label>
				<div class="col-sm-10">
				<input type="text" name="title"  class="form-control" id="salesDate" value="${param.title != null ? param.title : list.title}"  placeholder="題名">
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">詳細 </label>
				<div class="col-sm-10">
				<textarea class="form-control" name="detail" id="salesDate" rows="3"  placeholder="詳細" >${param.detail != null ? param.detail :list.detail}</textarea>
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">重要度 </label>
				<div class="radio col-sm-5">
    			<label><input type="radio" name="imp"  value="★★★" ${HTMLUtils.checkImportance(param.imp != null ? param.imp : list.imp,'★★★')}>★★★</label><br>
    			<label><input type="radio" name="imp"  value="★★" ${HTMLUtils.checkImportance(param.imp != null ? param.imp : list.imp,'★★') }>★★</label><br>
    			<label><input type="radio" name="imp"  value="★" ${HTMLUtils.checkImportance(param.imp != null ? param.imp : list.imp,'★') }>★</label>
    			</div>
			</div>

    		<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">期限</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" name="limit_date" id="salesDate" value="${param.limit_date != null ? param.limit_date : HTMLUtils.getFormat(list.limitDate)}" placeholder="期限" >
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
				<a href="index.html" class="btn btn-default" type="submit" ><span  aria-hidden="true"></span> キャンセル</a>
				<input type="submit" class="btn btn-primary" name="update" value="更新" />
				<a class="col-sm-offset-9 btn btn-danger" href="delete.html?id=${list.id}l" type="submit"  ><span  aria-hidden="true"></span> 削除</a>

				</div>
			</div>
		</form>

	</div><!-- /container -->
 <jsp:include page="footer.jsp"/>
