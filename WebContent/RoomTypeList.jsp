<%@page import="java.util.ArrayList"%>
<%@page import="digimation.vacationrental.bean.RoomTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function updt(rtypeId){
alert("Id :"+rtypeId);
var f=document.RoomTypeListPage;
f.rtypeId.value=rtypeId;
f.action="roomTypeEdit";
f.submit();
}
</script>
</head>
<%@include file="AdminHeader.jsp" %>
<body>
 <div class="content-wrapper">
 <section class="content-header">
 <h1>
            <b>ROOM TYPE</b>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Room type</li>
          </ol>
          </br>
<form action="" name="RoomTypeListPage">
	<center>
	<table border="1">
		<input type="hidden" name="rtypeId" id="rtypeId"/>
		<% List<RoomTypeBean> room = (ArrayList)request.getAttribute("room");
		if(room!=null){
		%>
		<tr bgcolor="orange">
		<td>RTYPE_ID</td>
		<td>ROOM TYPE</td>
		<td colspan="2">ACTION</td>
		</tr>
		<% for (int i=0;i<room.size();i++){
			RoomTypeBean roomTypeBean = room.get(i);
			%>
		<tr>
			<td><%=roomTypeBean.getRtype_id()%></td>
			<td><%=roomTypeBean.getType_name() %></td>
			<td><a href="#" onclick="updt(rtypeId=<%=roomTypeBean.getRtype_id()%>)")><input type="button" name="Update" value="UPDATE"></a></td>
			<td><a href="roomTypeDelete?rtypeId=<%=roomTypeBean.getRtype_id()%>"><input type="button" name="Delete" value="DELETE"></a></a></td>
			
		</tr>
		<%} %>
		<%} else {%>
			<h1>Data not found...</h1>
			<%} %>
	</table></br>
	<p><a href="RoomType.jsp"><input type="button" value="Add Data"></a></p>
	</center>
</form>
</body>
</html>