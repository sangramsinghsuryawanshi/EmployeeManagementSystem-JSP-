package com.jsp.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.jsp.project.been.Employee;

public class GetQuires 
{
	public static int isInsert(Employee em)
	{
		Connection conn = GetConnection.isConnected();
		int status=0;
		String ins = "insert into emp(id,name,city,mobile)values(?,?,?,?)";
		try
		{
			PreparedStatement ps = conn.prepareStatement(ins);
			ps.setInt(1, em.getId());
			ps.setString(2, em.getName());
			ps.setString(3, em.getCity());
			ps.setString(4, em.getMobile());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static List<Employee> isFetch()
	{
		Connection conn = GetConnection.isConnected();
		List<Employee> al = new ArrayList<Employee>();
		String sel = "select * from emp";
		try
		{
			PreparedStatement ps = conn.prepareStatement(sel);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Employee em = new Employee();
				em.setId(rs.getInt(1));
				em.setName(rs.getString(2));
				em.setCity(rs.getString(3));
				em.setMobile(rs.getString(4));
				al.add(em);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
	
	public static int isDelete(int id)
	{
		Connection conn = GetConnection.isConnected();
		int status=0;
		String del = "delete from emp where id=?";
		try
		{
			PreparedStatement ps = conn.prepareStatement(del);
			ps.setInt(1, id);
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static Employee isUpdate(int id)
	{
		Connection conn = GetConnection.isConnected();
		String upd = "select * from emp where id=?";
		Employee em = new Employee();
		try
		{
			PreparedStatement ps = conn.prepareStatement(upd);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				em.setId(rs.getInt(1));
				em.setName(rs.getString(2));
				em.setCity(rs.getString(3));
				em.setMobile(rs.getString(4));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return em;
	}
	
	public static int isEdite(Employee em)
	{
		Connection conn = GetConnection.isConnected();
		int status=0;
		String e = "update emp set name=?,city=?,mobile=? where id=?";
		try
		{
			PreparedStatement ps = conn.prepareStatement(e);
			ps.setString(1, em.getName());
			ps.setString(2, em.getCity());
			ps.setString(3, em.getMobile());
			ps.setInt(4, em.getId());
			status=ps.executeUpdate();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		return status;
	}
	
	public static Employee isSearch(String name)
	{
		Connection conn = GetConnection.isConnected();
		Employee em = new Employee();
		String ser = "select * from emp where name=?";
		try
		{
			PreparedStatement ps = conn.prepareStatement(ser);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				em.setId(rs.getInt(1));
				em.setName(rs.getString(2));
				em.setCity(rs.getString(3));
				em.setMobile(rs.getString(4));
			}
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		return em;
	}
}
