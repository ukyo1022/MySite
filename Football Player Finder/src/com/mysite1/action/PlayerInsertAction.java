package com.mysite1.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.mysite1.dao.ClubPlayerDAO;
import com.opensymphony.xwork2.ActionSupport;

public class PlayerInsertAction extends ActionSupport implements SessionAware {

	private String playername;
	private String number;
	private String leagueplayer;
	private int Number;
	private String clubname;
	private String country;
	private String position;
	ClubPlayerDAO dao = new ClubPlayerDAO();
	private String errorMessage;
	private Map<String, Object> session;

	public String execute() throws SQLException {

		String result = ERROR;
		if (!(leagueplayer.equals("")) && !(playername.equals("")) && !(number.equals(""))
				&& !(clubname.equals("")) && !(country.equals("")) && !(position.equals(""))) {
			Number = Integer.parseInt(number);
			dao.InsertNewPlayerInfo(leagueplayer, playername, Number, clubname, country, position);
			session.remove("premierList");
			result = SUCCESS;
		}

		errorMessage="入力していない項目があります。";
		return result;
	}

	public String getPlayername() {
		return playername;
	}

	public void setPlayername(String playername) {
		this.playername = playername;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getLeagueplayer() {
		return leagueplayer;
	}

	public void setLeagueplayer(String leagueplayer) {
		this.leagueplayer = leagueplayer;
	}

	public String getClubname() {
		return clubname;
	}

	public void setClubname(String clubname) {
		this.clubname = clubname;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
