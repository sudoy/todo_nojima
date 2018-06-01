package todo.utils;

import java.sql.Date;
import java.text.SimpleDateFormat;

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
