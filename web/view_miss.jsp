<%@page import="java.util.List"%>
<%@page import="com.crime_tracker.model.AddressDAO"%>
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
                        <li><a href="crime_report.jsp">Report crime</a></li>
                        <li><a href="vehicle.jsp">Vehicle</a></li>
                        <li><a href="search_vehicle.jsp">Find Vehicle</a></li>
                        <li><a href="view_missing.jsp">View missing person</a></li>
                        <li><a href="user_report.jsp">My Reports</a></li>
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

        <form method="POST" action="view_miss.jsp">
            <center>

                <br>
                <h1><b>VIEW MISSING PERSON</b></h1>
                <% String id = request.getParameter("age"); %>
                <%
                    if (id.equals("1")) {
                        rs = st.executeQuery("select * from missing_person where age>='1' and age<='3'");
                    } else if (id.equals("4")) {
                        rs = st.executeQuery("select * from missing_person where age>='4' and age<='8'");
                    } else if (id.equals("9")) {
                        rs = st.executeQuery("select * from missing_person where age>='9' and age<='12'");
                    } else if (id.equals("13")) {
                        rs = st.executeQuery("select * from missing_person where age>='13' and age<='20'");
                    } else if (id.equals("21")) {
                        rs = st.executeQuery("select * from missing_person where age>='21' and age<='30'");
                    } else {

                    }
                %>
                <table class="table-striped">
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>State</th>
                        <th>City</th>
                        <th>Status</th>
                    </tr>
                    <tr>
                        <%
                            while (rs.next()) {
                        %>
                        <td><img src="missing/<%= rs.getString("image")%>" /></td>
                        <td><%= rs.getString("full_name")%></td>
                        <td><%= rs.getString("age")%></td>
                        <td><%= rs.getString("address")%></td>
                        <td><%= rs.getString("state")%></td>
                        <td><%= rs.getString("city")%></td>
                        <td><%= rs.getString("status")%></td>
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
                        auto: true,
                        interval: 5000,
                        swap: true
                    }
                });
            });

        </script>

    </body>
</html>
