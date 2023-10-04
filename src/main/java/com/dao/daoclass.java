package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.conn.dbconnect;
import com.entity.Customer;


public class daoclass {

	private Connection con;
	
	public daoclass(Connection con) {
		super();
		this.con = con;
	}

	public boolean addcustomer(Customer c) {
		boolean b=false;
		try {
			PreparedStatement ps=con.prepareStatement("insert into datatable (FirstName,LastName,Address,City,State,Email,Phone) values(?,?,?,?,?,?,?)");
			ps.setString(1, c.getFirstname());
			ps.setString(2, c.getLastname());
			ps.setString(3, c.getAddress());
			ps.setString(4,c.getCity());
			ps.setString(5, c.getState());
			ps.setString(6, c.getEmail());
			ps.setString(7, c.getPhone());
			int a=ps.executeUpdate();
			if(a==1)b=true;
		} catch (Exception e) {
			System.out.print(e);
		}
		return b;
	}
	public List<Customer> show(){
		List<Customer>sl=new ArrayList<>();
		try {
			PreparedStatement ps=con.prepareStatement("select * from datatable");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Customer c=new Customer();
				c.setId(rs.getInt(1));
				c.setFirstname(rs.getString(2));
				c.setLastname(rs.getString(3));
				c.setAddress(rs.getString(4));
				c.setCity(rs.getString(5));
				c.setState(rs.getString(6));
				c.setEmail(rs.getString(7));
				c.setPhone(rs.getString(8));
				
				sl.add(c);
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return sl;
	}
	public Customer getcustomer(int id) {
		Customer c=new Customer();
		try {
			PreparedStatement ps=con.prepareStatement("select * from datatable where Id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c.setId(rs.getInt(1));
				c.setFirstname(rs.getString(2));
				c.setLastname(rs.getString(3));
				c.setAddress(rs.getString(4));
				c.setCity(rs.getString(5));
				c.setState(rs.getString(6));
				c.setEmail(rs.getString(7));
				c.setPhone(rs.getString(8));
			}
		
		} catch (Exception e) {
			System.out.print(e);
		}
		return c;
	}
	public boolean updatecustomer(Customer c) {
		boolean b=false;
		try {
			PreparedStatement ps=con.prepareStatement("update datatable set FirstName=?,LastName=?,Address=?,City=?,State=?,Email=?,Phone=? where Id=?");
			ps.setString(1, c.getFirstname());
			ps.setString(2, c.getLastname());
			ps.setString(3, c.getAddress());
			ps.setString(4, c.getCity());
			ps.setString(5, c.getState());
			ps.setString(6, c.getEmail());
			ps.setString(7, c.getPhone());
			ps.setInt(8, c.getId());
			
			int a=ps.executeUpdate();
			if(a==1)b=true;
		} catch (Exception e) {
			System.out.print(e);
		}
		return b;
	}
	public boolean delete(int id) {
		boolean b=false;
		try {
		PreparedStatement ps=con.prepareStatement("delete from datatable where Id=?");
		ps.setInt(1, id);
		int a=ps.executeUpdate();
		if(a==1)b=true;
		} catch (Exception e) {
			System.out.print(e);
		}
		return b;
	}
	public static void main(String[] args) {
	

	}

}
