package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.itemListDAO;
import com.internousdev.ecsite.dto.itemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class itemListAction extends ActionSupport implements SessionAware{

	private String message;
	private Map<String,Object>session;
	private ArrayList<itemListDTO> itemlist=new ArrayList<itemListDTO>();
	private itemListDAO dao=new itemListDAO();

	public String execute() throws SQLException{

		String result =SUCCESS;

		itemlist=dao.getItemList();

		return result;
	}

	public ArrayList<itemListDTO>getItemlist(){
		return itemlist;
	}
	public void setItemlist(ArrayList<itemListDTO>itemlist){
		this.itemlist=itemlist;
	}
	public Map<String,Object>getSession(){
		return this.session;
	}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
	public String getMessage(){
		return message;
	}
	public void setMessage(String message){
		this.message=message;
	}
}
