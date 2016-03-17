<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css"><script type="text/javascript">
function change()
{
	document.getElementById("formy").style.display = 'none';
	document.getElementById("thanks").style.display = 'block';
	}
</script>
</head>

<div id="header">
		<h1>Discover your book..!!</h1>
	</div>
<body>
<% if(request.getSession(false).getAttribute("username") != null)
		{
			response.sendRedirect("Homepage.jsp");
		}
	 %>

	<form method="post" action="Login">
		<div id="content">
			<!-- <div style="text-align: center"><br>
				<h4>Please login with your credentials</h4> <br>
			</div> -->


			<center>
				<table>
					<thead>
						<tr>
							<th colspan="2">Login Here</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Email Id</td>
							<td><input type="text" name="Email Id" value="" required
								title="User name is mandatory" /></td>
						</tr>
						<tr>
							<td>Password</td>
							<td><input type="password" name="Password"
								placeholder="********" required title="User name is mandatory"
								value="" /></td>
						</tr>
						<tr>
							<td>Login as</td>
							<td><input type="radio" name="userType"
								value="Student" checked="checked"/>
								Student
							<input type="radio" name="userType"
								value="Professor"/>Professor</td>
						</tr>
						
						<tr>
							<td><input type="submit" value="Login" /></td>
							<td><input type="reset" value="Reset" /></td>
						</tr>
						<tr>
							<td colspan="2">Not Registered Yet!! <a href="SignUp.jsp">Register
									Here</a></td>
						</tr>
					</tbody>
				</table>
			</center>
	</form>
</body>
</html>
