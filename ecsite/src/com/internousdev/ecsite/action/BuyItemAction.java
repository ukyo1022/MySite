package com.internousdev.ecsite.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class BuyItemAction extends ActionSupport implements SessionAware {

	private Map<String,Object>session;
	private int count;
	private String pay;

	public String execute(){
		String result=SUCCESS;
		session.put("count", count);//買った個数をセッションput

		int intCount =Integer.parseInt(session.get("count").toString());
		int intPrice =Integer.parseInt(session.get("buyItem_price").toString());
		//個数、値段を Object型⇒String型⇒int型の順に変換
		session.put("total_price",intCount*intPrice);
		//合計料金＝個数*値段 をセッションput
		String payment;

		if(pay.equals("1")){
			//jspから送られてきた値が1なら
			payment="現金払い";
			session.put("pay", payment);
		}else{
			//それ以外
			payment="クレジットカード";
			session.put("pay", payment);
		}
		return result;
	}

	public void setCount(int count){
		this.count=count;
	}
	public void setPay(String pay){
		this.pay=pay;
	}
	public Map<String,Object>getSession(){
		return this.session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
