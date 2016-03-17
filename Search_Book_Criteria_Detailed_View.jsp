<%@page import="DicoverBook.Professor"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

	<div id="header">
		<h1>Discover your book..!!</h1>
	</div>

	<div id="nav">
	<c:import url="/navigation.jsp" />
	
	<%-- 	<a href=Homepage.jsp>Home</a> <br>
		<%
			if (request.getSession(false).getAttribute("username") == null) {
				response.sendRedirect("Login.jsp");
			} else {
				if (request.getSession(false).getAttribute("userType")
						.equals("Student")) {
		%>

		<form id="form_quickSearch" action="quickSearch" method="post">

			<a href="#"
				onClick="document.getElementById('form_quickSearch').submit();">Quick
				Search</a>
		</form>

		<%
			}
			}
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
	
<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4>

	</div>

<div id="center"> 
	<form action="Search_Criteria_Book" method="post">

		<table>

			<tr>
				<!-- 				<th>Isbn</th> -->
				<!-- 				<th>Book name</th> -->
				<!-- 				<th>Course_name</th> -->
				<!-- 				<th>Level of difficulty</th> -->
				<!-- 				<th>Rating</th> -->
				<th>Professor Name</th>
				<th>University Name</th>
				<th>Select</th>
				<!-- 				<th>Book_description</th> -->
				<!-- 				<th>Rating</th> -->

				<!-- <th> Author Last Name </th> -->
				<!-- <th>Level of difficulty</th> -->
				<!-- <th> Rating </th> -->
			</tr>

			<%
				ArrayList<Professor> professor = (ArrayList<Professor>) request
						.getAttribute("professorDetails");

				for (int i = 0; i < professor.size(); i++) {
					out.println("<td>" + professor.get(i).getProfessor_firstname()
							+ " " + professor.get(i).getProfessor_lastname()
							+ "</td>");
					out.println("<td>" + professor.get(i).getUniversity_name()
							+ "</td>");
					out.println("<td><input type=\"radio\" value=\""
							+ professor.get(i).getProfessor_firstname()
							+ "\" name=\"professor_first_name\"  onClick=\"submit();\"></td>");
					out.println("</tr>");
				}
			%>

		</table>
	</form>

</div>

	<div id="footer">Copyright �� Group-10.com</div>
</body>
</html>