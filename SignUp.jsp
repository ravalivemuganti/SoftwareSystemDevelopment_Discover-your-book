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

	<h4 align="center">
		Student SignUp 
	</h4> <br>
	<center>
		<form action="SignUp" method="post">
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
					<th>Password</th>
					<td><input type="Password" name="password1" id="password1"
						maxlength="50" placeholder="********" pattern=".{6,}" required
						title="This is a Mandatory Field and should contain minimum of 6 characters">
					</td>
				</tr>
			</table>


			<div class="fieldWrapper">
				<label for="password">Re-Type Password:</label> <input
					type="Password" name="password" id="password"
					placeholder="********" onkeyup="checkPass(); return false;">
				<span id="confirmMessage" class="confirmMessage"></span>
			</div>

			<table>
				<tr>
					<th>Department</th>
					<td><input type="text" name="Department" id="Department"
						placeholder="CSE" required title="This is a mandatory field">
					</td>
				</tr>
			


			
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



			<script>
				function checkPass() {
					var password1 = document.getElementById('password1');
					var password = document.getElementById('password');
					var message = document.getElementById('confirmMessage');
					if (password1.value == password.value) {
						message.innerHTML = "Passwords are Matching!"
					} else {
						message.innerHTML = "Passwords are not Matching!"
					}
				}
			</script>



		</form>
	</center>
</body>
</html>
