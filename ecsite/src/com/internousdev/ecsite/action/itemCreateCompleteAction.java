package com.internousdev.ecsite.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.itemCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class itemCreateCompleteAction extends ActionSupport implements SessionAware {

	private String itemName;
	private int price;
	private int stock;
	private itemCreateCompleteDAO dao=new itemCreateCompleteDAO();
	private Map<String,Object>session;

	public String execute() throws SQLException{
		String result=SUCCESS;
		dao.createItem(session.get("itemName").toString(),
				Integer.parseInt(session.get("price").toString()),
				Integer.parseInt(session.get("stock").toString()));
		return result;
	}

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName=itemName;
	}
	public int getPrice(){
		return price;
	}
	public void setPrice(int price){
		this.price=price;
	}
	public int getStock(){
		return stock;
	}
	public void setStock(int stock){
		this.stock=stock;
	}
	public Map<String,Object>setSession(){
		return this.session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
