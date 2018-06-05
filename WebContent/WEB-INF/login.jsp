<%@page contentType="text/html; charset=UTF-8" %>
 <jsp:include page="header.jsp"/>

		<div style="background-color: white">
		<h4>ログイン</h4>

		<form class="form-horizontal" action="#" method="post">
			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">メールアドレス </label>
				<div class="col-sm-5">
					<input type="text" name="mailaddress" class="form-control" id="mail" placeholder="メールアドレス" value="">
				</div>
			</div>
			<div class="form-group">
				<label for="salesDate" class="col-sm-2 control-label">パスワード </label>
				<div class="col-sm-5">
					<input type="text" name="password" class="form-control" id="pass" placeholder="パスワード" value="">
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-6">
				<input type="submit" name="submit" class="btn btn-primary btn-sm" value="ログイン" />



	 		  </div>
			</div>
		</form>
		</div>
		</div><!-- /container -->

 <jsp:include page="footer.jsp"/>
