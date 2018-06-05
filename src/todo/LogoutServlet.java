package todo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import todo.utils.HTMLUtils;

@WebServlet("/logout.html")
public class LogoutServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// ログインチェック
		if(!HTMLUtils.checkLogin(req, resp)) {
			return;
		}
		HttpSession session = req.getSession();
		session.setAttribute("user", null);

		//ログアウトメッセージ
		List<String> successes = new ArrayList<>();
		successes.add("ログアウトしました。");
		session.setAttribute("successes", successes);

		// リダイレクト
		resp.sendRedirect("login.html");


	}

}
