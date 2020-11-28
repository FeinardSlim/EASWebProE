package com.fp.dao;

import java.sql.*;

import com.fp.bean.User;
 
public class UserDAO {
 
    public User checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        String jdbcURL = "jdbc:postgresql://ec2-54-228-209-117.eu-west-1.compute.amazonaws.com:5432/d22sbhc83lf1bm";
        String dbUser = "wjujmsmbpkjtcp";
        String dbPassword = "9ecffbbb1e3e391206b21aef8bf5f9c91fbe669de48472da69b7b55a63308fe8";
 
        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "SELECT * FROM users WHERE email = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
 
        if (result.next()) {
            user = new User();
            user.setFullname(result.getString("fullname"));
            user.setEmail(email);
        }
 
        connection.close();
 
        return user;
    }
    
    public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("org.postgresql.Driver");  
	        con=DriverManager.getConnection("jdbc:postgresql://ec2-54-228-209-117.eu-west-1.compute.amazonaws.com:5432/d22sbhc83lf1bm","wjujmsmbpkjtcp","9ecffbbb1e3e391206b21aef8bf5f9c91fbe669de48472da69b7b55a63308fe8");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
    
    public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into users(fullname,email,password) values(?,?,?)");  
	        ps.setString(1,u.getFullname());  
	        ps.setString(2,u.getEmail());  
	        ps.setString(3,u.getPassword());    
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
}
