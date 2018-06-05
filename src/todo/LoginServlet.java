package todo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todo.utils.DBUtils;

@WebServlet("/login.html")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/login.jsp")
		.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//バリデーションチェック



		//関連チェック

		String email = req.getParameter("email");
		String pw = req.getParameter("password");
		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;
		try{
			//データベースの接続を確立
			con = DBUtils.getConnection();
			//GETパラメーターを取得
			sql = "SELECT id from users where email = ? and password = ?";
			ps= con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pw);
			//SELCT命令を実行
			rs=ps.executeQuery();

			if(rs.next()) {
				//email passwordが正しいとき
				//ログイン処理
				resp.sendRedirect("index.html");
			}else {
				getServletContext().getRequestDispatcher("/WEB-INF/login.jsp")
				.forward(req, resp);
			}

		}catch(Exception e){
			throw new ServletException(e);

		}finally{
			try{
				if(con != null){con.close();}
				if(ps != null){ps.close();}
				if(rs != null){rs.close();}
			}catch(Exception e){}
		}



	}
//	private List<String> validate(String id,String title, String limitDate, String importance) {
//		List<String> errors = new ArrayList<>();
//
//		if(id == null || id.equals("")){
//			errors.add("不正なアクセスです。");
//
//		}
//
//		if(title.equals("")){
//			errors.add("題名は必須入力です。");
//
//		}
//		if(title.length() > 100) {
//			errors.add("題名は100文字以内にして下さい。");
//		}
//		if(!limitDate.equals("")) {
//			try {
//				LocalDate.parse(limitDate, DateTimeFormatter.ofPattern("uuuu/MM/dd")
//						.withResolverStyle(ResolverStyle.STRICT));
//
//			}catch(Exception e) {
//				errors.add("期限は「YYYY/MM/DD」形式で入力して下さい。");
//			}
//		}
//
//		if(!importance.equals("★") && !importance.equals("★★")
//				&& !importance.equals("★★★")) {
//			errors.add("これは不正なアクセスです。");
//
//		}
//		return errors;
//
//	}

}
