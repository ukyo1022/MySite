package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.itemListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class itemListDAO {

	public ArrayList<itemListDTO>getItemList()
	throws SQLException {

		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<itemListDTO> itemlistdto=new ArrayList<itemListDTO>();

		String sql="select item_name,item_price,item_stock,insert_date from item_info_transaction";

		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				itemListDTO dto=new itemListDTO();
				dto.setItemName(rs.getString("item_name"));
				dto.setPrice(rs.getInt("item_price"));
				dto.setStock(rs.getInt("item_stock"));
				dto.setInsert_date(rs.getString("insert_date"));
				itemlistdto.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}

		return itemlistdto;
	}

}
