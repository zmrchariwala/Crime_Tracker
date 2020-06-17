<%@page import="java.util.List"%>
<%@page import="com.crime_tracker.model.AddressDAO"%>
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
    <script type="text/javascript">
         function getdist1(val1){
		var xreq = new XMLHttpRequest();
		xreq.open("get","dist.jsp?st="+val1,true);
		xreq.send();
		xreq.onreadystatechange = function(){
			if((xreq.readyState==4)&&(xreq.status==200)){
				document.getElementById("dist1").innerHTML = xreq.responseText;
			}
		}
	}   
        
	function getCity(val){
		var xreq = new XMLHttpRequest();
		xreq.open("get","city.jsp?dist="+val,true);
		xreq.send();
		xreq.onreadystatechange = function(){
			if((xreq.readyState==4)&&(xreq.status==200)){
				document.getElementById("city").innerHTML = xreq.responseText;
			}
		}
	}
</script>
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
                   <li><a href="reg_up_ho.jsp">Register/Update Head Office</a></li>
                    <li><a href="ad_view_crime.jsp">View Reports/Crimes</a></li>
                    <li><a href="ad_view_user.jsp">View Users</a></li>
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
	
	<form method="POST" action="reg_ps.jsp">
	<center>
	
	<br>
	<h1><b>REGISTER POLICE STATION</b></h1>
	<br><br>
	<table>
	<tr><td style="height:40px;">
	<font size="5px">Incharge Officer</font></td><td>
	<input class="form-control" type="text" name="officer"/></td></tr>
        <tr><td style="height:40px;">
	<font size="5px">Position</font></td><td>
	<input class="form-control" type="text" name="post"/></td></tr>
        <tr><td style="height:40px;">
	<font size="5px">State</font></td><td>
	<select class="form-control" id="st" onchange=getdist1(this.value)>
            <option>--Select State--</option>
            <%
                AddressDAO dao=new AddressDAO();
                List<String> state=dao.getstate();
                for(String s:state)
                {
                    %>
                    <option value="<%=s%>"><%=s%></option>
                    <%
                }
                %>
        </select></td></tr>
	<tr>
	<td style="height:40px;"><font size="5px">District</font></td>
        <td><select class="form-control" name="dist" id="dist1" onchange="getCity(this.value)">
            <option>--District--</option>
        </select></td>
	</tr>
	<tr>
	<td style="height:40px;"><font size="5px">City</font></td>
        <td><select class="form-control" name="city" id="city">
            <option>--City--</option>
        </select></td>
	</tr>
	<tr><td style="height:40px;">
	<font size="5px">Enter Username</font></td><td>
	<input class="form-control" type="text" name="username"/></td></tr>
	<tr><td style="height:40px;">
	<font size="5px">Enter Password</font></td><td>
	<input class="form-control" type="password" name="password"/></td></tr>
        <tr><td></td><td>
	<input class="btn btn-primary" type="submit" name="submit" value="Register"/><td></tr>
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
