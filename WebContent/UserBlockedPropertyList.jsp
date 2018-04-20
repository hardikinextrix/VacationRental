<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="digimation.vacationrental.bean.PropertyDetailsBean"%>
<%@page import="java.util.List"%>
<html>
 <head>
 <title>UserBlockedPropertyList</title>
 </head>
  <%@include file="UserHeader.jsp"%>	
  <body class="hold-transition skin-blue sidebar-mini">
  <div class="content-wrapper">
	<section class="content-header"></section>
        <section class="content">
          <!-- Small boxes (Stat box) -->
          
          
          <div class="row">
		<div class="col-sm-12 col-md-12 user-details">
            <div class="user-image">
                <img src="dist/img/img 2 100-100.jpg" alt="Akash Ramani" title="Akash Ramani" class="img-circle">
            </div>
            <div class="user-info-block">
                <div class="user-heading">
                    <h3><%=sessionBean.getFirst_name().toUpperCase()+" "+sessionBean.getLast_name().toUpperCase() %></h3>
                    <span class="help-block">Ahmedanad, IN</span>
                </div>
            </div>
        </div>
	</div>
            </section><!-- /.Left col -->
	<section class="content">
               <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3></h3>
                  <p>Profile</p>
                </div>
                <a href="UserPanel.jsp" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3></h3>
                  <p>Listed property</p>
                </div>
                <a href="userPropertyList?userId=<%=sessionBean.getUser_id()%>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3></h3>
                  <p>Booking History</p>
                </div>
                <a href="userBookingList?userId=<%=sessionBean.getUser_id() %>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3></h3>
                  <p>Property Requested By You</p>
                </div>
                <a href="userBlockedPropertyList?userId=<%=sessionBean.getUser_id()%>" class="small-box-footer">All info <i class="fa fa-arrow-circle-down"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          <form name="PropertyListPage">
			<center>
				<table border="1" >
					<%
						List<PropertyDetailsBean> listOfUserProperty = (ArrayList)request.getAttribute("listOfUserProperty");
					if(listOfUserProperty!=null){
					%>
					<input type="hidden" name="action">
					<tr bgcolor="orange">
						<th>ID</th>
						<th>TITLE</th>
						<th>ADDRESS</th>
						<th>OWNER NAME</th>
						<th>E-MAIL</th>
						<th>MOBILE</th>
						<th>LANDLINE</th>
						<th>RATE</th>
						<th>IS AVAILABLE</th>
						<th>AREA</th>
						<th>CITY</th>
						<th>PROPERTY TYPE</th>
						<th>Action</th>

					</tr>
					<%
						for (int i = 0; i < listOfUserProperty.size(); i++) {

								PropertyDetailsBean propertyDetailsBean = listOfUserProperty.get(i);
					%>

					<tr>
						<td><%=propertyDetailsBean.getProperty_id()%></td>
						<td><%=propertyDetailsBean.getProperty_title()%></td>
						<td><%=propertyDetailsBean.getAddress()%></td>
						<td><%=propertyDetailsBean.getOwner_name()%></td>
						<td><%=propertyDetailsBean.getEmail_id()%></td>
						<td><%=propertyDetailsBean.getMobile()%></td>
						<td><%=propertyDetailsBean.getLandline()%></td>
						<td><%=propertyDetailsBean.getRate()%></td>
						<%if(propertyDetailsBean.getIsavailable()){%>
						<td><a href="propertyDetailsIsAvailable?action=true&propertyId=<%=propertyDetailsBean.getProperty_id()%>"><font color=Green><%=propertyDetailsBean.getIsavailable()%></font></a></td>
						<%}else{ %>
						<td><a href="propertyDetailsIsAvailable?action=false&propertyId=<%=propertyDetailsBean.getProperty_id()%>"><font color=red><%=propertyDetailsBean.getIsavailable()%></font></a></td>
						<%} %>
						<td><%=propertyDetailsBean.getArea_name()%></td>
						<td><%=propertyDetailsBean.getCity_name()%></td>
						<td><%=propertyDetailsBean.getType_name()%></td>
						
						 <td><a href="propertyDetailsEdit?propertyId=<%=propertyDetailsBean.getProperty_id()%>">
						 <input type="button" name="EDIT" value="EDIT"></a>
							<a href="propertyDetailsDelete?propertyId=<%=propertyDetailsBean.getProperty_id()%>"><input
								type="button" name="DELETE" value="DELETE"></a>
							<a href="PropertyPhoto.jsp?propertyId=<%=propertyDetailsBean.getProperty_id()%>"><input
								type="button" name="photo" value="Add photo"></a>
								<a href="PropertyDetailsAmenities.jsp?propertyId=<%=propertyDetailsBean.getProperty_id()%>"><input
								type="button" name="Amenities" value="Add Amenities"></a>
								</td>
								
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
				</br> <a href="PropertyDetails.jsp"><input type="button" name="ADD DATA"
					value="ADD DATA" />
			</center>
		</form>
          </section>            
          </div><!-- /.row (main row) -->
  </body>
</html>
