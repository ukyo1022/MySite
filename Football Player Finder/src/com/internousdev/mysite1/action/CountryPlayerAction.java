package com.internousdev.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.mysite1.dao.ClubPlayerDAO;
import com.internousdev.mysite1.dto.ClubPlayerDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CountryPlayerAction extends ActionSupport {

	private String country;
	private ArrayList<ClubPlayerDTO> premierplayerlist = new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO> laligaplayerlist = new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO> serieplayerlist = new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO> bundesplayerlist = new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO> ligue1playerlist = new ArrayList<ClubPlayerDTO>();
	private ClubPlayerDAO dao = new ClubPlayerDAO();

	public String execute() throws SQLException {
		String result = SUCCESS;

		if (country != null) {
			premierplayerlist = dao.getCountrypPlayer(country);
			laligaplayerlist = dao.getCountrylPlayer(country);
			serieplayerlist = dao.getCountrysPlayer(country);
			bundesplayerlist = dao.getCountrybPlayer(country);
			ligue1playerlist = dao.getCountry1Player(country);

			return result;
		}
		return result;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public ArrayList<ClubPlayerDTO> getPremierplayerlist() {
		return premierplayerlist;
	}

	public void setPremierplayerlist(ArrayList<ClubPlayerDTO> premierplayerlist) {
		this.premierplayerlist = premierplayerlist;
	}

	public ArrayList<ClubPlayerDTO> getLaligaplayerlist() {
		return laligaplayerlist;
	}

	public void setLaligaplayerlist(ArrayList<ClubPlayerDTO> laligaplayerlist) {
		this.laligaplayerlist = laligaplayerlist;
	}

	public ArrayList<ClubPlayerDTO> getSerieplayerlist() {
		return serieplayerlist;
	}

	public void setSerieplayerlist(ArrayList<ClubPlayerDTO> serieplayerlist) {
		this.serieplayerlist = serieplayerlist;
	}

	public ArrayList<ClubPlayerDTO> getLigue1playerlist() {
		return ligue1playerlist;
	}

	public void setLigue1playerlist(ArrayList<ClubPlayerDTO> ligue1playerlist) {
		this.ligue1playerlist = ligue1playerlist;
	}

	public ArrayList<ClubPlayerDTO> getBundesplayerlist() {
		return bundesplayerlist;
	}

	public void setBundesplayerlist(ArrayList<ClubPlayerDTO> bundesplayerlist) {
		this.bundesplayerlist = bundesplayerlist;
	}

}
