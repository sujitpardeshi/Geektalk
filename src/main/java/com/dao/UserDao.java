/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entities.User;
import java.sql.*;

/**
 *
 * @author Admin
 */
public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {

            String query = "insert into user(name, email, password , gender , about ) values (?,?,?,?,?)";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());
            pt.setString(4, user.getGender());
            pt.setString(5, user.getAbout());

            pt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from user where email=? and password=?";

            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set = pstmt.executeQuery();
            if (set.next()) {
                user = new User();

                //get data from db
                //set to user object
                user.setName(set.getString("name"));
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setProfile(set.getString("profile"));

            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return user;
    }

    public boolean updateUser(User user) {
        boolean f = false;

        try {
            String query = "update user set name=? , email=? , password=? , gender=? , about=? , profile=?  where id=?";

            PreparedStatement pstmt = con.prepareStatement(query);

            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.setString(6, user.getProfile());
            pstmt.setInt(7, user.getId());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
     public User getUserByUserId(int userId) {
	        User user = null;
	        try {
	            String q = "select * from user where id=?";
	            PreparedStatement ps = this.con.prepareStatement(q);
	            ps.setInt(1, userId);
	            ResultSet set = ps.executeQuery();
	            if (set.next()) {
	                user = new User();

//	             data from db
	                String name = set.getString("name");
//	             set to user object
	                user.setName(name);

	                user.setId(set.getInt("id"));
	                user.setEmail(set.getString("email"));
	                user.setPassword(set.getString("password"));
	                user.setGender(set.getString("gender"));
	                user.setAbout(set.getString("about"));
	               // user.setDateTime(set.getTimestamp("rdate"));
	                user.setProfile(set.getString("profile"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return user;
	    }

}
