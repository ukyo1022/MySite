package com.internousdev.mysite1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.mysite1.util.DBConnector;

public class AdminDAO {

	public boolean isExists(String name, String password) {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		boolean result = false;

		String sql = "select * from admin where name=? and password=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				result = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public boolean insertAdmin(String id, String password) {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		boolean result = false;

		String sql = "insert into admin(name,password)values(?,?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			int r = ps.executeUpdate();
			if (r > 0) {
				result = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
}
