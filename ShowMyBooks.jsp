<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="DicoverBook.FinalResultPage"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DicoverBook.Book_table_db_fields"%>
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
      <!-- <a href=Homepage.jsp>Home</a> <br> -->
		<% if(request.getSession(false).getAttribute("username") == null)
		{
			response.sendRedirect("Login.jsp");
		}
		
	%>


			<!-- <div id="div_category06" name="addBooks">
				<p>
					<A HREF="Professor_AddBook.jsp"> Add New Book </A>
				</p>
			</div>
			<div id="div_category06" name="logout">
				<p>
					<A HREF="Logout.jsp"> Logout </A>
				</p>
			</div>
		
		</div> -->
	</div>
	<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4> 

	</div>
	<br><br><br>

		<table>

		<tr>
			<th>Isbn</th>
			<th>Book name</th>
			<th>publication</th>
			<th>Edition</th>
		</tr>



		<%
			ArrayList<Book_table_db_fields> f = (ArrayList<Book_table_db_fields>) request
					.getAttribute("bookDetails");

			if(f != null)
			for (int i = 0; i < f.size(); i++) {

				out.println("<td>" + f.get(i).getIsbn() + "</td>");
				out.println("<td>" + f.get(i).getBook_name() + "</td>");
				out.println("<td>" + f.get(i).getEdition() + "</td>");
				out.println("<td>" + f.get(i).getEdition() + "</td>");

			}
		%>


	</table>
	</form>


	<div id="footer">Copyright ������ Group-10.com</div>

</body>
</html>