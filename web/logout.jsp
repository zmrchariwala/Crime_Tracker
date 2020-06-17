<%-- 
    Document   : logout
    Created on : 2 Apr, 2017, 11:45:22 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    request.getSession().invalidate();
    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
    rd.forward(request, response);
    %>
