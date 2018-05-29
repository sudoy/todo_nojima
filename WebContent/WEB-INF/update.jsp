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
		<div >
  			<div class="panel-heading">
  			  	<h2 class="panel-title">更新フォーム</h2>
 			 </div>

		</div>
		<form class="form-horizontal" action="#" method="post">

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">題名</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="salesDate" value="テストテスト"  placeholder="テストテスト">
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">詳細 </label>
				<div class="col-sm-10">
				<textarea class="form-control" id="salesDate" rows="3"  placeholder="SQLの確認テストの採点と報告書を作成する" >SQLの確認テストの採点と報告書を作成する。</textarea>
				</div>
			</div>

			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">重要度 </label>
				<div class="radio col-sm-5">
    			<label><input type="radio" name="importance"  value="three" checked>★★★</label><br>
    			<label><input type="radio" name="importance"  value="two">★★</label><br>
    			<label><input type="radio" name="importance"  value="one">★</label>
    			</div>
			</div>

    		<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">期限</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="salesDate" value="2015/6/15" placeholder="2015/6/15" >
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
