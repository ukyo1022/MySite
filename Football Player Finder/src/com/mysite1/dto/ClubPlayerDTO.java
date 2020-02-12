package com.mysite1.dto;

import java.util.ArrayList;

public class ClubPlayerDTO {

	private String clubname;
	private String playername;
	private int number;
	private String country;
	private String position;
	private ArrayList<ClubPlayerDTO>premierplayerlist=new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO>laligaplayerlist=new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO>serieplayerlist=new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO>bundesplayerlist=new ArrayList<ClubPlayerDTO>();
	private ArrayList<ClubPlayerDTO>ligue1playerlist=new ArrayList<ClubPlayerDTO>();

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
		this.bundesplayerlist=bundesplayerlist;
	}

}
