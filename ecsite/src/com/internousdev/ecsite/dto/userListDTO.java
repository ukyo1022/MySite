package com.internousdev.ecsite.dto;

public class userListDTO {

	private String itemName;
	private String price;
	private String stock;
	private String insert_date;

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName ){
		this.itemName=itemName;
	}
	public String getPrice(){
		return price;
	}
	public void setPrice(String price ){
		this.price=price;
	}
	public String getStock(){
		return stock;
	}
	public void setStock(String stock ){
		this.stock=stock;
	}
	public String getInsert_date(){
		return insert_date;
	}
	public void setInsert_date(String insert_date ){
		this.insert_date=insert_date;
	}
}
