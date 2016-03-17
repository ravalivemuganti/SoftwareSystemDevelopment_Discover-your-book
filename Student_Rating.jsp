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


<body>

	<div id="header">
		<h1>Discover your book..!!</h1>
	</div>



	<div id="nav">
	
	<c:import url="/navigation.jsp" />
		<%-- <a href=Homepage.jsp>Home</a> <br>
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


	<form action="Student_Rating" method="post">
	<input type="hidden" name="action" value="true">
	<input type="hidden" name="isbn" value="${requestScope.isbn}">
	<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4>

	</div>
		<div id="section">
			
			<h4>Rate the book:</h4>
			<br>
			<table>
				<tr>
					<th>Question
					<th>Very Satisfied</th>
					<th>Satisfied</th>
					<th>Neutral</th>
					<th>Unsatisfied</th>
				</tr>
				<tr>
					<td>How satisfied are you with the book?
					<td><input type="radio" name="Q1" value="10"></td>
					<td><input type="radio" name="Q1" value="7"></td>
					<td><input type="radio" name="Q1" value="4"></td>
					<td><input type="radio" name="Q1" value="1"></td>
				</tr>
				<tr>
				<td>Do you think the professor rated the book appropriately?
					<td><input type="radio" name="Q2" value="10"></td>
					<td><input type="radio" name="Q2" value="7"></td>
					<td><input type="radio" name="Q2" value="4"></td>
					<td><input type="radio" name="Q2" value="1"></td>
				</tr>
				<tr>
				<td>How satisfied are you with the rating of the book?
					<td><input type="radio" name="Q3" value="10"></td>
					<td><input type="radio" name="Q3" value="7"></td>
					<td><input type="radio" name="Q3" value="4"></td>
					<td><input type="radio" name="Q3" value="1"></td>
				</tr>
				<tr>
				<td>Do you want to recommend this book to others?
					<td><input type="radio" name="Q4" value="10"></td>
					<td><input type="radio" name="Q4" value="7"></td>
					<td><input type="radio" name="Q4" value="4"></td>
					<td><input type="radio" name="Q4" value="1"></td>
				</tr>
				<tr>
				<td>How far did you follow this book?
					<td><input type="radio" name="Q5" value="10"></td>
					<td><input type="radio" name="Q5" value="7"></td>
					<td><input type="radio" name="Q5" value="4"></td>
					<td><input type="radio" name="Q5" value="1"></td>
				</tr>				
			</table>
<br>
<!-- 			<td><input type=\ "radio\" value=\ -->
<!-- 				""+professor.get(i).getProfessor_firstname()+"\" name=\ -->
<!-- 				"professor_first_name\"  onClick=\"submit();\"></td>" -->
			<button type="submit">Submit</button>
		</div>
	</form>

	<div id="footer">Copyright �� Group-10.com</div>

</body>
</html>