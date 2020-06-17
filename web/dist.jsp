<%-- 
    Document   : city
    Created on : 27 Feb, 2017, 8:59:52 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.crime_tracker.model.AddressDAO" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
    <select onchange="getCity(this.value)">
	<option value="">--Select District--</option>
	<%
		String state = request.getParameter("st");
		AddressDAO dao = new AddressDAO();
		List<String> district = dao.getdist(state);
		for (String s : district) {
	%>
	<option value="<%=s%>"><%=s%></option>
	<%
		}
	%>
</select>
