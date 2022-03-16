<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
</head>
<body>
	<form name="form1" action="LogIn" method="post">
		<table border="1" width="50">

			<tr>
				<th colspan="2">Login Here</th>
			</tr>

			<tbody>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" value=""/></td>
				</tr>
				<tr>
					<td><input type="reset" value="Submit"/></td>
					<td><input type="reset" value="Reset"/></td>
				</tr>

			</tbody>
		</table>
	</form>
</body>
</html>