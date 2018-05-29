<%@page contentType="text/html; charset=UTF-8" %>
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
		<tr>

			<td>1</td><td><a href="update.html">テストテスト</a></td><td>★★★</td><td>2015/6/20</td>
		</tr>
		<tr>

			<td>2</td><td><a href="update.html">テストテスト</a></td><td>★</td><td>2015/6/20</td>
		</tr>
		<tr>

			<td>3</td><td><a href="update.html">テストテスト</a></td><td>★★★</td><td>2015/6/20</td>
		</tr>
		<tr>

			<td>4</td><td><a href="update.html">テストテスト</a></td><td>★★</td><td>2015/6/20</td>
		</tr>


		</table>

		<div class="form-group">
			<div class="col-sm-offset-0">
				<a href="entry.html" class="btn btn-primary" type="submit" ><span aria-hidden="true"></span> 追加</a>
			</div>
		</div>
	</div><!-- /container -->

