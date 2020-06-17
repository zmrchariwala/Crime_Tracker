<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Crime Tracker</title>

        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/8396037d25.js" crossorigin="anonymous"></script>
        <!--SLIDER CSS CLASES -->
        <link href="assets/Slides-SlidesJS-3/examples/playing/css/slider.css" rel="stylesheet" />
        <!--CUSTOM STYLE -->
        <link href="assets/css/style.css" rel="stylesheet" />


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
                        <li><a href="login.html">Registration/Login</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="about.html">About us</a></li>
                        
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

        <div class="container">
            <div class="row main-low-margin text-center">
                <div class="col-md-4 col-sm-4">
                    <div class="circle-body"><i class="fa fa-camera fa-5x  icon-set"></i></div>
                    <h3>CAPTURE THE CRIME</h3><br><br><br>
                    <p>
                        Whenever you see the crime or illegal activities capture in your camera.
                    </p>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="circle-body"><i class="fa fa-dollar fa-5x  icon-set"></i></div>
                    <h3>REPORT TO THE POLICE STATION</h3><br>
                    <p>
                        Report the crime to police station using crime tracker. 
                    </p>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="circle-body"><i class="fa fa-envelope fa-5x  icon-set"></i></div>
                    <h3>CHECK REPORT STATUS</h3><br><br><br>
                    <p>
                        Check the status or updates on your report.
                    </p>
                </div>

            </div>
            <div class="row main-low-margin ">

                <div class="col-md-8 col-sm-8">
                    <h3>CRIME TRACKER</h3>
                    <p>
                        Crime tracker is the web-site to help the citizens of India.
                        Where the people can report online to the police station.
                        There no need to visit police station, people can just follow the steps and file a complaint.
                        NO need to be afraid,details of the report or complaints will be confidential with police and victum.

                    </p>
                    <p>
                        Before reporting the crime the user must be a citizen of India and Must be a Adhaar card holder.
                        Register yourself using ADHAAR card number,verify your details and than user can make to the police station. 
                    </p>
                </div>

                <div class="col-md-4 col-sm-4 text-center">
                    <img class="img-circle" src="assets/img/person.png">
                    <h3> <b>Satyameva Jayate</b></h3>
                    <h4><b>Truth Alone Triumphs</b></h4>

                </div>
            </div>
            <div class="row main-low-margin ">
                <div class="col-md-3 col-sm-3 text-center">
                    <i class="fa fa-desktop fa-5x"></i>
                    <h3>FRAUD REPORT</h3><br><br>
                    <p>
                        According to the Indian law the person who gives false complaint will be punished under sec 173 Cr.PC.
                        A report will be registered and court will decide.
                    </p>
                </div>
                <div class="col-md-3 col-sm-3 text-center">
                    <i class="fa fa-comments-o fa-5x "></i>
                    <h3>EASY REGISTRATION</h3>
                    <p>
                        User need to just enter the ADHAAR card number and verify the details by submitting code send to you by the system.
                    </p>
                </div>

            </div>


        </div>
        <div class="space-bottom"></div>
        <!--END HOME SECTION -->
        <!--FOOTER SECTION -->

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
