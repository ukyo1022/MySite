package com.internousdev.ecsite.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;
public class UserCreateCompleteDAO {

	public void createUser(String loginUserId,String loginUserPassword,String userName)throws SQLException{

		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		DateUtil du=new DateUtil();

		String sql="insert into login_user_transaction(login_id,login_pass,user_name,insert_date)values(?,?,?,?)";

		try{
			//アクションで格納された登録情報でsql文を実行
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,loginUserId);
			ps.setString(2, loginUserPassword);
			ps.setString(3, userName);
			ps.setString(4, du.getDate());

			ps.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
	}
}
