<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demonstration of Text Processing</title>
</head>
<%

	// Define a string to represent a name
	String name = "Rowena Ravenclaw";

	// Get length of the name
	int nameLength = name.length();
	
	// Get number of phrases in the name
	String[] phrases = name.split("\\s+");
	int noPhrases = phrases.length;

%>

<body>

<h3>Details of name</h3>

<b>Name:</b> <%= name %><br><br>
<b>Length name:</b> <%= nameLength %><br><br>
<b>No of phrases:</b> <%= noPhrases %><br><br>

<%@include  file="../footerMenu.html" %>

</body>
</html>