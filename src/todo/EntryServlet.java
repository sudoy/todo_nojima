package todo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

import todo.utils.DBUtils;

@WebServlet("/entry.html")
public class EntryServlet extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		getServletContext().getRequestDispatcher("/WEB-INF/entry.jsp")
		.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String title = req.getParameter("title");
		String importance = req.getParameter("imp");
		String limitDate = req.getParameter("limit_date");

		List<String> errors =  validate(title, limitDate, importance);
		if(errors.size() > 0) {
			req.setAttribute("errors", errors);
			getServletContext().getRequestDispatcher("/WEB-INF/entry.jsp")
			.forward(req, resp);
 			return;
		}



		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;


		try{

			con = DBUtils.getConnection();

			sql = "INSERT INTO list(title, detail, imp, limit_date)values (?,?,?,?)";
			//INSERT命令の準備
			ps = con.prepareStatement(sql);
			//INSERT命令にポストデータの内容をセット
			ps.setString(1, req.getParameter("title"));
			ps.setString(2, req.getParameter("detail"));
			ps.setString(3, req.getParameter("imp"));
			ps.setString(4, limitDate.equals("") ? null : limitDate);


			ps.executeUpdate();
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


	private List<String> validate(String title, String limitDate, String importance) {
		List<String> errors = new ArrayList<>();
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
