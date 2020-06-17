<%@page import="java.util.List"%>
<%@page import="com.crime_tracker.model.AddressDAO" %>
<!DOCTYPE html>
<html lang="en">
<!--<![endif]-->
<!-- HEAD SECTION -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Crime Tracker</title>
    
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    
    <link href="assets/Slides-SlidesJS-3/examples/playing/css/slider.css" rel="stylesheet" />
    <!--CUSTOM STYLE -->
    <link href="assets/css/style.css" rel="stylesheet" />

</head>
<!--END HEAD SECTION -->
<body>
    
    <script type="text/javascript" language="javascript">
        var counter = 1;
        var limit = 10;
        function addInput(divName){
             if (counter == limit)  {
                  alert("You have reached the limit of adding " + counter + " inputs");
             }
             else {
                  var newdiv = document.createElement('div');
                  newdiv.innerHTML = " <br><input class='form-control' type='file' name='myInputs[]'>";
                  document.getElementById(divName).appendChild(newdiv);
                  counter++;
             }
        }
 </script>   
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
				document.getElementById("city1").innerHTML = xreq.responseText;
			}
		}
	}
</script>
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
                        <li><a href="vehicle.jsp">Vehicle</a></li>
                        <li><a href="search_vehicle.jsp">Find Vehicle</a></li>
                        <li><a href="missing_person.jsp">Missing person</a></li>
                        <li><a href="view_missing.jsp">View missing person</a></li>
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
        <img src="assets/img/slider/images/1.jpg" alt="" />
        <img src="assets/img/slider/images/2.jpg" alt="" />

    </div>
    <!-- END SLIDER SECTION -->
	
    <form method="POST" action="imagecontroller" enctype="multipart/form-data">
	<center>
	<h1><b>CRIME REPORT</b></h1>
	</center>
	
        <input type="hidden" name="username" value="<%= session.getAttribute("username") %>"/>
	<font size="4px">Crime type:</font>
                <select class="form-control" name="crime_type">
		<option value="homicide">Homicides</option>
		<option value="drunk and drive">Drunk and drive</option>
                <option value="hit and run">hit and run</option>
                <option value="robbery">Robbery</option>
                <option value="anti social">Anti-social behavior</option>
	</select><br>
	
	<font size="4px">Date of crime</font>
        <input class="form-control" type="text" name="date"/>
        <br>
	<div id="dynamicInput">
           <font size="4px">Images</font>
           <input class="form-control" type="file" name="myInputs[]"> </div><font style="color: red;" size="4px"><br> Only images are valid with maximum size 5MB and 10 photos/Report.</font>
           <input class="btn btn-primary" type="button" value="Add more images" onClick="addInput('dynamicInput');">
                <br><br>
	<font size="4px">Reason???</font>
	<input class="form-control" type="text" name="reason"/>
	<br>
        
        <font size="4px">State</font>
        <select class="form-control" name="state" onchange="getdist1(this.value)">
            <option>--State--</option>
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
            
        </select>
	<br>
        
        <font size="4px">District</font>
        <select class="form-control" name="dist" id="dist1" onchange="getCity(this.value)">
            <option>--District--</option>
        </select>
	<br>
        
	<font size="4px">Place of Crime</font>
        <select class="form-control" name="city" id="city1">
            <option>--Place of crime--</option>
        </select>
	<br>
        <font size="4px">Address</font>
	<textarea class="form-control" name="address"></textarea>
	<br>
	<font size="4px">Description in detail</font>
	<textarea class="form-control" name="description"></textarea>
	<br>
	<font size="4px">Suspect</font>
	<input class="form-control" type="text" name="suspect"/>
        <br>
        <center> <input type="Submit" class="btn btn-primary" name="Report" value="Report"/> </center>
	
	
	
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
