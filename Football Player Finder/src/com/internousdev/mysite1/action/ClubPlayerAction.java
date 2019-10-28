package com.internousdev.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.mysite1.dao.ClubPlayerDAO;
import com.internousdev.mysite1.dto.ClubPlayerDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ClubPlayerAction extends ActionSupport implements SessionAware {

	private String clubname;
	private int leagueid;
	private ClubPlayerDAO dao=new ClubPlayerDAO();
	private ArrayList<ClubPlayerDTO>playerList=new ArrayList<ClubPlayerDTO>();
	private String playername;
	private int number;
	private String country;
	private String position;
	private Map<String,Object>session;
	String s;


	public String execute()throws SQLException {

		if(leagueid==1){
			playerList=dao.getPPlayer(clubname);
			s="1";
			session.put("id",s);
			return SUCCESS;
		}
		else if(leagueid==2){
			playerList=dao.getLPlayer(clubname);
			s="2";
			session.put("id",s);
			return SUCCESS;
		}
		else if(leagueid==3){
			playerList=dao.getSPlayer(clubname);
			s="3";
			session.put("id",s);
			return SUCCESS;
		}
		else if(leagueid==4){
			playerList=dao.getBPlayer(clubname);
			s="4";
			session.put("id",s);
			return SUCCESS;
		}
		else if(leagueid==5){
			playerList=dao.get1Player(clubname);
			s="5";
			session.put("id",s);
			return SUCCESS;
		}

		return SUCCESS;
	}

	public int getLeagueid(){
		return leagueid;
	}
	public void setLeagueid(int leagueid){
		this.leagueid=leagueid;
	}
	public String getClubname(){
		return clubname;
	}
	public void setClubname(String clubname){
		this.clubname=clubname;
	}
	public String getPlayername(){
		return playername;
	}
	public void setPlayername(String playername){
		this.playername=playername;
	}
	public int getNumber(){
		return number;
	}
	public void setNumber(int number){
		this.number=number;
	}
	public String getCountry(){
		return country;
	}
	public void setCountry(String country){
		this.country=country;
	}
	public String getPosition(){
		return position;
	}
	public void setPosition(String position){
		this.position=position;
	}
	public ArrayList<ClubPlayerDTO>getPlayerList(){
		return playerList;
	}
	public void setPlayerList(ArrayList<ClubPlayerDTO>playerList){
		this.playerList=playerList;
	}
	public Map<String, Object> getSession() {
		return this.session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
