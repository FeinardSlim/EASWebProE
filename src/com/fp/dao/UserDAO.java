package com.fp.dao;

import java.sql.*;

import com.fp.bean.User;
 
public class UserDAO {
 
    public User checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/test";
        String dbUser = "root";
        String dbPassword = "";
 
        Class.forName("com.mysql.jdbc.Driver");
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
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");  
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
