<!DOCTYPE html>
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
                        <li><a href="index.jsp">Home</a></li>


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

        <form method="POST" action="reg1.jsp">
            <center>
                <input type="hidden" name="first" value="<%= request.getParameter("first")%>" />
                <input type="hidden" name="middle" value="<%=request.getParameter("middle")%>" />
                <input type="hidden" name="last" value="<%= request.getParameter("last")%>" />
                <input type="hidden" name="address" value="<%= request.getParameter("address")%>" />
                <input type="hidden" name="city" value="<%= request.getParameter("city")%>" />
                <input type="hidden" name="state" value="<%= request.getParameter("state")%>" />
                <input type="hidden" name="country" value="<%= request.getParameter("country")%>" />
                <input type="hidden" name="email" value="<%= request.getParameter("email")%>" />
                <input type="hidden" name="mobile" value="<%= request.getParameter("mobile")%>" />
                <input type="hidden" name="addhaar" value="<%= request.getParameter("addhaar")%>" />
                <input type="hidden" name="username" value="<%= request.getParameter("username")%>" />
                <input type="hidden" name="password" value="<%= request.getParameter("password")%>" />

                <input type="hidden" name="code" value="<%= request.getParameter("code")%>" />
                <input type="hidden" name="email" value="<%= request.getParameter("email")%>" />
                <br>
                <h1><b>VERIFY THE CODE</b></h1>
                <br><br>
                <h3>Enter the code:</h3>
                <input class="form-control" required="required" type="text" name="cod"/>
                <br><br>
                <input class="btn btn-p rimary" type="submit" name="submit" value="Verify"/>
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
