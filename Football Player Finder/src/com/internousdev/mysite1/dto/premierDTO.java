package com.internousdev.mysite1.dto;

public class premierDTO {

	private String clubname;
	private int id;
	private int leagueid;
	private String country;
	private String region;

	public String getClubname(){
		return clubname;
	}
	public void setClubname(String clubname){
		this.clubname=clubname;
	}
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public int getLeagueid(){
		return leagueid;
	}
	public void setLeagueid(int leagueid){
		this.leagueid=leagueid;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
}
