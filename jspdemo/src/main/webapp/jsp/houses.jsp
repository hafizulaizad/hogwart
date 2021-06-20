<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.util.List" %>

<%@ page import="demo.hogwarts.House" %>
<%@ page import="demo.hogwarts.HouseFacade" %>


<%--This page shall display a list of houses in Hogwarts --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Hogwarts Houses</title>
</head>

<%

	// Get a list of house for HouseFacade, store in List<House>
	HouseFacade houseFacade = new HouseFacade();
	List<House> houses = houseFacade.getHouses();
			
%>

<body>
<br><br><br>
<h3>List of Hogwarts Houses</h3>

<table border="3">
	<tr>
		<th>House Name</th>
		<th>Founder</th>
		<th>View Details</th>
	</tr>
<%

	// Display the houses using for loop
	for (House house:houses) {
%>
	<tr>
		<td><%= house.getName()  %></td>
		<td><%= house.getFounder() %></td>
		<td><a href="details.jsp?id=<%= house.getHouseId() %>">View</a></td>
	</tr>		
<%	
				
	}
%>
</table>
<h3>Total number of houses in Hogwarts = <%= houses.size() %></h3><br>
<%@include  file="../footerMenu.html" %>
</body>
</html>