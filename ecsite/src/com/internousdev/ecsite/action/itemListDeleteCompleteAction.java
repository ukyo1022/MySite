package com.internousdev.ecsite.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.opensymphony.xwork2.ActionSupport;

public class itemListDeleteCompleteAction extends ActionSupport {

	private String deleteFlg;

	public String execute() {

		String result = ERROR;

		if (deleteFlg.equals("1")) {
			delete();
			result = SUCCESS;
		}
		return result;
	}

	public String getDeleteFlg() throws SQLException {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public void delete(){

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "delete from item_info_transaction";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			int i = ps.executeUpdate();

			if(i>0){
				System.out.println(i+"件削除されました");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
