<%@page import="DicoverBook.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4>

	</div>
<div id="center"> 
<form action="SearchCriteriaBookDetailed" method="post">

<table>

<tr>
<th>Isbn</th>
<th>Book name</th>
<th> Course_name </th>
<th>Level of difficulty</th>
<th> Rating </th>
<th> Edition </th>
<th> Select </th>
</tr>



<%
ArrayList<Book> books = (ArrayList<Book>) request.getAttribute("bookDetails");


for(int i=0; i<books.size();i++)
{
		out.println("<tr onclick='bookDetails(" + books.get(i).getIsbn() + ");'>");
	    out.println("<td>"+books.get(i).getIsbn()+"</td>");
   	    out.println("<td>"+books.get(i).getBook_name()+"</td>");
        out.println("<td>"+books.get(i).getCourse_name()+"</td>");
        out.println("<td>"+books.get(i).getBook_learner_level()+"</td>");
        out.println("<td>"+books.get(i).getRating()+"</td>");
        out.println("<td>"+books.get(i).getEdition()+"</td>");
        out.println("<td><input type=\"radio\" value=\""+books.get(i).getIsbn()+"\" name=\"isbn\"  onClick=\"submit();\"></td>");
		out.println("</tr>");

}

%>


</table>
</form>

</div>
<div id="footer">
Copyright �� Group-10.com
</div>

</body>
</html>