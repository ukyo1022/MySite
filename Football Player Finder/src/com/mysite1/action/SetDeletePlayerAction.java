package com.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.mysite1.dao.ClubPlayerDAO;
import com.mysite1.dto.ClubPlayerDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SetDeletePlayerAction extends ActionSupport implements SessionAware {

	private String clubname;
	private Map<String, Object> session;
	private ClubPlayerDAO dao = new ClubPlayerDAO();
	private ArrayList<ClubPlayerDTO> premierList = new ArrayList<>();

	public String execute() throws SQLException {

		String leagueid=session.get("league").toString();
		String result = ERROR;
		if (leagueid.equals("1")) {
			premierList = dao.getPPlayer(clubname);
			return SUCCESS;
		} else if (leagueid.equals("2")) {
			premierList = dao.getLPlayer(clubname);
			return SUCCESS;
		} else if (leagueid.equals("3")) {
			premierList = dao.getSPlayer(clubname);
			return SUCCESS;
		} else if (leagueid.equals("4")) {
			premierList = dao.getBPlayer(clubname);
			return SUCCESS;
		} else if (leagueid.equals("5")) {
			premierList = dao.get1Player(clubname);
		return SUCCESS;
		}
		return result;
	}

	public String getClubname() {
		return clubname;
	}

	public void setClubname(String clubname) {
		this.clubname = clubname;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<ClubPlayerDTO> getPremierList() {
		return premierList;
	}

	public void setPremierList(ArrayList<ClubPlayerDTO> premierList) {
		this.premierList = premierList;
	}
}
