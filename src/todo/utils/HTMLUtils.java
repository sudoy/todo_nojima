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


}
