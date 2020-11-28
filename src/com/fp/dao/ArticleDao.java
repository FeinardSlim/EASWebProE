package com.fp.dao;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.fp.bean.Article;
//import com.mysql.jdbc.ResultSet;  

public class ArticleDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("org.postgresql.Driver");  
	        con=DriverManager.getConnection("jdbc:postgresql://ec2-54-228-209-117.eu-west-1.compute.amazonaws.com:5432/d22sbhc83lf1bm","wjujmsmbpkjtcp","9ecffbbb1e3e391206b21aef8bf5f9c91fbe669de48472da69b7b55a63308fe8");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Article u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into article(title,category,date,body) values(?,?,?,?)");  
	        ps.setString(1,u.getTitle());  
	        ps.setString(2,u.getCategory());  
	        ps.setString(3,u.getDate());  
	        ps.setString(4,u.getBody());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Article u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update article set title=?,category=?,date=?,body=? where id=?");  
	        ps.setString(1,u.getTitle());  
	        ps.setString(2,u.getCategory());  
	        ps.setString(3,u.getDate());  
	        ps.setString(4,u.getBody());  
	        ps.setInt(5,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Article u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from article where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Article> getAllRecords(){  
	    List<Article> list=new ArrayList<Article>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from article");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Article u=new Article();  
	            u.setId(rs.getInt("id"));  
	            u.setTitle(rs.getString("title"));  
	            u.setCategory(rs.getString("category"));  
	            u.setDate(rs.getString("date"));  
	            u.setBody(rs.getString("body"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	
	
	public static Article getRecordById(int id){  
	    Article u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from article where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Article();  
	            u.setId(rs.getInt("id"));  
	            u.setTitle(rs.getString("title"));  
	            u.setCategory(rs.getString("category"));  
	            u.setDate(rs.getString("date"));  
	            u.setBody(rs.getString("body"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
