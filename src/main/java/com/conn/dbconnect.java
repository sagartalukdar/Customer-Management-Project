package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {
    private static Connection con;
   
    public static Connection getConnection() {
    	try {
			if(con==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://root@localhost:3306/customer","root","Sagar325@#");
			    

			}
		} catch (Exception e) {
			System.out.println(e);
		}
    	return con;
    }
	public static void main(String[] args) {
	
	}

}
