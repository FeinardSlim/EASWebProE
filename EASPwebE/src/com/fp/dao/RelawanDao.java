package com.fp.dao;
import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import com.fp.bean.Relawan;
//import com.mysql.jdbc.ResultSet;  

public class RelawanDao
{    
	public static Connection getConnection()
	{  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Relawan u)
	{ 
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into relawan(nama, nik, ttl, jenis_kelamin, no_telp, email) values(?,?,?,?,?,?)");  
	        ps.setString(1,u.getNama());  
	        ps.setString(2,u.getNik());  
	        ps.setString(3,u.getTtl());  
	        ps.setString(4,u.getJenis_kelamin());  
	        ps.setString(5,u.getNo_telp());
	        ps.setString(6,u.getEmail());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Relawan u)
	{
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update relawan set nama=?, nik=?,ttl=?,jenis_kelamin=?,no_telp=?, email=? where id=?");  
	        ps.setString(1,u.getNama());  
	        ps.setString(2,u.getNik());  
	        ps.setString(3,u.getTtl());  
	        ps.setString(4,u.getJenis_kelamin());  
	        ps.setString(5,u.getNo_telp());  
	        ps.setString(6,u.getEmail());
	        ps.setInt(7,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Relawan u)
	{  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from relawan where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Relawan> getAllRecords()
	{  
	    List<Relawan> list=new ArrayList<Relawan>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from relawan");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Relawan u=new Relawan();  
	            u.setId(rs.getInt("id"));  
	            u.setNama(rs.getString("nama"));  
	            u.setNik(rs.getString("nik"));  
	            u.setTtl(rs.getString("ttl"));  
	            u.setJenis_kelamin(rs.getString("jenis_kelamin"));  
	            u.setNo_telp(rs.getString("no_telp"));
	            u.setEmail(rs.getString("email"));
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Relawan getRecordById(int id)
	{  
		Relawan u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from relawan where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Relawan();  
	            u.setId(rs.getInt("id"));  
	            u.setNama(rs.getString("nama"));  
	            u.setNik(rs.getString("nik"));  
	            u.setTtl(rs.getString("ttl"));  
	            u.setJenis_kelamin(rs.getString("jenis_kelamin"));  
	            u.setNo_telp(rs.getString("no_telp"));
	            u.setEmail(rs.getString("email"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}  