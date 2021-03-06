package todo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todo.beans.Todo;
import todo.utils.DBUtils;
import todo.utils.HTMLUtils;


@WebServlet("/index.html")
public class IndexServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		// ログインチェック
		if(!HTMLUtils.checkLogin(req, resp)) {
			return;
		}

		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;

		try {
			con = DBUtils.getConnection();

			//sql
			sql = "SELECT id, title, imp, detail, limit_date FROM list ORDER BY id ";
			//SELECT命令の準備
			ps = con.prepareStatement(sql);
			//SELECT命令の実行
			rs = ps.executeQuery();


			List<Todo> list = new ArrayList<>();
			while(rs.next()) {
				Todo t = new Todo(
						rs.getInt("id"),
						rs.getString("title"),
						rs.getString("detail"),
						rs.getString("imp"),
						rs.getDate("limit_date"));
				list.add(t);

			}

			req.setAttribute("list", list);

			//JSPへフォワード
			getServletContext().getRequestDispatcher("/WEB-INF/index.jsp")
			.forward(req, resp);


		}catch(Exception e){
			throw new ServletException(e);

		}finally{
			try{


				DBUtils.close(rs);
				DBUtils.close(ps);
				DBUtils.close(con);

			}catch(Exception e){}
		}

	}

}
