<%@page import="digimation.vacationrental.bean.UserBean"%>
<%@page import="digimation.vacationrental.dao.QuestionDAO"%>
<%@page import="digimation.vacationrental.bean.QuestionBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="userUpdate" method="post" enctype="multipart/form-data">
<%UserBean userBean = (UserBean)request.getAttribute("userBean");
	if(userBean!=null){
%>
	<input type="hidden" name="userId" value="<%=userBean.getUser_id()%>">
	<table>
		<tr>
		<th>First name</th>
		<td>:</td>
		<td><input type="text" name="txtFirstName" id="txtFirstName" value="<%=userBean.getFirst_name()%>">${firstName}</td>
		</tr>
		
		<tr>
		<th>Middle name</th>
		<td>:</td>
		<td><input type="text" name="txtMiddleName" id="txtMiddleName" value="<%=userBean.getMiddle_name()%>">${middleName}</td>
		</tr>
		
		<tr>
		<th>Last name</th>
		<td>:</td>
		<td><input type="text" name="txtLastName" id="txtLastName" value="<%=userBean.getLast_name()%>">${lastName}</td>
		</tr>
		
		<tr>
		<th>Email Id</th>
		<td>:</td>
		<td><input type="email" name="txtEmail" id="txtEmail" value="<%=userBean.getEmail_id()%>">${emailId}</td>
		</tr>
		
		<tr>
		<th>Password</th>
		<td>:</td>
		<td><input type="password" name="txtPassword" id="txtPassword" value="<%=userBean.getPassword()%>">${password}</td>
		</tr>
		
		<tr>
		<th>Mobile</th>
		<td>:</td>
		<td><input type="text" name="txtMobile" id="txtMobile" value="<%=userBean.getMobile()%>"></td>
		</tr>
		
		<tr>
		<th>LandLine</th>
		<td>:</td>
		<td><input type="text" name="txtLandline" id="txtLandline" value="<%=userBean.getLandline()%>"></td>
		</tr>
		
		<tr>
		<th>Gender</th>
		<td>:</td>
		<td><input type="radio" name="rdbGender" id="rdbGender" value="MALE">Male
			<input type="radio" name="rdbGender" id="rdbGender" value="FEMALE">Female ${gender}</td>
		</tr>
		
		<tr>
		<th>Address</th>
		<td>:</td>
		<td><input type="text" name="txtAddress" id="txtAddress" value="<%=userBean.getAddress()%>">${address}</td>
		</tr>
		
		<tr>
		<th>Date Of Birth</th>
		<td>:</td>
		<td><input type="txt" name="dateDOB" id="dateDOB" value="<%=userBean.getDob()%>"></td>
		</tr>
		
		<tr>
		<th>Question</th>
		<td>:</td>
		<td><select name="drpdnQuestion">
			<option value="0">-Select State-</option>
			<% List<QuestionBean> question = new QuestionDAO().list();
				for(int i=0;i<question.size();i++){
					QuestionBean questionBean = question.get(i);
					if(userBean.getQue_id()==questionBean.getQue_id()){
			%>
			<option value="<%=questionBean.getQue_id()%>" selected="selected"><%=questionBean.getQuestion()%></option>
			<%}else{ %>
			<option value="<%=questionBean.getQue_id()%>"><%=questionBean.getQuestion()%></option>
			<%} %>
			<%} %>
			</select>
		</tr>
		
		<tr>
		<th>Answer</th>
		<td>:</td>
		<td><input type="text" name="txtAnswer" id="txtAnswer" value="<%=userBean.getAnswer()%>">${answer}</td>
		</tr>
		
		<tr>
		<th>Upload your photo</th>
		<td>:</td>
		<td><input type="file" name="filePhoto" id="filePhoto">${photo}</td>
		</tr>
		
		<tr>
		<th></th>
		<td></td>
		<td><input type="submit" name="submit" value="UPDATE">
			<a href="userList"><input type="button" name="showdata" value="Show All Data"></a></td>
	</tr>
		
	</table>
	<%} %>
</form>
</center>
</body>
</html>