package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;
import com.entity.User;

public class JobDao {

	private Connection conn;

	public JobDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addJob(Jobs j)
	{
		boolean f=false;
		try {
			String sql="insert into job(title, description, category, status, location) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			int a=ps.executeUpdate();
			
			if(a==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
		
		
	}
	
	public List<Jobs> getJob()
	{
		List<Jobs> list=new ArrayList<Jobs>();
				Jobs j=null;
		try {
			String sql="select * from job order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4)); 
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdata(rs.getString(7)+"");
				list.add(j);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Jobs> getJobForUser()
	{
		List<Jobs> list=new ArrayList<Jobs>();
				Jobs j=null;
		try {
			String sql="select * from job where status=? order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4)); 
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdata(rs.getString(7)+"");
				list.add(j);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	
	public Jobs getJobById(int id)
	{
		
				Jobs j=null;
		try {
			String sql="select * from job where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4)); 
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdata(rs.getString(7)+"");
			
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return j;
	}
	
	public boolean updateJob(Jobs j)
	{
		boolean f=false;
		try {
			String sql="update job set title=?,description=?, category=?, status=?, location=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setInt(6, j.getId());
			int a=ps.executeUpdate();
			
			if(a==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
		
		
	}
	
	
	public boolean deleteJob(int id)
	{
		boolean f=false;
		try {
			String sql="delete from job where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int a=ps.executeUpdate();
			
			if(a==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
		}
	
	public List<Jobs> getJobsAndLocANDCat(String loc, String cat)
	{   
		List<Jobs> list=new ArrayList<Jobs>();
		
				Jobs j=null;
		try {
			String sql="select * from job where location=? and category=? order by id desc";
		PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1, loc);
		
			ps.setString(2, cat);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4)); 
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdata(rs.getString(7)+"");
				list.add(j);
				
			
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Jobs> getJobsOrLocANDCat(String loc, String cat)
	{   
		List<Jobs> list=new ArrayList<Jobs>();
		
				Jobs j=null;
		try {
			String sql="select * from job where location=? or category=? order by id desc";
		PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1, loc);
		
			ps.setString(2, cat);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4)); 
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdata(rs.getString(7)+"");
				list.add(j);
				
			
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
}
