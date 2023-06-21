package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.Product;
import com.util.ProjectUtil;

public class ProductDao {

	public static void addProduct(Product p)
	{
		try {
			Connection conn=ProjectUtil.createConnection();
			String sql="insert into product(uid,product_category,product_name,product_price,product_desc,product_image,product_size) values(?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, p.getUid());
			pst.setString(2, p.getProduct_category());
			pst.setString(3, p.getProduct_name());
			pst.setInt(4, p.getProduct_price());
			pst.setString(5, p.getProduct_desc());
			pst.setString(6, p.getProduct_image());
			pst.setString(7, p.getProduct_size());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
