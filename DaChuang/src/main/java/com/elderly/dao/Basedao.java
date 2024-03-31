package com.elderly.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.elderly.entity.elderly_user;


public class Basedao {
	
		static {
					//加载驱动
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		}
	
		public static Connection getconn() {
			//创建一个连接对象
			Connection conn = null;
		
			try {
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/elderlyhome?useSSl=false&serverTimezone=UTC&useUnicod=true&characterEncoding=utf8","root","abc123");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return conn;
		}
		
		public static int exectuIUD(String sql, Object[] params) {
					int count = 0;
					Connection conn = Basedao.getconn();
					
					//准备sql
					PreparedStatement ps = null;
					//
					try {
						ps = conn.prepareStatement(sql);
						for(int i = 0;i<params.length;i++) {
								ps.setObject(i+1, params[i]);
						}
						count = ps.executeUpdate();
						
					} catch (SQLException e) {
						// TODO: handle exception
						e.printStackTrace();
					}finally {
						Basedao.closeall(null, ps, conn);
					}
					return count;
		}
		
		public static void closeall(ResultSet rs, PreparedStatement ps, Connection conn) {
			try {
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			try {
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			try {
				if(ps!=null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			
 		}
		
}
