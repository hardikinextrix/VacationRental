<%@page import="java.util.ArrayList"%>
<%@page import="digimation.vacationrental.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="AdminHeader.jsp" %>
<body>
 <div class="content-wrapper">
 <section class="content-header">
          <h1>
            <b>USERS</b>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Users</li>
          </ol>
          </br>
 
<form name="UserListPage">
			<center>
				<input type="hidden" name="studentId" id="studentId">
				<table border="1">
					<%
						List<UserBean> listOfUser = (ArrayList) request.getAttribute("listOfUser");
						if (listOfUser != null) {
					%>
					<input type="hidden"  name="action">
					<tr bgcolor="orange">
						<th>ID</th>
						<th>NAME</th>
						<th>E-MAIL</th>
						<th>MOBILE</th>
						<th>LANDLINE</th>
						<th>GENDER</th>
						<th>ADDRESS</th>
						<th>DOB</th>
						<th>Question</th>
						<th>Answer</th>
						<th>IsActive</th>
						<th>Photo</th>
						<th colspan="3">Action</th>

					</tr>
					<%
						for (int i = 0; i < listOfUser.size(); i++) {

								UserBean userBean = listOfUser.get(i);
					%>

					<tr>
						<td><%=userBean.getUser_id()%>
						<td><%=userBean.getFirst_name() + " " + userBean.getLast_name()%></td>
						<td><%=userBean.getEmail_id()%></td>
						<td><%=userBean.getMobile()%></td>
						<td><%=userBean.getLandline()%></td>
						<td><%=userBean.getGender()%></td>
						<td><%=userBean.getAddress()%></td>
						<td><%=userBean.getDob()%></td>
						<td><%=userBean.getQuestion()%></td>
						<td><%=userBean.getAnswer()%></td>
						<%if(userBean.getIsactive()){%>
						<td><a href="userIsActive?action=true&userId=<%=userBean.getUser_id()%>"><font color=Green><%=userBean.getIsactive()%></font></a></td>
						<%}else{ %>
						<td><a href="userIsActive?action=false&userId=<%=userBean.getUser_id()%>"><font color=red><%=userBean.getIsactive()%></font></a></td>
						<%} %>
						<td><%=userBean.getPhoto()%></td>
						
						 <td><a href="userEdit?userId=<%=userBean.getUser_id()%>">
						 <input type="button" name="EDIT" value="EDIT"></a>
							<a href="userDelete?userId=<%= userBean.getUser_id()%>"><input
								type="button" name="DELETE" value="DELETE"></a></td>
							<td><a href="Reminder.jsp?userId=<%= userBean.getUser_id()%>"><input
								type="button" name="SetReminder" value="Set Reminder"></a></td>
					</tr>


					<%
						}
					%>

					<%
						} else {
					%>

					<h2>No Records Found To Display.......</h2>
					<%
						}
					%>
				</table>
				</br> <a href="User.jsp"><input type="button" name="ADD DATA"
					value="ADD DATA" />
			</center>
		</form>
		</section>
	</div>
</body>
</html>