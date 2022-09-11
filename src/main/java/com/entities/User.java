/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entities;

import java.sql.Timestamp;

/**
 *
 * @author Admin
 */
public class User {

    private int id;
    private String profile;

    public User() {
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public User(String name, String email, String password, String gender, String about, String profile) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.profile = profile;
        this.about = about;
    }

    public User(int id, String name, String email, String password, String gender, Timestamp rdate, String about, String profile) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.rdate = rdate;
        this.about = about;
        this.profile = profile;
    }
    private String name;
    private String email;
    private String password;
    private String gender;
    private Timestamp rdate;
    private String about;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getProfile() {
        return profile;
    }

    public String getGender() {
        return gender;
    }

    public Timestamp getRdate() {
        return rdate;
    }

    public String getAbout() {
        return about;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setRdate(Timestamp rdate) {
        this.rdate = rdate;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public User(String name, String email, String password, String gender, String about) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;

        this.about = about;
    }

}
