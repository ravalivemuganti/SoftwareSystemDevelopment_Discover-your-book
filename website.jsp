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
<body>
<div id="header">
		<h1>Discover your book..!!</h1>
	</div>

<h2 align="center" style="margin-top:10px">Feed back form</h2>

	<form>
		<div id="formy">
			Your name:<br>
			<input type="text" name="realname"><br>
			<br> Your email:<br>
			<input type="text" name="email"> <br><br> Your comments:<br> 
			<textarea name="comments" rows="15" cols="50">
</textarea><br><br>
			<input type="button" onclick="change();" value="Submit">
		</div>
		<div id="thanks">
			<h1 align="center" style="margin-top:50px">Thank You</h1>
		</div>
	</form>
</body>
</html>