package com.mysite1.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.mysite1.dao.ClubPlayerDAO;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteThisPlayerAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private String playername;

	public String execute() throws SQLException {
		ClubPlayerDAO dao=new ClubPlayerDAO();
		String league = session.get("league").toString();
		boolean result=dao.deletePlayer(league,playername);
		if(result){
			return SUCCESS;
		}
		return ERROR;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getPlayername() {
		return playername;
	}

	public void setPlayername(String playername) {
		this.playername = playername;
	}
}
