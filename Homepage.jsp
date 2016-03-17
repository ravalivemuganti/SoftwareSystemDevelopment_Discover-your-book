<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Insert title here</title>
</head>
<head>


</head>

<body>
<% if(request.getSession(false).getAttribute("username") == null)
		{
			response.sendRedirect("Login.jsp");
		}%>
	<div id="header">
		<h1>Discover your book..!!</h1>
	</div>


	<div id="nav">
	 <c:import url="/navigation.jsp" />
	 	
		
	</div>
	<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4>

	</div>


	<div id="nav_center">
<c:import url="/nav.jsp" />
</div>

	
	
	</form>

	<div id="footer">Copyright �� Group-10.com</div>

</body>
</html>