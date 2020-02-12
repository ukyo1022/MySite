package com.mysite1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysite1.dto.premierDTO;
import com.mysite1.util.DBConnector;

public class premierDAO {

	// プレミアリーグのクラブ情報メソッド
	public ArrayList<premierDTO> getPremierClubInfo() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();

		String sql = "select * from premier_league";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				premierDTO dto = new premierDTO();
				dto.setId(rs.getInt("id"));
				dto.setClubname(rs.getString("club_name"));
				dto.setLeagueid(rs.getInt("leagueid"));
				premierList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return premierList;
	}

	// リーガ・エスパニョーラのクラブ情報メソッド
	public ArrayList<premierDTO> getLaligaClubInfo() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();

		String sql = "select * from laliga_league";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				premierDTO dto = new premierDTO();
				dto.setId(rs.getInt("id"));
				dto.setClubname(rs.getString("club_name"));
				dto.setLeagueid(rs.getInt("leagueid"));
				premierList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return premierList;
	}

	// セリエAのクラブ情報メソッド
	public ArrayList<premierDTO> getSerieClubInfo() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();

		String sql = "select * from serie_league";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				premierDTO dto = new premierDTO();
				dto.setId(rs.getInt("id"));
				dto.setClubname(rs.getString("club_name"));
				dto.setLeagueid(rs.getInt("leagueid"));
				premierList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return premierList;
	}

	// ブンデスリーガのクラブ情報メソッド
	public ArrayList<premierDTO> getBundesClubInfo() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();

		String sql = "select * from bundes_league";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				premierDTO dto = new premierDTO();
				dto.setId(rs.getInt("id"));
				dto.setClubname(rs.getString("club_name"));
				dto.setLeagueid(rs.getInt("leagueid"));
				premierList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return premierList;
	}

	// リーグアンのクラブ情報メソッド
	public ArrayList<premierDTO> getLigue1ClubInfo() throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<premierDTO> premierList = new ArrayList<premierDTO>();

		String sql = "select * from ligue1_league";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				premierDTO dto = new premierDTO();
				dto.setId(rs.getInt("id"));
				dto.setClubname(rs.getString("club_name"));
				dto.setLeagueid(rs.getInt("leagueid"));
				premierList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return premierList;
	}

	//国籍から探す
	public ArrayList<premierDTO> getCountry(String region) throws SQLException{

		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<premierDTO> premierList=new ArrayList<premierDTO>();

		String sql="select * from country where region=?";

		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,region);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				premierDTO dto=new premierDTO();
				dto.setCountry(rs.getString("country"));
				dto.setRegion(rs.getString("region"));
				premierList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return premierList;
	}
}
