package com.elderly.srevice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.dao.Basedao;
import com.elderly.entity.backstage_user;
import com.elderly.entity.elderly_user;
import com.elderly.entity.register_user;

public class elderly_userDao {//加入数据库
			public static int insert(elderly_user e) {
						String sql = "insert into elderly_user values(?, ?, ?, ?, ?)";
						
						Object[] params = {e.getUSER_ID(),e.getUSER_NAME(),e.getUSER_SEX(),e.getUSER_NUM(),e.getUSER_HEALTH()};
						
						return Basedao.exectuIUD(sql, params);
			}
			public static int insert1(register_user e) {
				String sql = "insert into register_user values(?, ?, ?, ?)";
				
				Object[] params = {e.getUSER_NAME(),e.getUSER_PASSWORD(),e.getUSER_REPASSWORD(),e.getUSER_PHONE()};
				
				return Basedao.exectuIUD(sql, params);
	}
			
			public static int update(elderly_user e) {
				String sql = "update elderly_user set USER_NAME=?, USER_SEX=?, USER_NUM=?, USER_HEALTH=? where USER_ID = ?";
				
				Object[] params = {e.getUSER_NAME(),e.getUSER_SEX(),e.getUSER_NUM(),e.getUSER_HEALTH(),e.getUSER_ID()};
				
				return Basedao.exectuIUD(sql, params);
	}
			
			public static int del (String id) {
				String sql = "delete from elderly_user where USER_ID=? ";
				Object[] params = {id};
				return Basedao.exectuIUD(sql, params);
			}
			
			//获取总记录数和总页数
			public static int selectByName(String id) {
				int count = 0;
				Connection conn = Basedao.getconn();
				PreparedStatement ps =null;
				ResultSet rs = null;
				
				
				
				try {
					String sql = "select count(*) from register_user where USER_NAME=?";
						ps = conn.prepareStatement(sql);
						ps.setString(1, id);
		
					rs = ps.executeQuery();
					while(rs.next()) {
						count = rs.getInt(1);
						
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					Basedao.closeall(rs, ps, conn);
				}
				
				return count;
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
						sql = "select count(*) from elderly_user where USER_NAME like ?";
						ps = conn.prepareStatement(sql);
						ps.setString(1, "%"+keyword+"%");
					}else {
						sql = "select count(*) from elderly_user";
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
			
			
			public static ArrayList<elderly_user> selectAll(int cpage,int count,String keyword) {
				ArrayList<elderly_user> list = new ArrayList<elderly_user>();
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "";
					if(keyword!=null) {
						sql = "select * from elderly_user where USER_NAME like ? order by USER_ID desc limit ?, ?";
						
						ps = conn.prepareStatement(sql);
						ps.setString(1, "%"+keyword+"%");
						ps.setInt(2, (cpage-1)*count);
						ps.setInt(3, count);
					}else {
						sql = "select * from elderly_user order by USER_ID desc limit ?, ?";
						ps = conn.prepareStatement(sql);
						
						ps.setInt(1, (cpage-1)*count);
						ps.setInt(2, count);
					}
					
					rs = ps.executeQuery();
					
					while(rs.next()) {
						elderly_user e = new elderly_user(
								rs.getString("USER_ID"),
								rs.getString("USER_NAME"),
								rs.getString("USER_SEX"),
								rs.getString("USER_NUM"),
								rs.getString("USER_HEALTH")
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
			
			//通过ID查找用户
			public static elderly_user selectByID(String id) {
				elderly_user u = null;
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "select * from elderly_user where USER_ID=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, id);
					
					
					rs = ps.executeQuery();
					while(rs.next()) {
								u = new elderly_user(
								rs.getString("USER_ID"),
								rs.getString("USER_NAME"),
								rs.getString("USER_SEX"),
								rs.getString("USER_NUM"),
								rs.getString("USER_HEALTH")
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
			
			public static int selectByRegister(String name,String pwd) {
				int count = 0;
				Connection conn = Basedao.getconn();
				PreparedStatement ps =null;
				ResultSet rs = null;
	
				try {
					String sql = "select count(*) from register_user where USER_NAME=? and USER_PASSWORD=?";
						ps = conn.prepareStatement(sql);
						ps.setString(1, name);
						ps.setString(2, pwd);
		
					rs = ps.executeQuery();
					while(rs.next()) {
						count = rs.getInt(1);
						
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					Basedao.closeall(rs, ps, conn);
				}
				
				
				return count;
				
			}
			
			//通过用户名和密码查询用户信息
			public static register_user selectAdmin(String name,String pwd) {
				register_user u = null;
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "select * from register_user where USER_NAME=? and USER_PASSWORD=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, name);
					ps.setString(2, pwd);
					
					
					rs = ps.executeQuery();
					
					while(rs.next()) {
								u = new register_user(
								rs.getString("USER_NAME"),
								rs.getString("USER_PASSWORD"),
								rs.getString("USER_REPASSWORD"),
								rs.getString("USER_PHONE")
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
			
			
			public static int selectBybackstage(String name,String pwd) {
				int count = 0;
				Connection conn = Basedao.getconn();
				PreparedStatement ps =null;
				ResultSet rs = null;
	
				try {
					String sql = "select count(*) from backstage_user where USER_NAME=? and USER_PASSWORD=?";
						ps = conn.prepareStatement(sql);
						ps.setString(1, name);
						ps.setString(2, pwd);
		
					rs = ps.executeQuery();
					while(rs.next()) {
						count = rs.getInt(1);
						
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					Basedao.closeall(rs, ps, conn);
				}
				
				
				return count;
				
			}
			
			
			//通过用户名和密码查询用户信息
			public static backstage_user selectbackstage(String name,String pwd) {
				backstage_user u = null;
				//声明结果集
				ResultSet rs = null;
				//获取连接对象
				Connection conn = Basedao.getconn();
				
				PreparedStatement ps = null;
			
				try {
					String sql = "select * from backstage_user where USER_NAME=? and USER_PASSWORD=?";
					ps = conn.prepareStatement(sql);
					ps.setString(1, name);
					ps.setString(2, pwd);
					
					
					rs = ps.executeQuery();
					
					while(rs.next()) {
								u = new backstage_user(
								rs.getString("USER_NAME"),
								rs.getString("USER_PASSWORD")
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
