package todo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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


			sql = "SELECT * FROM list where id =?";

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

}
