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
        <%        String user = session.getAttribute("username").toString();
            String id = request.getParameter("id");
        %>
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
                        <li><a href="police_homepage.jsp">Homepage</a></li>

                        <li><a href="ad_search_vehicle.jsp">Search Vehicle</a></li>                       
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="logout.jsp">Logout</a></li>

                    </ul>
                </div>

            </div>
        </div>
        <!--END NAV SECTION -->
        <!-- HOME SECTION -->

        <!-- SLIDER SECTION -->
        <!--<div id="slides">
            <img src="assets/img/slider/images/1.jpg" alt="" />
            <img src="assets/img/slider/images/2.jpg" alt="" />
            <img src="assets/img/slider/images/1.jpg" alt="" />
            <img src="assets/img/slider/images/2.jpg" alt="" />
    
        </div>-->
        <!-- END SLIDER SECTION -->


    <center>
        <h1>View Report</h1>

        <table class="table table-striped">

            <tr>
                <th>VICTUM</th>
                <th>CRIME TYPE</th>
                <th>REASON</th>
                <th>DATE OF CRIME</th>
                <th>PLACE</th>
                <th>DESCRIPTION</th>
                <th>SUSPECT</th>
                <th>UPDATE STATUS</th>

            </tr>
            <%
                rs = st.executeQuery("select * from crime where id='" + id + "'");
                if (rs.next()) {
                    String img = rs.getString("images");
                    String[] arr = img.split(":");
            %>                    
            <tr>
            <h2>Pictures regarding crime</h2>
            <div id="slides">
                <%
                    for (String w : arr) {
                %>
                <a href="view.jsp?img=<%= w%>" ><img src="images/<%= w%>" alt="No image" /></a>
                    <%
                        }
                    %>

            </div>
            </tr>

            <h1 style="color: #31b0d5;">CRIME DETAILS</h1>
            <form method="POST" action="up">                  
                <input type="hidden" name="id1" value="<%= id%>"/>
                <tr>

                    <td><%= rs.getString("victum")%></td>
                    <td><%= rs.getString("crime_type")%></td>
                    <td><%= rs.getString("why")%></td>
                    <td><%= rs.getString("date_of_crime")%></td>
                    <td><%= rs.getString("place")%></td>
                    <td><%= rs.getString("description")%></td>
                    <td><%= rs.getString("who")%></td>
                    <td>
                        <select name="status">
                            <option value="<%= rs.getString("status") %>"><%= rs.getString("status") %></option>
                            <option value="IN PROGRESS">IN PROGRESS</option>
                            <option value="CASE SOLVED">CASE SOLVED</option>
                        </select><br><br>
                        <button class="btn btn-info">UPDATE</button></td>

                </tr>
            </form>
            <form action="investigation" method="POST">
                <input type="hidden" name="id" value="<%= id%>"/>
                <tr>
                    <td colspan="9">
                        Update the investigation details.(e.g )
                        <textarea cols="10" rows="6" class="form-control" name="invest"></textarea><br>
                        <button class="btn btn-warning" >Update</button>
                    </td>
                </tr>
            </form>
            <%
                }
            %>


        </table>
    </center>


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
