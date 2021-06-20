<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="demo.hogwarts.House" %>
<%@ page import="demo.hogwarts.HouseFacade" %>

<%
	// Get the parameter
	int houseId = Integer.parseInt(request.getParameter("id"));

	// Wrap in object
	House house = new House();
	house.setHouseId(houseId);

	// Get house details
	HouseFacade houses = new HouseFacade();
	house = houses.getHouse(house);
%>

<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&display=swap" rel="stylesheet" />
<link href="assets/fontawesome/css/all.min.css" rel="stylesheet" />
<link href="assets/css/tooplate-chilling-cafe.css" rel="stylesheet" />

<title>Details of House</title>
</head>
<body>

<div class="tm-container">
	<div class="tm-main-content">
	<h2 class="tm-section-header">Details Information of <%=house.getName() %></h2>
	<p>
		<b>Name:</b> <%= house.getName() %><br>
		<b>Founder:</b> <%= house.getFounder() %><br>
		<b>Color:</b> <%= house.getColor() %><br>
		<b>Mascot:</b> <%= house.getMascot() %><br>
	</p>
	<br><br>
	<p>
		Click <a href="houses.jsp">here</a> to return to list of Hogwart's Houses.
		<br>
		Click <a href="index.jsp">here</a> to return main page.
	</p>
	</div>
</div>

</body>
</html>