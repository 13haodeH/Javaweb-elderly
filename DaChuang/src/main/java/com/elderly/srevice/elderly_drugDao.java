package com.elderly.srevice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.dao.Basedao;
import com.elderly.entity.drug_user;
import com.elderly.entity.elderly_user;

public class elderly_drugDao {
	public static int insert(drug_user e) {
		String sql = "insert into drug_user values(?, ?, ?, ?, ?)";
		
		Object[] params = {
				e.getDRUG_ID(),
				e.getDRUG_NAME(),
				e.getDRUG_USE(),
				e.getDRUG_PRICE(),
				e.getDRUG_NUM()};
		
		return Basedao.exectuIUD(sql, params);
}
	
	public static int del (String id) {
		String sql = "delete from drug_user where DRUG_ID=? ";
		Object[] params = {id};
		return Basedao.exectuIUD(sql, params);
	}
	
	//获取总记录数和总页数
	public static int[] totalPage(int count,String keyword) {
		//0是总记录数，1是总页数
		int arr[] = {0,1};
		
		Connection conn = Basedao.getconn();
		PreparedStatement ps =null;
		ResultSet rs = null;
		
		
		
		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select count(*) from drug_user where DRUG_NAME like ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
			}else {
				sql = "select count(*) from drug_user";
				ps = conn.prepareStatement(sql);
				
			}
			rs = ps.executeQuery();
			while(rs.next()) {
				arr[0] = rs.getInt(1);
				if(arr[0]%count==0) {
						arr[1] = arr[0]/count;
				}else {
						arr[1] = arr[0]/count+1;
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		return arr;
	}
	
	public static ArrayList<drug_user> selectAll(int cpage,int count,String keyword) {
		ArrayList<drug_user> list = new ArrayList<drug_user>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
	
		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select * from drug_user where DRUG_NAME like ? order by DRUG_ID desc limit ?, ?";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
				ps.setInt(2, (cpage-1)*count);
				ps.setInt(3, count);
			}else {
				sql = "select * from drug_user order by DRUG_ID desc limit ?, ?";
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, (cpage-1)*count);
				ps.setInt(2, count);
			}
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				drug_user e = new drug_user(
						rs.getString("DRUG_ID"),
						rs.getString("DRUG_NAME"),
						rs.getString("DRUG_USE"),
						rs.getString("DRUG_PRICE"),
						rs.getString("DRUG_NUM")
						);
				list.add(e);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
				Basedao.closeall(rs, ps, conn);
		}
		
		return list;
	}
	
	
	public static int update(drug_user e) {
		String sql = "update drug_user set DRUG_NAME=?, DRUG_USE=?, DRUG_PRICE=?, DRUG_NUM=? where DRUG_ID = ?";
		
		Object[] params = {e.getDRUG_NAME(),e.getDRUG_USE(),e.getDRUG_PRICE(),e.getDRUG_NUM(),e.getDRUG_ID()};
		
		return Basedao.exectuIUD(sql, params);
}
	
	//通过ID查找用户
	public static drug_user selectByID(String id) {
		drug_user u = null;
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
	
		try {
			String sql = "select * from drug_user where DRUG_ID=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			
			
			rs = ps.executeQuery();
			while(rs.next()) {
						u = new drug_user(
								rs.getString("DRUG_ID"),
								rs.getString("DRUG_NAME"),
								rs.getString("DRUG_USE"),
								rs.getString("DRUG_PRICE"),
								rs.getString("DRUG_NUM")
						);
	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
				Basedao.closeall(rs, ps, conn);
		}
		
		return u;
	}
	
	
}
