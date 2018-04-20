<!DOCTYPE html>
<%@page import="digimation.vacationrental.dao.UserDAO"%>
<%@page import="digimation.vacationrental.bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="digimation.vacationrental.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<html>
 <head>
 <title>User Panel</title>
 
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
                    <span class="help-block">Ahmedabad, IN</span>
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
                <a href="UserPanel.jsp%>" class="small-box-footer">All info <i class="fa fa-arrow-circle-down"></i></a>
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
                  <p>All Restaurant</p>
                </div>
                <a href="userBlockedPropertyList?userId=<%=sessionBean.getUser_id()%>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          <form action="" name="RegistrationPage" class="form-horizontal" role="form">
					
							 <div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">First Name :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getFirst_name()%>" disabled>
     						 </div>
    						 </div>				

							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Middle Name :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getMiddle_name()%>" disabled>
     						 </div>
    						 </div>	
							
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Last Name :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getLast_name()%>" disabled>
     						 </div>
    						 </div>	
							

							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Email :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getEmail_id()%>" disabled>
     						 </div>
    						 </div>	
							
					
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Password :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getPassword()%>" disabled>
     						 </div>
    						 </div>	
							
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Mobile :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getMobile()%>" disabled>
     						 </div>
    						 </div>	
							
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Landline :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getLandline()%>" disabled>
     						 </div>
    						 </div>	
							
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Address :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getAddress()%>" disabled>
     						 </div>
    						 </div>	
							
							
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">DOB :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getDob()%>" disabled>
     						 </div>
    						 </div>	
   							 
   							 <div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Question :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getQuestion()%>" disabled>
     						 </div>
    						 </div>	
							
							<div class="form-group">
     						 <label for="inputPassword" class="col-sm-2 control-label">Answer :</label>
    						 <div class="col-sm-10">
       						 <input class="form-control" id="disabledInput" type="text" value="<%=sessionBean.getAnswer()%>" disabled>
     						 </div>
    						 </div>	
						
							<div class="form-group">        
							<div class="col-sm-offset-2 col-sm-10">
							<input type="button" name="edit" value="EDIT">
							</div>
							</div>
							
				</form>
          </section>            
          </div><!-- /.row (main row) -->
  </body>
</html>
