package todo.utils;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HTMLUtils {

	public static String getFormat(Date d) {
		if(d == null) {
			return "";
		}
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		 return sdf.format(d);

	}
	public static String checkImportance(String param, String value) {
		if(param.equals("") && value.equals("★★★")) {
			return "checked";
		}else if(param.equals(value)) {
			return "checked";
		}else {
			return "";
		}
	}

	public static boolean checkLogin(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession session = req.getSession();

		//ログインチェック
		if(session.getAttribute("user") == null) {
			//ログインしていない
			List<String> errors = new ArrayList<>();
			errors.add("ログインして下さい。");
			session.setAttribute("errors", errors);
			resp.sendRedirect("login.html");
			return false;

		}else {
			return true;
		}

	}

}
//	public static String getIntFormat(int i) {
//		if(i == 1) {
//			return "★";
//		}else if(i == 2) {
//			return "★★";
//		}
//		else if(i == 3 ) {
//			return "★★★";
//		}
//		else {
//			return "";
//		}
//	}

	//SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
	//sdf.parse(req.getParameter("limit_date"));


