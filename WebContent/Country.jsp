<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="countryInsert">

<center>

<table>
	${duplicate}
	<tr>
		<th>Country Name</th>
		<td>:</td>
		<td><input type="text" name="txtCountry" id="txtCountry">${country} ${pattern}</td>
	</tr>
	
	<tr>
	<th></th>
	<td></td>
	<td><input type="submit" name="submit" value="SUBMIT">
		<input type="reset" name="reset" value="RESET">
		<a href="countryList"><input type="button" name="showdata" value="Show All Data"></a></td>
	</tr>
</table>
</center>
	
</form>
</body>
</html>