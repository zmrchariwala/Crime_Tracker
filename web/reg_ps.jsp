<%-- 
    Document   : reg_ps
    Created on : 15 Feb, 2017, 1:41:45 PM
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
    String dist=request.getParameter("district");
    String user=request.getParameter("username");
    String pass=request.getParameter("password");
    st.execute("insert into police_station(incharge_officer,position,state,district,city,username,password) values('"+officer+"','"+post+"','"+state+"','"+dist+"','"+city+"','"+user+"','"+pass+"')");
    RequestDispatcher rd=request.getRequestDispatcher("reg_headoffice.jsp");
    rd.include(request, response);
%>
