package com.internousdev.mysite1.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.mysite1.dao.premierDAO;
import com.internousdev.mysite1.dto.premierDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CountryAction extends ActionSupport implements SessionAware{

	private String country;
	private ArrayList<premierDTO> dtolist=new ArrayList<premierDTO>();
	premierDAO dao=new premierDAO();
	private String region;
	private Map<String,Object>session;

	public String execute() throws SQLException{

		String result=SUCCESS;
		dtolist=dao.getCountry(region);

		return result;
	}

	public String getCountry(){
		return country;
	}
	public void setCountry(String country){
		this.country=country;
	}

	public ArrayList<premierDTO> getDtolist() {
		return dtolist;
	}

	public void setDaolist(ArrayList<premierDTO> dtolist) {
		this.dtolist = dtolist;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}
	public Map<String,Object>getSession(){
		return this.session;
	}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
