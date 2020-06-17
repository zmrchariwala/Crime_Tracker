<%@page import="java.util.List"%>
<%@page import="com.crime_tracker.model.AddressDAO" %>
<%@include file="database.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<!-- HEAD SECTION -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Crime Tracker</title>
    
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
   
    <!--SLIDER CSS CLASES -->
    <link href="assets/Slides-SlidesJS-3/examples/playing/css/slider.css" rel="stylesheet" />
    <!--CUSTOM STYLE -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<!--END HEAD SECTION -->
<body>
    <!-- NAV SECTION -->

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Crime Tracker</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html">Home</a></li>
                    
                    <li><a href="reg_up_ho.jsp">Register/Update Head Office</a></li>
                    <li><a href="ad_view_user.jsp">View Users</a></li>
                    <li><a href="ad_select.jsp">View Crimes</a></li>
                    <li><a href="feedback.jsp">Feedback</a></li>
                    <li><a href="logout.jsp">logout</a></li>
                    
                </ul>
            </div>

        </div>
    </div>
    <!--END NAV SECTION -->
    <!-- HOME SECTION -->

    <!-- SLIDER SECTION -->
    <div id="slides">
        <img src="assets/img/slider/images/1.jpg" alt="" />
        <img src="assets/img/slider/images/2.jpg" alt="" />
        <img src="assets/img/slider/images/3.jpg" alt="" />
        <img src="assets/img/slider/images/4.jpg" alt="" />

    </div>
    <!-- END SLIDER SECTION -->
	
    <form method="POST" action="">
        <center> <h1>Police Station</h1> </center>
        <table class="table table-striped">
            <tr>
                <th>Incharge Officer</th>
                <th>Position</th>
                <th>State</th>
                <th>District</th>
                <th>no of reports</th>
                <th>City</th>
                <th>Username</th>
                <th></th>
            </tr>
        <%
            rs=st.executeQuery("select * from police_station where district='"+request.getParameter("district")+"'");
            while(rs.next())
            {
            %>
            <tr>
                <td><%= rs.getString("incharge_officer") %></td>
                <td><%= rs.getString("position") %></td>
                <td><%= rs.getString("state") %></td>
                <td><%= rs.getString("district") %></td>
                <td><%= rs.getString("no_reports") %></td>
                <td><%= rs.getString("city") %></td>
                <td><%= rs.getString("username") %></td>
                <td>
                    <a class="btn btn-info" href="update_policestation.jsp?id=<%= rs.getString("id") %>">Update</a>
                </td>
            </tr>
            <%
                }
                %>
        </table>
    </form>
    
	  <div id="footer">
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-4">
                <h4></h4>
                
                
            </div>
            
        </div>


    </div>

    <!--END FOOTER SECTION -->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY LIBRARY -->
    <script src="assets/js/jquery.js"></script>
    <!-- CORE BOOTSTRAP LIBRARY -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- SLIDER SCRIPTS LIBRARY -->
    <script src="assets/Slides-SlidesJS-3/examples/playing/js/jquery.slides.min.js"></script>
    <!-- CUSTOM SCRIPT-->

    <script>
        $(document).ready(function () {
            $('#slides').slidesjs({
                width: 940,
                height: 528,
                play: {
                    active: true,
                    auto: true,
                    interval: 5000,
                    swap: true
                }
            });
        });

		
		
		  $( function() {
    $( "#datepicker" ).datepicker();
  } );
    </script>

</body>
</html>
