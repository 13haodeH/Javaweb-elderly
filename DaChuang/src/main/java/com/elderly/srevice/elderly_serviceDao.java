package com.elderly.srevice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.dao.Basedao;
import com.elderly.entity.homer_user;
import com.elderly.entity.service_user;

public class elderly_serviceDao {
			
	public static int add1(service_user e) {
		String sql = "insert into service_user values(?, ?, ?, ?, ?)";
		
		Object[] params = {
				e.getSERVICE_NAME(),
				e.getSERVICE_AGE(),
				e.getSERVICE_PHONE(),
				e.getSERVICE_TYPE(),
				e.getSERVICE_WHAT()};
		
		return Basedao.exectuIUD(sql, params);
}
	public static int del (String name) {
		String sql = "delete from service_user where SERVICE_NAME=? ";
		Object[] params = {name};
		return Basedao.exectuIUD(sql, params);
	}
	
	public static ArrayList<service_user> selectAll(int cpage,int count,String keyword) {
		ArrayList<service_user> list = new ArrayList<service_user>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
	
		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select * from service_user where SERVICE_WHAT like ? order by SERVICE_PHONE desc limit ?, ?";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
				ps.setInt(2, (cpage-1)*count);
				ps.setInt(3, count);
			}else {
				sql = "select * from service_user order by SERVICE_PHONE desc limit ?, ?";
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, (cpage-1)*count);
				ps.setInt(2, count);
			}
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				service_user e = new service_user(
						rs.getString("SERVICE_NAME"),
						rs.getString("SERVICE_AGE"),	
						rs.getString("SERVICE_PHONE"),
						rs.getString("SERVICE_TYPE"),		
						rs.getString("SERVICE_WHAT")
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
						sql = "select count(*) from service_user where SERVICE_NAME like ?";
						ps = conn.prepareStatement(sql);
						ps.setString(1, "%"+keyword+"%");
					}else {
						sql = "select count(*) from service_user";
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
			
			public static int update(service_user e) {
				String sql = "update service_user set  SERVICE_AGE=?, SERVICE_PHONE=?, SERVICE_TYPE=? , SERVICE_WHAT=? where SERVICE_NAME = ?";
				Object[] params = {
						e.getSERVICE_AGE(),
						e.getSERVICE_PHONE(),
						e.getSERVICE_TYPE(),
						e.getSERVICE_WHAT(),
						e.getSERVICE_NAME()};		
				return Basedao.exectuIUD(sql, params);
		}
			
			//通过ID查找用户
			public static service_user selectByID(String name) {
				service_user u = null;
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "select * from service_user where SERVICE_NAME=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, name);
					
					
					rs = ps.executeQuery();
					while(rs.next()) {
								u = new service_user(
										rs.getString("SERVICE_NAME"),
										rs.getString("SERVICE_AGE"),	
										rs.getString("SERVICE_PHONE"),
										rs.getString("SERVICE_TYPE"),		
										rs.getString("SERVICE_WHAT")
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
