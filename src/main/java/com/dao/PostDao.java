/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entities.Category;
import com.entities.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class PostDao {

    private Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {

            String query = "select * from categories";

            Statement st = this.con.createStatement();

            ResultSet set = st.executeQuery(query);

            while (set.next()) {
                int cid = set.getInt("cid");
                String name = set.getString("name");
                String description = set.getString("description");

                Category c = new Category(cid, name, description);

                list.add(c);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean savePost(Post p) {
        boolean f = false;
        try {

            String q = "insert into posts(pTitle,pContent,pCode,pPic,catId,userId) values(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatId());
            pstmt.setInt(6, p.getUserId());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<Post> getAllPosts() {
        List<Post> list = new ArrayList<>();

        try {
            String query = "select * from posts order by pid desc";
            PreparedStatement pstmt = con.prepareStatement(query);
            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int catId = set.getInt("catId");

                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);
                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Post> getPostByCatId(int CatId) {
        List<Post> list = new ArrayList<>();

        try {
            String query = "select * from posts where catId=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setInt(1, CatId);
            ResultSet set = pstmt.executeQuery();

            while (set.next()) {
                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int catId = set.getInt("catId");

                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);
                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
       public Post getPostByPostId(int postId)
    {
    	Post post=null;
    	
    	String query = "select * from posts where pid=?";
    	try {
    		
            PreparedStatement pstmt = con.prepareStatement(query);
            
            pstmt.setInt(1,postId);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next())
            {
            	post = new Post();
            	 int pid = set.getInt("pid");
                 String pTitle = set.getString("pTitle");
                 String pContent = set.getString("pContent");
                 String pCode = set.getString("pCode");
                 String pPic = set.getString("pPic");
               //  Timestamp date = set.getTimestamp("pDate");
                 int catId = set.getInt("catId");

                 int userId = set.getInt("userId");
                 post = new Post(pid, pTitle, pContent, pCode, pPic, null, catId, userId);
                 
            	
            }
    		
    	}catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	return post;
    }
}
