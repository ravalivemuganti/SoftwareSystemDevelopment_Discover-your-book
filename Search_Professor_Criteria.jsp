<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@page import="DicoverBook.FinalResultProfessorPage"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<!-- <form action="SearchCriteriaBookDetailed" method="post"> -->
<div id="center"> 
<table>

<tr>
<th>Professor Name</th>
<th>Isbn</th>
<th>Book name</th>
<th>Level of difficulty</th>
<th> Course_name </th>
<th> Book_description </th>
<th> Rating </th>
<th> Edition </th>
</tr>



<%
ArrayList<FinalResultProfessorPage> f = (ArrayList<FinalResultProfessorPage>) request.getAttribute("professorDetails");

for(int i=0; i<f.size();i++)
{
	    out.println("<td>"+f.get(i).getProfessor_first_name()+" "+f.get(i).getProfessor_last_name()+"</td>");
	    out.println("<td>"+f.get(i).getIsbn()+"</td>");
   	    out.println("<td>"+f.get(i).getBook_name()+"</td>");
   	    out.println("<td>"+f.get(i).getBook_learner_level()+"</td>");
        out.println("<td>"+f.get(i).getCourse_name()+"</td>");
        out.println("<td>"+f.get(i).getBook_description()+"</td>");
        out.println("<td>"+f.get(i).getRating()+"</td>");
        out.println("<td>"+f.get(i).getEdition()+"</td>");
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