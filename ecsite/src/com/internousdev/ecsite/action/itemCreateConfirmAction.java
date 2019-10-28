package com.internousdev.ecsite.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class itemCreateConfirmAction extends ActionSupport implements SessionAware {

	private String itemName;
	private int price;
	private int stock;
	private Map<String,Object>session;
	private String errorMessage;
	String price2=String.valueOf(price);
	String stock2=String.valueOf(stock);
	public String execute(){
		String result=SUCCESS;
		if(!(itemName.equals(""))&&!(price2.equals(""))&&!(stock2.equals(""))){
			session.put("itemName",itemName);
			session.put("price",price);
			session.put("stock",stock);
		}else{
			result=ERROR;
			setErrorMessage("未入力の項目があります");
		}
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
	public void setStock(int  stock){
		this.stock=stock;
	}
	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
	public Map<String,Object>getSession(){
		return this.session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
