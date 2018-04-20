<!DOCTYPE html>
<%@page import="digimation.vacationrental.bean.UserBean"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User Header</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="dist/css/profile.css">

  </head>
  <body class="hold-transition skin-blue sidebar-mini">
  <% UserBean sessionBean = (UserBean)session.getAttribute("bean2");

if(sessionBean!=null){
%>
  
    <div class="wrapper">

      <header class="main-header">
        <a href="AdminPanel.jsp" class="logo">
          <span class="logo-mini"><b>VR</b></span>
          <span class="logo-lg"><b>Vacation</b> Rental</span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
				  <li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					  <img src="dist/img/img 2.jpg" class="user-image" alt="User Image">
					  <span class="hidden-xs">AKASH RAMANI</span>
					</a>
					<ul class="dropdown-menu">
					  <!-- User image -->
					  <li class="user-header">
						<img src="dist/img/img 2.jpg" class="img-circle" alt="User Image">
						<p>
						  AKASH RAMANI
						  <small>Member since Nov. 2012</small>
						</p>
					  </li>
					  <li class="user-footer">
						<div class="pull-left">
						  <a href="#" class="btn btn-default btn-flat">Profile</a>
						</div>
						<div class="pull-right">
						  <a href="logout" class="btn btn-default btn-flat">Sign out</a>
						</div>
					  </li>
					</ul>
				  </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="UserPanel.jsp">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              </a>
            </li>
            <li class="treeview">
              <a href="UserPanel.jsp">
                <i class="fa fa-user"></i> <span>Profile</span>
              </a>
            </li>
            <li class="treeview">
              <a href="userPropertyList?userId=<%=sessionBean.getUser_id()%>">
                <i class="fa fa-building"></i>
                <span>All listed Property</span>
              </a>
             </li>
             <li class="treeview">
              <a href="userBookingList?userId=<%=sessionBean.getUser_id() %>">
                <i class="fa fa-map-marker"></i>
                <span>Booking History</span>
              </a>
             </li>
             <li class="treeview">
              <a href="userBlockedPropertyList?userId=<%=sessionBean.getUser_id()%>">
                <i class="fa fa-building"></i>
                <span>Property Requested By You</span>
              </a>
             </li>
            
        </section>
      </aside>
      
        </section><!-- /.content -->
        
        </div>
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="plugins/knob/jquery.knob.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <script src="dist/js/app.min.js"></script>
    <script src="dist/js/pages/dashboard.js"></script>
    <script src="dist/js/demo.js"></script>
    <%}else{
    	response.sendRedirect("login.jsp");
    } %>
  </body>
</html>
