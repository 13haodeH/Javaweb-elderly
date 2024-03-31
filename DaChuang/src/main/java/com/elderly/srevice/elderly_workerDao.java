package com.elderly.srevice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.dao.Basedao;
import com.elderly.entity.elderly_user;
import com.elderly.entity.worker_user;

public class elderly_workerDao {
	public static int insert(worker_user e) {
		String sql = "insert into worker_user values(?, ?, ?, ?, ?, ?)";
		
		Object[] params = {
				e.getUSER_NAME(),
				e.getUSER_SEX(),
				e.getUSER_PHONE(),
				e.getUSER_CHOSE(),
				e.getUSER_STATU(),
				e.getUSER_MASSAGE()};
		
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
				sql = "select count(*) from worker_user where USER_NAME like ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
			}else {
				sql = "select count(*) from worker_user";
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
	
	public static ArrayList<worker_user> selectAll(int cpage,int count,String keyword) {
		ArrayList<worker_user> list = new ArrayList<worker_user>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
	
		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select * from worker_user where USER_NAME like ? order by USER_PHONE desc limit ?, ?";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
				ps.setInt(2, (cpage-1)*count);
				ps.setInt(3, count);
			}else {
				sql = "select * from worker_user order by USER_PHONE desc limit ?, ?";
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, (cpage-1)*count);
				ps.setInt(2, count);
			}
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				worker_user e = new worker_user(
						rs.getString("USER_NAME"),
						rs.getString("USER_SEX"),
						rs.getString("USER_PHONE"),
						rs.getString("USER_CHOSE"),
						rs.getString("USER_STATU"),
						rs.getString("USER_MASSAGE")
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
	public static int del (String name) {
		String sql = "delete from worker_user where USER_NAME=? ";
		Object[] params = {name};
		return Basedao.exectuIUD(sql, params);
	}
	public static int update(worker_user e) {
		String sql = "update worker_user set USER_NAME=?, USER_SEX=?, USER_PHONE=?, USER_CHOSE=?, USER_STATU=? where USER_MASSAGE = ?";
		Object[] params = {
				e.getUSER_NAME(),
				e.getUSER_SEX(),
				e.getUSER_PHONE(),
				e.getUSER_CHOSE(),
				e.getUSER_STATU(),
				e.getUSER_MASSAGE()};		
		return Basedao.exectuIUD(sql, params);
}
	
	
	//通过ID查找用户
	public static worker_user selectByID(String name) {
		worker_user u = null;
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
	
		try {
			String sql = "select * from worker_user where USER_NAME=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			
			
			rs = ps.executeQuery();
			while(rs.next()) {
						u = new worker_user(
								rs.getString("USER_NAME"),
								rs.getString("USER_SEX"),
								rs.getString("USER_PHONE"),
								rs.getString("USER_CHOSE"),
								rs.getString("USER_STATU"),
								rs.getString("USER_MASSAGE")
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
