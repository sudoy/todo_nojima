<%@page import="java.sql.*, javax.naming.*, javax.sql.*"%>

<%@page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>データベース接続</title>
	</head>
	<body>
<%
	//context.xmlのリソースへアクセス
	Context initContext = new InitialContext();
	Context envContext  =(Context)initContext.lookup("java:/comp/env");
	DataSource ds = (DataSource)envContext.lookup("jdbc/mysql");

	//コネクションプールからコネクションを1つもらう
	Connection con = ds.getConnection();

	//コネクションを返す
	con.close();


%>データベースの接続に成功
	</body>
</html>