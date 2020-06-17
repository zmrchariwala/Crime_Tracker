<%-- 
    Document   : reg
    Created on : 16 Feb, 2017, 12:33:10 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="database.jsp" %>
<!DOCTYPE html>
<input type="text" name="email" value="<%= request.getParameter("email")%>"/>
<% 
   st.execute("insert into user(first_name,middle_name,last_name,address,city,state,country,email,mobile,adhaar,username,password,status) values('"+request.getParameter("first")+"','"+request.getParameter("middle")+"','"+request.getParameter("last")+"','"+request.getParameter("address")+"','"+request.getParameter("city")+"','"+request.getParameter("state")+"','"+request.getParameter("country")+"','"+request.getParameter("email")+"','"+request.getParameter("mobile")+"','"+request.getParameter("addhaar")+"','"+request.getParameter("username")+"','"+request.getParameter("password")+"','not verified')");
    RequestDispatcher rd=request.getRequestDispatcher("Mailapp");
    rd.forward(request, response);
%>