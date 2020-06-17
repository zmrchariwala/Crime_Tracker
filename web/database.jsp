<%-- 
    Document   : database
    Created on : 15 Feb, 2017, 11:55:57 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<%
    Connection conn = null;
        Statement st = null;
        ResultSet rs=null;
        ResultSet rs1=null;
        PreparedStatement ps;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:8889/crime_tracker?zeroDateTimeBehavior=convertToNull","root","root");
        st = conn.createStatement();
        //String ss="insert into admin ('zam','zam')";
        
%>
