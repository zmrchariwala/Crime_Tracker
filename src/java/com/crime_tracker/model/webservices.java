package com.crime_tracker.model;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class webservices {
    
    static public Connection getConnection()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:8889/crime_tracker?zeroDateTimeBehavior=convertToNull","root","root");
            return conn;
        }
        catch(Exception e)
        {
               e.printStackTrace();
               return null;
        }
    }
}
