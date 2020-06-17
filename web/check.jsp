<%-- 
    Document   : check
    Created on : 20 Feb, 2017, 5:44:25 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="database.jsp" %>
<%
    if(session.getAttribute("who").equals("head_office"))
    {
    if(request.getParameter("pass").equals(request.getParameter("con_pass")))
    {
        st.execute("update head_office set sta='done',password='"+ request.getParameter("pass")+"' where username='"+session.getAttribute("username") +"'");
        RequestDispatcher rd=request.getRequestDispatcher("headoffice_homepage.jsp");
      rd.forward(request, response);
    }
    else
    {
        out.println("<script type='text/javascript'>alert('sorry');</script>");
    }
    }
    else if(session.getAttribute("who").equals("police"))
    {
     if(request.getParameter("pass").equals(request.getParameter("con_pass")))
    {
        st.execute("update police_station set sta='done',password='"+ request.getParameter("pass")+"' where username='"+session.getAttribute("username") +"'");
        RequestDispatcher rd=request.getRequestDispatcher("police_homepage.jsp");
      rd.forward(request, response);
    }
    else
    {
        out.println("<script type='text/javascript'>alert('sorry');</script>");
    }   
    }
%>
