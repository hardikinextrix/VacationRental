<%@page import="digimation.vacationrental.bean.CountryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% CountryBean country = (CountryBean)request.getAttribute("country"); 
if(country!=null) {%>

<form action="countryUpdate">

<center>

<table>


	<input type="hidden" name="countryId" value="<%=country.getCountry_id()%>">
	<tr>
		<th>Country-Name</th>
		<td>:</td>
		<td><input type="text" name="txtcountry" id="txtcountry" value="<%=country.getCountry_name()%>"></td>
	</tr>
	
	<tr>
	<th></th>
	<td></td>
	<td><input type="submit" name="submit" value="UPDATE">
	<a href="countryList"><input type="button" value="Skip Updation"></a></td>
	</tr>
	
</table>

</center>
	
</form>
<%}else{ %>
	<h1>data never updated..</h1>
	<%} %>

</body>
</html>