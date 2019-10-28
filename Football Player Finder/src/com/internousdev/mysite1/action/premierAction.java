package com.internousdev.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.mysite1.dao.premierDAO;
import com.internousdev.mysite1.dto.premierDTO;
import com.opensymphony.xwork2.ActionSupport;

public class premierAction extends ActionSupport implements SessionAware {

	private String clubname;
	private int id;
	private Map<String, Object> session;
	private premierDAO dao = new premierDAO();
	//private premierDTO dto=new premierDTO();
	private ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();
	private int leagueid;
	String i;

	public String execute() throws SQLException {
		String result = SUCCESS;

		premierList = dao.getPremierClubInfo();
		i="1";
		session.put("id",i);

		return result;
	}

	public String getClubname() {
		return clubname;
	}

	public void setClubname(String clubname) {
		this.clubname = clubname;
	}

	public int getLeagueid(){
		return leagueid;
	}
	public void setLeagueid(int leagueid){
		this.leagueid=leagueid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ArrayList<premierDTO> getPremierList() {
		return premierList;
	}

	public void setPremierList(ArrayList<premierDTO> premierList) {
		this.premierList = premierList;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
