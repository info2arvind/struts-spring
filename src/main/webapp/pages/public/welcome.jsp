<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
<sb:head includeScripts="false" includeScriptsValidation="false" />
<sj:head />
<link rel="stylesheet" type="text/css"
	href="pages/resources/css/demo.css" />
<script src="pages/resources/js/dw_paus_scroller.js"
	type="text/javascript"></script>
<style type="text/css">
body {
	padding-top: 80px;
	/* 60px to make the container go all the way to the bottom of the topbar */
} 
div#wn {
	position: relative;
	width: 566px;
	height: 366px;
	overflow: hidden;
	border: 1px solid #ddd;
}

div#wn table {
	border-spacing: 0;
	border-collapse: collapse;
}

div#wn td {
	padding: 8px;
}

</style>
<script type="text/javascript">
	if (DYN_WEB.Scroll_Div.isSupported()) {

		DYN_WEB.Event.add(window, 'load', function() {
			var wndo = new DYN_WEB.Scroll_Div('wn', 'lyr');

			// see info online at http://www.dyn-web.com/code/scrollers/pausing/documentation.php
			var options = {
				axis : 'h',
				bRepeat : true,
				repeatId : 'rpt',
				dur : 600, // duration of glide-scroll
				bPauseResume : true,
				distance : 566, // distance of glide-scroll
				pauseDelay : 3000,
				resumeDelay : 300,
				startDelay : 1000
			};

			wndo.makePauseAuto(options);

		});
	}
</script>
</head>
<body>
   
	 <nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Struts2 Bootstrap Project - </a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><s:a href="#">Home</s:a></li>
				<li><s:a href="#">About</s:a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" style="padding-right: 20px;">
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            </ul>
		</div>
	</nav> 
	
	<div class="container">
		<div class="row">
			<div class="col-md-4" style="/* outline: 1px solid orange; border-radius: 5px; */background-color: #F5F5F5;">
			<div style="padding: 25px;">          
			           
			<s:form enctype="multipart/form-data" theme="bootstrap" cssClass="form-vertical" label="Search Box">
               
                <s:radio
                        tooltip="Choose Your Color"
                        label="Choose Color"
                        list="{'Red', 'Green'}"
                        name="bestFriend"
                        cssErrorClass="foo"/>
                <s:select
                        tooltip="Choose Your Favourite Color"
                        label="Favorite Color"
                        list="{'Red', 'Blue', 'Green'}"
                        name="favouriteColor"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>

                <s:doubleselect
                        tooltip="Choose Your State"
                        label="State"
                        name="region" list="{'North', 'South'}"
                        value="'South'"
                        doubleValue="'Florida'"
                        doubleList="top == 'North' ? {'Oregon', 'Washington'} : {'Texas', 'Florida'}"
                        doubleName="state"
                        headerKey="-1"
                        headerValue="---------- Please Select ----------"
                        emptyOption="true"/>
                        
                        <s:checkbox
                        tooltip="Confirmed that your are Over 18"
                        label="Age 12+"
                        name="legalAge"/>

                <div class="form-actions">
                    <s:submit cssClass="btn btn-primary"/>
                </div>
            </s:form>
            
            </div>
            
			</div>
			<div class="col-md-8">
              <div style="padding-top: 50px; padding-left: 120px">
				<div id="wn">
					<div id="lyr" class="content">
						<table>
							<tr>
								<td><img src="pages/resources/images/Chrysanthemum.jpg"
									width="550" height="350" alt="" /></td>
								<td><img src="pages/resources/images/Desert.jpg"
									width="550" height="350" alt="" /></td>
								<td><img src="pages/resources/images/Hydrangeas.jpg" width="550"
									height="350" alt="" /></td>
								<td><img src="pages/resources/images/Jellyfish.jpg"
									width="550" height="350" alt="" /></td>
								<td><img src="pages/resources/images/Koala.jpg"
									width="550" height="350" alt="" /></td>
								<td><img src="pages/resources/images/Lighthouse.jpg"
									width="550" height="350" alt="" /></td>
								<td><img src="pages/resources/images/Penguins.jpg"
									width="550" height="350" alt="" /></td>
								<td><img src="pages/resources/images/Tulips.jpg"
									width="550" height="350" alt="" /></td>

								<!-- repeat first item(s)-->
								<td id="rpt"><img src="pages/resources/images/Chrysanthemum.jpg"
									width="550" height="350" alt="" /></td>
								<!-- if width = 2 images, repeat at least first 2 -->
								<td><img src="pages/resources/images/Desert.jpg"
									width="550" height="350" alt="" /></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- end wn div -->
                </div>

			</div>
		</div>
		<footer>
			<hr/>
			<p style="text-align: center;">All Rights Reserved</p>
		</footer>
	</div>
</body>
</html>