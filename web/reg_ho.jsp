<%-- 
    Document   : reg_ho
    Created on : 15 Feb, 2017, 1:16:55 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javax.servlet.RequestDispatcher" %>
<%@include file="database.jsp" %>
<!DOCTYPE html>
<%
    String officer=request.getParameter("officer");
    String post=request.getParameter("post");
    String state=request.getParameter("state");
    String city=request.getParameter("city");
    String email=request.getParameter("email");
    String user=request.getParameter("username");
    String pass=request.getParameter("password");
    st.execute("insert into head_office(incharge_officer,position,state,city,email,username,password) values('"+officer+"','"+post+"','"+state+"','"+city+"','"+email+"','"+user+"','"+pass+"')");
    RequestDispatcher rd=request.getRequestDispatcher("reg_headoffice.jsp");
    rd.forward(request, response);
%>
