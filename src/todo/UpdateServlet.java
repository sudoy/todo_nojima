package todo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.ResolverStyle;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import todo.beans.Todo;
import todo.utils.DBUtils;

@WebServlet("/update.html")
public class UpdateServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {


		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;


		try{
			//データベースの接続を確立

			con = DBUtils.getConnection();

			//GETパラメーターを取得


			sql = "SELECT id, title, detail, imp, limit_date FROM list where id =?";

			ps= con.prepareStatement(sql);

			//SELECT文にパラメーターの内容をセット
			ps.setString(1, req.getParameter("id"));

			//SELCT命令を実行
			rs=ps.executeQuery();

			//ResultSet→JavaBeansに変換する
			rs.next();
			int id = rs.getInt("id");
			String title =rs.getString("title");
			String detail =rs.getString("detail");
			String imp =rs.getString("imp");
			Date limitDate =rs.getDate("limit_date");
			Todo list = new Todo(id,title,detail,imp,limitDate);
			req.setAttribute("list", list);



		//JSPへフォワード
			getServletContext().getRequestDispatcher("/WEB-INF/update.jsp")
			.forward(req, resp);

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

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();

		String id = req.getParameter("id");
		String title = req.getParameter("title");
		String importance = req.getParameter("imp");
		String limitDate = req.getParameter("limit_date");


		List<String> errors =  validate(id,title, limitDate, importance);
		if(errors.size() > 0) {
			session.setAttribute("errors", errors);
			getServletContext().getRequestDispatcher("/WEB-INF/update.jsp")
			.forward(req, resp);
 			return;
		}
		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;

		try{
			//データベースの接続を確立
			con = DBUtils.getConnection();

			sql = "UPDATE list SET title = ?, detail = ?, imp = ?, limit_date= ? WHERE id = ?";
			//INSERT命令の準備
			ps = con.prepareStatement(sql);

			//INSERT命令にポストデータの内容をセット
			ps.setString(1, req.getParameter("title"));
			ps.setString(2, req.getParameter("detail"));
			ps.setString(3, req.getParameter("imp"));
			ps.setString(4, limitDate.equals("") ? null : limitDate);
			ps.setString(5, req.getParameter("id"));


			//コマンドプロンプトで確認
			//Sysout(ps);

			//INSERT命令を実行
			ps.executeUpdate();
			List<String> successes = new ArrayList<String>();

			successes.add("更新しました。");
			session.setAttribute("successes", successes);
			resp.sendRedirect("index.html");
		}catch(Exception e){
			throw new ServletException(e);

		}finally{
			try{

				DBUtils.close(ps);
				DBUtils.close(con);
			}catch(Exception e){}
		}



	}
	private List<String> validate(String id,String title, String limitDate, String importance) {
		List<String> errors = new ArrayList<>();

		if(id == null || id.equals("")){
			errors.add("不正なアクセスです。");

		}

		if(title.equals("")){
			errors.add("題名は必須入力です。");

		}
		if(title.length() > 100) {
			errors.add("題名は100文字以内にして下さい。");
		}
		if(!limitDate.equals("")) {
			try {
				LocalDate.parse(limitDate, DateTimeFormatter.ofPattern("uuuu/MM/dd")
						.withResolverStyle(ResolverStyle.STRICT));

			}catch(Exception e) {
				errors.add("期限は「YYYY/MM/DD」形式で入力して下さい。");
			}
		}

		if(!importance.equals("★") && !importance.equals("★★")
				&& !importance.equals("★★★")) {
			errors.add("これは不正なアクセスです。");

		}
		return errors;

	}


}
