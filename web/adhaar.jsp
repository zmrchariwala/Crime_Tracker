<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<%@include file="database.jsp" %>
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
                        <li><a href="contact.html">Contact</a></li>
                        

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


    <center>

        <%                rs = st.executeQuery("select * from goverment where adhaar=" + request.getParameter("adhaar"));
            while (rs.next()) {
        %>  
        <br>

        <h1><b>ADHAAR DETAILS</b></h1>
        <br>
        <form method="POST" action="reg.jsp">
            <table>
                <tr><td>
                        First name</td><td><input class="form-control" value="<%= rs.getString(2)%>" type="text" name="first" readonly><br></td></tr><tr><td>
                        middle name</td><td><input class="form-control" value="<%= rs.getString(3)%>" type="text" name="middle" readonly><br></td></tr><tr><td>
                        Last name</td><td><input class="form-control" value="<%= rs.getString(4)%>" type="text" name="last" readonly><br></td></tr><tr><td>
                        Address</td><td><textarea class="form-control" name="address" readonly><%= rs.getString(5)%></textarea><br></td></tr><tr><td>
                        city</td><td><input class="form-control" value="<%= rs.getString(6)%>" type="text" name="city" readonly><br></td></tr><tr><td>
                        state</td><td><input class="form-control" value="<%= rs.getString(7)%>" type="text" name="state" readonly><br></td></tr><tr><td>
                        country</td><td><input class="form-control" value="<%= rs.getString(8)%>" type="text" name="country" readonly><br></td></tr><tr><td>
                        <%
                            if (rs.getString("gender").equals("Male")) {
                        %>
                        Gender</td><td><input type="radio" name="gender" checked="checked"> Male<br></td></tr><tr><td></td><td>
                        <input type="radio" name="gender"/> Female<br></td></tr><tr><td>
                        <% } else {
                        %>
                        Gender</td><td><input type="radio" name="gender"/> Male<br></td></tr><tr><td></td><td>
                        <input type="radio" name="gender" checked="checked"/> Female<br></td></tr><tr><td>
                        <%
                            }
                        %>
                        E-mail</td><td><input class="form-control" value="<%= rs.getString(9)%>" type="text" name="email" readonly><br></td></tr><tr><td>
                        Mobile no</td><td><input class="form-control" type="text" value="<%= rs.getString(10)%>" name="mobile" readonly><br></td></tr><tr><td>
                        ADHAAR NO</td><td><input class="form-control" value="<%= rs.getString(11)%>" type="text" name="addhaar" readonly><br></td></tr><tr><td>
                        username</td><td><input placeholder="Enter Username" class="form-control" type="text" name="username"/><br></td></tr><tr><td>
                        Password</td><td><input class="form-control" placeholder="Enter Password" type="password" name="password"/><br></td></tr>
                        <% }%>
            </table>
            <br><br>
            <input class="btn btn-primary" type="submit" name="submit" value="Verify"/>
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
