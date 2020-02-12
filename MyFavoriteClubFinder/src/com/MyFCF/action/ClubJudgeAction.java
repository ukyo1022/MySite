package com.MyFCF.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.MyFCF.dao.ClubJudgeDAO;
import com.MyFCF.dto.ClubJudgeDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ClubJudgeAction extends ActionSupport {

	private boolean isLikeStyle;
	private boolean isLikeAtack;
	private boolean isLikeFamous;
	private boolean isLikeRookie;
	private boolean isLikeWorldClass;
	private boolean isKnowPremier;
	private boolean isKnowLaliga;
	private boolean isKnowSerie;
	private boolean isKnowBundes;
	private boolean isKnowLigue1;
	ArrayList <ClubJudgeDTO> dtoList=new ArrayList<ClubJudgeDTO>();
	ClubJudgeDAO dao=new ClubJudgeDAO();

	public String execute() throws SQLException {

		byte Style=0;
		byte Aggressive=0;
		byte Famous=0;
		byte Rookie=0;
		byte WorldClass=0;
		byte league=0;
		int count=0;

		if(isLikeStyle) {
			Style=1;
		}
		if(isLikeAtack) {
			Aggressive=1;
		}
		if(isLikeFamous) {
			Famous=1;
		}
		if(isLikeRookie) {
			Rookie=1;
		}
		if(isLikeWorldClass) {
			WorldClass=1;
		}
		if(isKnowPremier) {
			league=1;
			count++;
		}
		if(isKnowLaliga) {
			league=2;
			count++;
		}
		if(isKnowSerie) {
			league=3;
			count++;
		}
		if(isKnowBundes) {
			league=4;
			count++;
		}
		if(isKnowLigue1) {
			league=5;
			count++;
		}
		if(count>=2) {
			return ERROR;
		}
		dtoList=dao.getClubName(Style, Aggressive, Famous, Rookie, WorldClass, league);

		if(dtoList.size()<=0) {
			return ERROR;
		}
		return SUCCESS;
	}

	public ArrayList<ClubJudgeDTO> getDtoList(){
		return dtoList;
	}
	public void setDtoList(ArrayList<ClubJudgeDTO>dtoList) {
		this.dtoList=dtoList;
	}
	public boolean getIsLikeStyle() {
		return isLikeStyle;
	}
	public void setIsLikeStyle(boolean isLikeStyle) {
		this.isLikeStyle=isLikeStyle;
	}
	public boolean getIsLikeAtack() {
		return isLikeAtack;
	}
	public void setIsLikeAtack(boolean isLikeAtack) {
		this.isLikeAtack=isLikeAtack;
	}
	public boolean getIsLikeFamous() {
		return isLikeFamous;
	}
	public void setIsLikeFamous(boolean isLikeFamous) {
		this.isLikeFamous=isLikeFamous;
	}
	public boolean getIsLikeRookie() {
		return isLikeRookie;
	}
	public void setIsLikeRookie(boolean isLikeRookie) {
		this.isLikeRookie=isLikeRookie;
	}
	public boolean getIsLikeWorldClass() {
		return isLikeWorldClass;
	}
	public void setIsLikeWorldClass(boolean isLikeWorldClass) {
		this.isLikeWorldClass=isLikeWorldClass;
	}
	public boolean getIsKnowPremier() {
		return isKnowPremier;
	}
	public void setIsKnowPremier(boolean isKnowPremier) {
		this.isKnowPremier=isKnowPremier;
	}
	public boolean getIsKnowLaliga() {
		return isKnowLaliga;
	}
	public void setIsKnowLaliga(boolean isKnowLaliga) {
		this.isKnowLaliga=isKnowLaliga;
	}
	public boolean getIsKnowSerie() {
		return isKnowSerie;
	}
	public void setIsKnowSerie(boolean isKnowSerie) {
		this.isKnowSerie=isKnowSerie;
	}
	public boolean getIsKnowBundes() {
		return isKnowBundes;
	}
	public void setIsKnowBundes(boolean isKnowBundes) {
		this.isKnowBundes=isKnowBundes;
	}
	public boolean getIsKnowLigue1() {
		return isKnowLigue1;
	}
	public void setIsKnowLigue1(boolean isKnowLigue1) {
		this.isKnowLigue1=isKnowLigue1;
	}
}
