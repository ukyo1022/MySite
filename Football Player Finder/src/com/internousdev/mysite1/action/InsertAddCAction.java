package com.internousdev.mysite1.action;

import com.internousdev.mysite1.dao.AdminDAO;
import com.opensymphony.xwork2.ActionSupport;

public class InsertAddCAction extends ActionSupport{

	private String id;
	private String password;
	private String errorMessage;

	public String execute(){

		if(id.isEmpty()||password.isEmpty()){
			errorMessage="未入力の項目があります";
			return ERROR;
		}
		AdminDAO dao=new AdminDAO();
		boolean result=dao.insertAdmin(id, password);
		if(result){
			return SUCCESS;
		}
		errorMessage="登録に失敗しました";
		return ERROR;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
