package com.internousdev.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.mysite1.dao.premierDAO;
import com.internousdev.mysite1.dto.premierDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PlayerSetAction extends ActionSupport implements SessionAware {

	private String clubname;
	private int id;
	private Map<String, Object> session;
	private premierDAO dao = new premierDAO();
	// private premierDTO dto=new premierDTO();
	private ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();
	private String leagueid;
	String i;

	public String execute() throws SQLException {
		String result = SUCCESS;

		if(leagueid.equals("1")){
			premierList = dao.getPremierClubInfo();
			session.put("premierList",premierList);
			i="1";
			session.put("league", i);
			return result;
		}
		else if(leagueid.equals("2")){
			premierList = dao.getLaligaClubInfo();
			session.put("premierList",premierList);
			i= "2";
			session.put("league", i);
			return result;
		}
		else if(leagueid.equals("3")){
			premierList = dao.getSerieClubInfo();
			session.put("premierList",premierList);
			i="3";
			session.put("league", i);
			return result;
		}
		else if(leagueid.equals("4")){
			premierList = dao.getBundesClubInfo();
			session.put("premierList",premierList);
			i="4";
			session.put("league", i);
			return result;
		}
		else if(leagueid.equals("5")){
			premierList = dao.getLigue1ClubInfo();
			session.put("premierList",premierList);
			i="5";
			session.put("league", i);
			return result;
		}
		return result;
	}

	public String getClubname() {
		return clubname;
	}

	public void setClubname(String clubname) {
		this.clubname = clubname;
	}

	public String getLeagueid() {
		return leagueid;
	}

	public void setLeagueid(String leagueid) {
		this.leagueid = leagueid;
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
