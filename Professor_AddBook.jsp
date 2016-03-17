<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!--   <a href=Homepage.jsp>Home</a> <br> -->
		<% if(request.getSession(false).getAttribute("username") == null)
		{
			response.sendRedirect("Login.jsp");
		}
		
	%>


			<!-- <div id="div_category06" name="MyBooks">
				<p>
					<A HREF="ShowMyBooks.jsp"> My Suggested Books </A>
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
<form action="Add a Book_Search" method="post">

    
    
<div id="section">
<h4>Add a book to recommend: </h4>
<br>
Book Number/ISBN: <input type="text" name="ISBN">
<br>
<br>
Book Name: <input type="text" name="Book_Name">
<br>
<br>
Author Name: <input type="text" name="Author Name">
<br>
<br>
Publication: <input type="text" name="Publication">
<br>
<br>
Edition: <input type="text" name="Edition">
<br>
<br>
<button type="submit" >Submit</button>
</div>


</form>

<div id="footer">
Copyright �� Group-10.com
</div>

</body>
</html>