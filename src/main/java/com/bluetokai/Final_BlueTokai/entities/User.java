package com.bluetokai.Final_BlueTokai.entities;

import jakarta.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 255, name = "user_id")
    private int userId;

    @Column(length = 255, name = "u_username")
    private String userName;

    @Column(length = 255, name = "u_email")
    private String userEmail;

    @Column(length = 255, name = "u_pass1")
    private String userPassword1;

    @Column(length = 255, name = "u_pass2")
    private String userPassword2;

    @Column(length = 255, name = "u_addr1")
    private String userAddress1;

    @Column(length = 255, name = "u_addr2")
    private String userAddress2;

    @Column(length = 255, name = "u_city")
    private String userCity;

    @Column(length = 10, name = "u_zip")
    private String userZip;

    public User(int userId, String userName, String userEmail, String userPassword1, String userPassword2,
            String userAddress1, String userAddress2, String userCity, String userZip) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword1 = userPassword1;
        this.userPassword2 = userPassword2;
        this.userAddress1 = userAddress1;
        this.userAddress2 = userAddress2;
        this.userCity = userCity;
        this.userZip = userZip;
    }

    public User(String userName, String userEmail, String userPassword1, String userPassword2, String userAddress1,
            String userAddress2, String userCity, String userZip) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword1 = userPassword1;
        this.userPassword2 = userPassword2;
        this.userAddress1 = userAddress1;
        this.userAddress2 = userAddress2;
        this.userCity = userCity;
        this.userZip = userZip;
    }

    public User() {

    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword1() {
        return userPassword1;
    }

    public void setUserPassword1(String userPassword1) {
        this.userPassword1 = userPassword1;
    }

    public String getUserPassword2() {
        return userPassword2;
    }

    public void setUserPassword2(String userPassword2) {
        this.userPassword2 = userPassword2;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserAddress1() {
        return userAddress1;
    }

    public void setUserAddress1(String userAddress1) {
        this.userAddress1 = userAddress1;
    }

    public String getUserAddress2() {
        return userAddress2;
    }

    public void setUserAddress2(String userAddress2) {
        this.userAddress2 = userAddress2;
    }

    public String getUserCity() {
        return userCity;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    public String getUserZip() {
        return userZip;
    }

    public void setUserZip(String userZip) {
        this.userZip = userZip;
    }

    @Override
    public String toString() {
        return "User [userId=" + userId + ", userName=" + userName + ",userEmail=" + userEmail + ", userPassword1=" + userPassword1
                + ", userPassword2=" + userPassword2 + ",  userAddress1=" + userAddress1
                + ", userAddress2=" + userAddress2 + ", userCity=" + userCity + ", userZip=" + userZip + "]";
    }

}
