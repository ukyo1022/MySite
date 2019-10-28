package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.dto.LoginDTO;
import com.internousdev.ecsite.util.DBConnector;

public class LoginDAO {

	public LoginDTO getLoginUserInfo(String loginUserId,String loginPassword){

		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		LoginDTO dto=new LoginDTO();

		String sql="select * from login_user_transaction where login_id=? and login_pass=?";

		try{
			PreparedStatement ps=con.prepareStatement(sql);

			ps.setString(1,loginUserId);
			ps.setString(2,loginPassword);

			ResultSet rs=ps.executeQuery();

			if(rs.next()){

				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));

				//SQL文の結果のログイン情報をDTOに格納
				if(rs.getString("login_id")!=null){
					//ログイン情報がDBに入っていれば
					dto.setLoginFlg(true);
					//trueでDTOに送る
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return dto;
	}
}
