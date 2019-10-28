package com.internousdev.ecsite.dto;

public class itemListDTO {

	private String itemName;
	private int price;
	private int stock;
	private String insert_date;

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName ){
		this.itemName=itemName;
	}
	public int getPrice(){
		return price;
	}
	public void setPrice(int price ){
		this.price=price;
	}
	public int getStock(){
		return stock;
	}
	public void setStock(int stock ){
		this.stock=stock;
	}
	public String getInsert_date(){
		return insert_date;
	}
	public void setInsert_date(String insert_date ){
		this.insert_date=insert_date;
	}
}
