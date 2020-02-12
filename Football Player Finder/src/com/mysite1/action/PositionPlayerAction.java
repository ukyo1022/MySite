package com.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysite1.dao.ClubPlayerDAO;
import com.mysite1.dto.ClubPlayerDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PositionPlayerAction extends ActionSupport{

	private String position;
	ClubPlayerDAO dao=new ClubPlayerDAO();
	private List<ClubPlayerDTO>premier=new ArrayList<ClubPlayerDTO>();
	private List<ClubPlayerDTO>laliga=new ArrayList<ClubPlayerDTO>();
	private List<ClubPlayerDTO>serie=new ArrayList<ClubPlayerDTO>();
	private List<ClubPlayerDTO>bundes=new ArrayList<ClubPlayerDTO>();
	private List<ClubPlayerDTO>ligue1=new ArrayList<ClubPlayerDTO>();
	public String execute() throws SQLException{

		premier=dao.getPositionPlayer(1, position);
		laliga=dao.getPositionPlayer(2, position);
		serie=dao.getPositionPlayer(3, position);
		bundes=dao.getPositionPlayer(4, position);
		ligue1=dao.getPositionPlayer(5, position);

		return SUCCESS;
	}
	public List<ClubPlayerDTO> getPremier() {
		return premier;
	}
	public void setPremier(List<ClubPlayerDTO> premier ){
		this.premier = premier;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public List<ClubPlayerDTO> getLaliga() {
		return laliga;
	}
	public void setLaliga(List<ClubPlayerDTO> laliga) {
		this.laliga = laliga;
	}
	public List<ClubPlayerDTO> getSerie() {
		return serie;
	}
	public void setSerie(List<ClubPlayerDTO> serie) {
		this.serie = serie;
	}
	public List<ClubPlayerDTO> getBundes() {
		return bundes;
	}
	public void setBundes(List<ClubPlayerDTO> bundes) {
		this.bundes = bundes;
	}
	public List<ClubPlayerDTO> getLigue1() {
		return ligue1;
	}
	public void setLigue1(List<ClubPlayerDTO> ligue1) {
		this.ligue1 = ligue1;
	}
}
