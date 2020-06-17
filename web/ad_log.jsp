<%-- 
    Document   : ad_log
    Created on : 15 Feb, 2017, 12:42:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javax.servlet.RequestDispatcher" %>
<%@include file="database.jsp" %>

<%
        String user=request.getParameter("username");
        String pass=request.getParameter("password");
        rs=st.executeQuery("select * from admin where username='"+user+"' and password='"+pass+"'");
        if(rs.next())
        {
                session.setAttribute("user",user);
                RequestDispatcher rd=request.getRequestDispatcher("admin_home.jsp");
                rd.forward(request, response);
            
        }
        else
        {
            //out.println("<script type='text/javascript'>alert('Invalid username and password');</script>");
            RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
                rd.forward(request, response);
                
        }
%>
