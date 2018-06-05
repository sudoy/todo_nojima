package todo.utils;

import java.sql.Date;
import java.text.SimpleDateFormat;

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

	public static boolean checkLogin(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
//		if(session.getAttribute("login") == null) {
//
//			//ログインしていない
//			List<String> errors = new ArrayList<>();
//		}
		return false;
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


}
