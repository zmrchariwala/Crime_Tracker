<%-- 
    Document   : view
    Created on : 16 Mar, 2017, 10:14:27 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String img=request.getParameter("img");
            
            %>
            <img src="images/<%= img %>"
    </body>
</html>
