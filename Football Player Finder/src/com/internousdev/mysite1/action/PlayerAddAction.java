package com.internousdev.mysite1.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.mysite1.dao.AdminDAO;
import com.opensymphony.xwork2.ActionSupport;

public class PlayerAddAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private String name;
	private String password;
	private String errorMessage;
	private AdminDAO dao = new AdminDAO();

	public String execute() {

		if (!session.containsKey("admin")) {
			if (name == null || password == null || name == "" || password == "") {
				errorMessage = "未入力の項目があります";
				return ERROR;
			}
		}else{
			return SUCCESS;
		}
		if (dao.isExists(name, password)) {
			session.put("admin", name);
		} else {
			errorMessage = "管理者ID、またはパスワードが違います";
			return ERROR;
		}
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
