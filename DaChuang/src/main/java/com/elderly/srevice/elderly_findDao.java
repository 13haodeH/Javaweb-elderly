package com.elderly.srevice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.dao.Basedao;
import com.elderly.entity.find_user;
import com.elderly.entity.homer_user;

public class elderly_findDao {
	public static int add(find_user e) {
		String sql = "insert into find_user values(?, ?, ?, ?, ?)";
		
		Object[] params = {
				e.getFIND_NAME(),
				e.getFIND_AGE(),
				e.getFIND_PHONE(),
				e.getFIND_POSITION(),
				e.getFIND_FEATURES()};
		
		return Basedao.exectuIUD(sql, params);
}
	
	
	public static int del (String name) {
		String sql = "delete from find_user where FIND_NAME=? ";
		Object[] params = {name};
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
						sql = "select count(*) from find_user where FIND_NAME like ?";
						ps = conn.prepareStatement(sql);
						ps.setString(1, "%"+keyword+"%");
					}else {
						sql = "select count(*) from find_user";
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
			
			
			
			
			public static ArrayList<find_user> selectAll(int cpage,int count,String keyword) {
				ArrayList<find_user> list = new ArrayList<find_user>();
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "";
					if(keyword!=null) {
						sql = "select * from find_user where FIND_NAME like ? order by FIND_PHONE desc limit ?, ?";
						
						ps = conn.prepareStatement(sql);
						ps.setString(1, "%"+keyword+"%");
						ps.setInt(2, (cpage-1)*count);
						ps.setInt(3, count);
					}else {
						sql = "select * from find_user order by FIND_PHONE desc limit ?, ?";
						ps = conn.prepareStatement(sql);
						
						ps.setInt(1, (cpage-1)*count);
						ps.setInt(2, count);
					}
					
					rs = ps.executeQuery();
					
					while(rs.next()) {
						find_user e = new find_user(
								rs.getString("FIND_NAME"),
								rs.getString("FIND_AGE"),
								rs.getString("FIND_PHONE"),
								rs.getString("FIND_POSITION"),	
								rs.getString("FIND_FEATURES")
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
			
			public static int update(find_user e) {
				String sql = "update find_user set FIND_AGE=?, FIND_PHONE=?, FIND_POSITION=?,FIND_FEATURES=?  where FIND_NAME = ?";
				Object[] params = {
						e.getFIND_AGE(),
						e.getFIND_PHONE(),
						e.getFIND_POSITION(),
						e.getFIND_FEATURES(),
						e.getFIND_NAME()};		
				return Basedao.exectuIUD(sql, params);
		}
			
			
			//通过ID查找用户
			public static find_user selectByID(String name) {
				find_user u = null;
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "select * from find_user where FIND_NAME=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, name);
					
					
					rs = ps.executeQuery();
					while(rs.next()) {
								u = new find_user(
										rs.getString("FIND_NAME"),
										rs.getString("FIND_AGE"),
										rs.getString("FIND_PHONE"),
										rs.getString("FIND_POSITION"),	
										rs.getString("FIND_FEATURES")
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
