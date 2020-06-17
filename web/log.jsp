<%-- 
    Document   : log
    Created on : 16 Feb, 2017, 1:53:51 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="database.jsp" %>
<%@page trimDirectiveWhitespaces="true" %>

<%
    String who=request.getParameter("who");
    if(who.equals("citizen"))
    {
        
  rs=st.executeQuery("select * from user where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'");
  if(rs.next())
  {
      if(rs.getString("status").equals("not verified"))
      {
          session.setAttribute("email",rs.getString("email"));
          RequestDispatcher rd=request.getRequestDispatcher("mail");
      rd.forward(request, response);
      }
      else if(rs.getString("status").equals("Fraud"))
      {
                  RequestDispatcher rd=request.getRequestDispatcher("login.html");
      rd.forward(request, response);
      }
      else
      {
      session.setAttribute("username",rs.getString("username"));
           RequestDispatcher rd=request.getRequestDispatcher("user_homepage.jsp");
      rd.forward(request, response);
      }
      
  }
  else
  {
      RequestDispatcher rd=request.getRequestDispatcher("login.html");
      rd.include(request, response);
      
  }
    }
    else if(who.equals("head_office"))
    {
        rs=st.executeQuery("select * from head_office where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'");
  if(rs.next())
  {
      if(rs.getString("sta").equals("first"))
      {
          session.setAttribute("username",rs.getString("username"));
          session.setAttribute("who","head_office");
      RequestDispatcher rd=request.getRequestDispatcher("change_password.jsp");
      rd.forward(request, response);
      }
      else
      {
          session.setAttribute("username",rs.getString("username"));
      RequestDispatcher rd=request.getRequestDispatcher("headoffice_homepage.jsp");
      rd.forward(request, response);
      }
  }
  else
  {
       RequestDispatcher rd=request.getRequestDispatcher("login.html");
      rd.include(request, response);
  }
        
    }
    else if(who.equals("police"))
    {
        rs=st.executeQuery("select * from police_station where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'");
  if(rs.next())
  {
      if(rs.getString("sta").equals("first"))
      {
          session.setAttribute("username",rs.getString("username"));
          session.setAttribute("who","police");
      RequestDispatcher rd=request.getRequestDispatcher("change_password.jsp");
      rd.forward(request, response);
      }
      else
      {
          session.setAttribute("username",rs.getString("username"));
      RequestDispatcher rd=request.getRequestDispatcher("police_homepage.jsp");
      rd.forward(request, response);
      }
  }
        
    }
    else
    {
        
    }
%>