package com.internousdev.mysite1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.mysite1.dto.ClubPlayerDTO;
import com.internousdev.mysite1.util.DBConnector;

public class ClubPlayerDAO {

	// プレミアリーグの選手情報取得メソッド
	public ArrayList<ClubPlayerDTO> getPPlayer(String clubname) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();

		String sql = "select * from premier_player where club_name=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, clubname);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	// リーガ・エスパニョーラの選手情報取得メソッド
	public ArrayList<ClubPlayerDTO> getLPlayer(String clubname) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();

		String sql = "select * from laliga_player where club_name=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, clubname);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	// セリエAの選手情報取得メソッド
	public ArrayList<ClubPlayerDTO> getSPlayer(String clubname) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();

		String sql = "select * from serie_player where club_name=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, clubname);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	// ブンデスリーガの選手情報取得メソッド
	public ArrayList<ClubPlayerDTO> getBPlayer(String clubname) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();

		String sql = "select * from bundes_player where club_name=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, clubname);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	// リーグ・アンの選手情報取得メソッド
	public ArrayList<ClubPlayerDTO> get1Player(String clubname) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();

		String sql = "select * from ligue1_player where club_name=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, clubname);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	// 選手追加機能
	public void InsertNewPlayerInfo(String leagueplayer, String playername, int Number, String clubname, String country,
			String position) throws SQLException {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = null;
		if (leagueplayer.equals("1")) {
			sql = "insert into premier_player(player_name,number,club_name,player_country,position)values(?,?,?,?,?)";
		} else if (leagueplayer.equals("2")) {
			sql = "insert into laliga_player(player_name,number,club_name,player_country,position)values(?,?,?,?,?)";
		} else if (leagueplayer.equals("3")) {
			sql = "insert into serie_player(player_name,number,club_name,player_country,position)values(?,?,?,?,?)";
		} else if (leagueplayer.equals("4")) {
			sql = "insert into bundes_player(player_name,number,club_name,player_country,position)values(?,?,?,?,?)";
		} else if (leagueplayer.equals("5")) {
			sql = "insert into ligue1_player(player_name,number,club_name,player_country,position)values(?,?,?,?,?)";
		}
		try {
			int i;
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, playername);
			ps.setInt(2, Number);
			ps.setString(3, clubname);
			ps.setString(4, country);
			ps.setString(5, position);
			i = ps.executeUpdate();
			if (i == 0) {
				System.out.println("登録に失敗しました");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
	}

	public ArrayList<ClubPlayerDTO> getCountrypPlayer(String country) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();
		String sql = "select * from premier_player where player_country=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, country);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	public ArrayList<ClubPlayerDTO> getCountrylPlayer(String country) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();
		String sql = "select * from laliga_player where player_country=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, country);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	public ArrayList<ClubPlayerDTO> getCountrysPlayer(String country) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();
		String sql = "select * from serie_player where player_country=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, country);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	public ArrayList<ClubPlayerDTO> getCountrybPlayer(String country) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();
		String sql = "select * from bundes_player where player_country=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, country);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	public ArrayList<ClubPlayerDTO> getCountry1Player(String country) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();
		String sql = "select * from ligue1_player where player_country=? order by case position " + "when 'GK' then 1 "
				+ "when 'CB' then 2 " + "when 'LSB' then 3 " + "when 'RSB' then 4 " + "when 'MF' then 5 "
				+ "when 'LMF' then 6 " + "when 'RMF' then 7 " + "when 'LWF' then 8 " + "when 'RWF' then 9 "
				+ "when 'ST' then 10 " + "else 11 " + "end asc";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, country);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setClubname(rs.getString("club_name"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setNumber(rs.getInt("number"));
				dto.setCountry(rs.getString("player_country"));
				dto.setPosition(rs.getString("position"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}

	public ArrayList<ClubPlayerDTO> getPositionPlayer(int league, String position) throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ClubPlayerDTO> playerList = new ArrayList<ClubPlayerDTO>();
		String sql="select * from premier_player where position=?";
		if(league==1){
			sql="select * from premier_player where position=?";
		}
		else if(league==2){
			sql="select * from laliga_player where position=?";
		}
		else if(league==3){
			sql="select * from serie_player where position=?";
		}
		else if(league==4){
			sql="select * from bundes_player where position=?";
		}
		else if(league==5){
			sql="select * from ligue1_player where position=?";
		}


		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1,position);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ClubPlayerDTO dto = new ClubPlayerDTO();
				dto.setPosition(rs.getString("position"));
				dto.setPlayername(rs.getString("player_name"));
				dto.setCountry(rs.getString("player_country"));
				dto.setClubname(rs.getString("club_name"));
				playerList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return playerList;
	}
}
