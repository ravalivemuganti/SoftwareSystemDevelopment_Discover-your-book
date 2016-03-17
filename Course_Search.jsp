<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<head>

</head>

<body>

<div id="header">
<h1>Discover your book..!!</h1>
</div>

<div id="nav">
<c:import url="/navigation.jsp" />

      <%-- <a href=Homepage.jsp>Home</a> <br>
		<% if(request.getSession(false).getAttribute("username") == null)
		{
			response.sendRedirect("Login.jsp");
		}
		else {
	 if(request.getSession(false).getAttribute("userType").equals("Student"))
	{ %>

		<form id="form_quickSearch" action="quickSearch" method="post">

			<a href="#"
				onClick="document.getElementById('form_quickSearch').submit();">Quick
				Search</a>
		</form>

		<%
	}}
	%>

			<div id="div_category05" name=advancedsearch>
				<p>
					<A HREF="Advanced_Search.jsp"> Advanced Search </A>
				</p>
			</div>

			<div id="div_category06" name="logout">
				<p>
					<A HREF="Logout.jsp"> Logout </A>
				</p>
			</div> --%>
		</div>


<form action="Course_Search" method="post">


    	<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4>

	</div>
<div id="section">

<h4>Searching by Course name: </h4>
<br>
Course name: <input type="text" name="coursename">

<br>
<br>
<button type="submit" >Search</button>
</div>
</form>

<div id="footer">
Copyright �� Group-10.com
</div>

</body>
</html>