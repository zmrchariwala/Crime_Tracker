<%@page import="java.util.List"%>
<%@page import="com.crime_tracker.model.AddressDAO"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<%@include file="database.jsp" %>
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
        <!--BOOTSTRAP MAIN STYLES -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!--FONTAWESOME MAIN STYLE -->
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
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                        

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

        <form method="POST" action="up_veh">
            <center>
            <h1>VEHICLE DETAILS</h1>
            <%
                String no=request.getParameter("no");
                rs=st.executeQuery("select * from vehicle where vehicle_no='"+no+"'");
                %>
                <input type="hidden" name="no" value="<%= no %>"/>
                <table class="table-striped">
                    <tr>
                        <th>Vehicle type</th>
                        <th>Vehicle no</th>
                        <th>Lost from</th>
                        <th>Chases_no</th>
                        <th>Company</th>
                        <th>Model</th>
                        <th>Found at</th>
                    </tr>
                    <tr>
                    <%
                        while(rs.next()){
                          %>
                          <td><%= rs.getString("vehicle_type") %></td>
                          <td><%= rs.getString("vehicle_no") %></td>
                          <td><%= rs.getString("lost_from") %></td>
                          <td><%= rs.getString("chases_no") %></td>
                          <td><%= rs.getString("company") %></td>
                          <td><%= rs.getString("model") %></td>
                          <td><input type="text" name="place" class="form-control1" /></td>
                          <td><input type="submit" value="Update" class="btn btn-block"/></td>
                                  <%
                        }
                        %>
                        </tr>
                </table>
            </center>
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
                        auto: false,
                        interval: 5000,
                        swap: true
                    }
                });
            });

        </script>

    </body>
</html>
