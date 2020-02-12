package com.MyFCF.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.MyFCF.dto.ClubJudgeDTO;
import com.MyFCF.util.DBConnector;
import com.opensymphony.xwork2.ActionSupport;

public class ClubJudgeDAO extends ActionSupport {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public ArrayList<ClubJudgeDTO> getClubName(byte style, byte aggressive, byte isFamous, byte rookie, byte worldclass,
			byte league) throws SQLException {

		ArrayList<ClubJudgeDTO> dtoList = new ArrayList<>();
		String sql = "select * from findclubs where style=? and aggressive=? and isFamous=? and rookie=? and worldclass=? ";
		if (league != 0){
			sql += "and leaguenumber=";
			switch (league) {
			case 1:
				sql += "1";
				break;
			case 2:
				sql += "2";
				break;
			case 3:
				sql += "3";
				break;
			case 4:
				sql += "4";
				break;
			case 5:
				sql += "5";
				break;
			default:
				break;
			}
		}
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setByte(1, style);
			ps.setByte(2, aggressive);
			ps.setByte(3, isFamous);
			ps.setByte(4, rookie);
			ps.setByte(5, worldclass);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubJudgeDTO dto = new ClubJudgeDTO();
				dto.setClubname(rs.getString("clubname"));
				dto.setImage(rs.getString("emblem"));
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return dtoList;
	}
}
