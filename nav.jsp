<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!-- <a href=Homepage.jsp>Home</a> <br> -->
		<% if(request.getSession(false).getAttribute("username") == null)
		{
			response.sendRedirect("Login.jsp");
		}
		else {
	 if(request.getSession(false).getAttribute("userType").equals("Student"))
	{ %>

		<!-- <form id="form_quickSearch" action="quickSearch" method="post">

			<a href="#"
				onClick="document.getElementById('form_quickSearch').submit();">Quick
				Search</a>
		</form> -->

		<%
	}else if(request.getSession(false).getAttribute("userType").equals("Professor")){%>
	 
		<div id="div_category08" name=myBooks>
				<p>
					<A HREF="ShowMyBooks.jsp"> Show my Books </A>
				</p>
			</div>
	 
		
	<%	
		
	}} 
	%>
		<div class="div_body_side1">
			<div id="div_category01" name="book_Search">
				<p>
					<A HREF="Book_Search.jsp"> Book Search </A>
				</p>
			</div>
			<div id="div_category02" name="course_Search">
				<p>
					<A HREF="Course_Search.jsp"> Course Search </A>
				</p>
			</div>

			<% if(request.getSession(false).getAttribute("userType")!=null && request.getSession(false).getAttribute("userType").equals("Student"))
	{ %>


			<div id="div_category03" name="professor_Search">
				<p>
					<A HREF="Professor_Search.jsp"> Professor Search </A>
				</p>
			</div>
			<div id="div_category04" name=universitysearch>
				<p>
					<A HREF="University_Search.jsp"> University Search </A>
				</p>
			</div>
			<%
	}
	%>

			<!-- <div id="div_category05" name=advancedsearch>
				<p>
					<A HREF="Advanced_Search.jsp"> Advanced Search </A>
				</p>
			</div> -->

			<!-- <div id="div_category06" name="logout">
				<p>
					<A HREF="Logout.jsp"> Logout </A>
				</p>
			</div> -->
		</div>
</body>
</html>