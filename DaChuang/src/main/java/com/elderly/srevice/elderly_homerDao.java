package com.elderly.srevice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.dao.Basedao;
import com.elderly.entity.homer_user;
import com.elderly.entity.worker_user;

public class elderly_homerDao {
		
	public static int add(homer_user e) {
		String sql = "insert into homer_user values(?, ?, ?, ?, ?)";
		
		Object[] params = {
				e.getHOMER_NAME(),
				e.getHOMER_PHONE(),
				e.getHOMER_TYPE(),
				e.getHOMER_EMAIL(),
				e.getHOMER_MASSAGE()};
		
		return Basedao.exectuIUD(sql, params);
}
	
	public static int del (String name) {
		String sql = "delete from homer_user where HOMER_NAME=? ";
		Object[] params = {name};
		return Basedao.exectuIUD(sql, params);
	}
	
	//获取总记录数和总页数
		public static int[] totalPages(int count,String keyword) {
			//0是总记录数，1是总页数
			int arr[] = {0,1};
			
			Connection conn = Basedao.getconn();
			PreparedStatement ps =null;
			ResultSet rs = null;
			
			
			
			try {
				String sql = "";
				if(keyword!=null) {
					sql = "select count(*) from homer_user where HOMER_NAME like ?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, "%"+keyword+"%");
				}else {
					sql = "select count(*) from homer_user";
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
		
		
		public static ArrayList<homer_user> selectAlls(int cpage,int count,String keyword) {
			ArrayList<homer_user> list = new ArrayList<homer_user>();
			//声明结果集
			ResultSet rs = null;
			//获取连接对象
			Connection conn = Basedao.getconn();
			
			PreparedStatement ps = null;
		
			try {
				String sql = "";
				if(keyword!=null) {
					sql = "select * from homer_user where HOMER_NAME like ? order by HOMER_PHONE desc limit ?, ?";
					
					ps = conn.prepareStatement(sql);
					ps.setString(1, "%"+keyword+"%");
					ps.setInt(2, (cpage-1)*count);
					ps.setInt(3, count);
				}else {
					sql = "select * from homer_user order by HOMER_PHONE desc limit ?, ?";
					ps = conn.prepareStatement(sql);
					
					ps.setInt(1, (cpage-1)*count);
					ps.setInt(2, count);
				}
				
				rs = ps.executeQuery();
				
				while(rs.next()) {
					homer_user e = new homer_user(
							rs.getString("HOMER_NAME"),
							rs.getString("HOMER_PHONE"),
							rs.getString("HOMER_TYPE"),
							rs.getString("HOMER_EMAIL"),	
							rs.getString("HOMER_MASSAGE")
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
		
		public static int update(homer_user e) {
			String sql = "update homer_user set HOMER_NAME=?, HOMER_PHONE=?, HOMER_TYPE=?, HOMER_EMAIL=? where HOMER_MASSAGE = ?";
			Object[] params = {
					e.getHOMER_NAME(),
					e.getHOMER_PHONE(),
					e.getHOMER_TYPE(),
					e.getHOMER_EMAIL(),
					e.getHOMER_MASSAGE()};		
			return Basedao.exectuIUD(sql, params);
	}
		
		
		//通过ID查找用户
		public static homer_user selectByID(String name) {
			homer_user u = null;
			//声明结果集
			ResultSet rs = null;
			//获取连接对象
			Connection conn = Basedao.getconn();
			
			PreparedStatement ps = null;
		
			try {
				String sql = "select * from homer_user where HOMER_NAME=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, name);
				
				
				rs = ps.executeQuery();
				while(rs.next()) {
							u = new homer_user(
									rs.getString("HOMER_NAME"),
									rs.getString("HOMER_PHONE"),
									rs.getString("HOMER_TYPE"),
									rs.getString("HOMER_EMAIL"),
									rs.getString("HOMER_MASSAGE")
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
