<%-- 
    Document   : city
    Created on : 27 Feb, 2017, 8:59:52 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.crime_tracker.model.AddressDAO" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<select>
	<option value="">--Select City--</option>
	<%
		String dist = request.getParameter("dist");
		AddressDAO dao = new AddressDAO();
		List<String> city = dao.getct(dist);
		for (String s : city) {
	%>
	<option value="<%=s%>"><%=s%></option>
	<%
		}
	%>
</select>
