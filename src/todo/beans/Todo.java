package todo.beans;

import java.sql.Date;

//JavaBeans
//→データベースから取得したデータを保持するためのクラス
public class Todo {
	private int id;
	private String title;
	private String detail;
	private String imp;
	private Date limitDate;

	public Todo(int id, String title,String detail, String imp, Date limitDate) {
		super();
		this.id = id;
		this.title = title;
		this.detail = detail;
		this.imp = imp;
		this.limitDate = limitDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getImp() {
		return imp;
	}

	public void setImp(String imp) {
		this.imp = imp;
	}

	public Date getLimitDate() {
		return limitDate;
	}

	public void setLimitDate(Date limitDate) {
		this.limitDate = limitDate;
	}



}