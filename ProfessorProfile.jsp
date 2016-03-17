<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">

<body>
<div id="header">
		<h1>Discover your book..!!</h1>
	</div>

    <div id="nav">
    <c:import url="/navigation.jsp" />
    
     <!--  <a href=Homepage.jsp>Home</a> <br> -->
		<% if(request.getSession(false).getAttribute("username") == null)
		{
			response.sendRedirect("Login.jsp");
		}
		
	%>


			<!-- <div id="div_category06" name="logout">
				<p>
					<A HREF="Logout.jsp"> Logout </A>
				</p>
			</div>
		
		</div> -->
	</div>
<div id="login_section">
		<h4>Welcome <%=session.getAttribute("username") %></h4>

	</div>
		<div id="section">
		<center>
		<form action="UpdateProfessorProfile" method="post">
			<table>
				<tr>
					<th>First Name</th>
					<td><input type="text" name="firstname" id="firstname"
						maxlength="12" placeholder="firstname" required
						title="This is a mandatory field"></td>
				</tr>
			</table>

			<table>
				<tr>
					<th>Last Name</th>
					<td><input type="text" name="lastname" id="lastname"
						maxlength="12" placeholder="lastname" required
						title="This is a mandatory field"></td>
				</tr>
			</table>

			<table>
				<tr>
					<th>E-Mail Id</th>
					<td><input name="email" maxlength="50" id="email"
						placeholder="example@tmail.com" required
						title="This is a mandatory field" type="email"></td>
				</tr>
			</table>
			<table>
				<tr>
					<th>Specialization</th>
					<td><input type="text" name="Specialization" id="Specialization"
						placeholder="Software Engineering" required title="This is a mandatory field">
					</td>
				</tr>
			</table>


			<table>
				<tr>
					<th>University Name</th>
					<td><select name="University Name" id="University Name">
							<option value="5105">University Of North Carolina
								Charlotte</option>
							<option value="5496">North Carolina State University</option>
							<option value="3679">North Eastern University</option>
					</select></td>
				</tr>
			</table>

			<div>
				<div>
					<input type="submit" value="Submit" /> <input type="reset"
						value="Reset" />
				</div>
			</div>





		</form>
	</center>
		
		
		</div>

	<div id="footer">Copyright ������ Group-10.com</div>

</body>
</html>