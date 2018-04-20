<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="digimation.vacationrental.bean.BookingBean"%>
<%@page import="java.util.List"%>
<html>
 <head>
 <title>UserBookingList</title>
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
                <a href="userBookingList?userId=<%=sessionBean.getUser_id() %>" class="small-box-footer">All info <i class="fa fa-arrow-circle-down"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3></h3>
                  <p>Property Requested By You</p>
                </div>
                <a href="userBlockedPropertyList?userId=<%=sessionBean.getUser_id()%>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          <form action="" name="">
 
<%List<BookingBean> listOfUserBooking = (ArrayList)request.getAttribute("listOfUserBooking"); 
if(listOfUserBooking!=null) {%>
	<table border="1">
		<tr bgcolor="orange">
			<th>Id</th>
			<th>BOOKING DATE</th>
			<th>BookingStatus</th>
			<th>HOTEL NAME</th>
			<th>PROPERTY NAME</th>
			<th>USER NAME</th>
			<th colspan="2">Action</th>
		</tr>
		<%for(int i=0;i<listOfUserBooking.size();i++){
			BookingBean bookingBean = listOfUserBooking.get(i); %>
		<tr>
			<td><%=bookingBean.getBooking_id()%></td>
			<td><%=bookingBean.getBooking_date()%></td>
			<td><%=bookingBean.getBookingstatus()%></td>
			<td><%=bookingBean.getHotel_name()%></td>
			<td><%=bookingBean.getProperty_name()%></td>
			<td><%=bookingBean.getFirst_name()+" "+bookingBean.getLast_name()%></td>
			<td><a href="bookingEdit?bookingId=<%=bookingBean.getBooking_id()%>">Update</a></td>
			<td><a href="bookingDelete?bookingId=<%=bookingBean.getBooking_id()%>">Delete</a></td>
		</tr>
		<%} %>
	</table>
	
	<%}else{ %>
	<h3>Data not found...</h3>
	<%} %>
	</section>
	</div>
</form>
          </section>            
          </div><!-- /.row (main row) -->
  </body>
</html>
