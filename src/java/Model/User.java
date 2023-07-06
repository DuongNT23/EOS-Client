/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class User {
    String account, pass, rollnumber;

    public User() {
        connect();
    }

    public User(String account, String pass) {
        connect();
        this.account = account;
        this.pass = pass;
    }

    public User(String account, String pass, String rollnumber) {
        this.account = account;
        this.pass = pass;
        this.rollnumber = rollnumber;
    }

    public String getRollnumber() {
        return rollnumber;
    }

    public void setRollnumber(String rollnumber) {
        this.rollnumber = rollnumber;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    Connection cnn;
    PreparedStatement pstm;
    ResultSet rs;

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            }
        } catch (Exception e) {
            System.out.println("Fail: " + e.getMessage());
        }
    }
    
    public boolean checkAccount() {
        connect();
        try {
            String strExist = "select * from Users "
                    + "where UserName=? and Password=?";
            pstm = cnn.prepareStatement(strExist);
            pstm.setString(1, account);
            pstm.setString(2, pass);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkAcc: " + e.getMessage());
        }
        return false;
    }
}
