<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
<sb:head includeScripts="false" includeScriptsValidation="false" />
<sj:head/>
<style type="text/css">
body {
	padding-top: 60px;
	/* 60px to make the container go all the way to the bottom of the topbar */
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Struts2 Bootstrap Plugin
				Showcase - <s:text name="showcase.version" />
			</a>
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
				<li><a
					href="https://github.com/struts-community-plugins/struts2-bootstrap/">Project</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Form Layouts</li>
						<%--  <s:url var="index_url" action="index"/> --%>
						<li class="active"><s:a href="#">Horizontal Form Layout</s:a></li>
						<li><s:a href="#">Vertical Form Layout</s:a></li>
						<li><s:a href="#">Client Validation</s:a></li>
						<li><s:a href="#">Advanced Examples</s:a></li>
						<li><s:a href="#">Struts2 jQuery UI Form Elements</s:a></li>
						<li><s:a href="#">With Custom Theme</s:a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9">
				<div class="jumbotron">
					<h3>This is jumbotron.</h3>
					<p>This is Arvind Kumar Sharma.</p>
				</div>
				<h1>Form Data</h1>
				<p>login for getting access</p>

				<s:form theme="simple" cssClass="well form-search" action="welcome">
					<s:textfield placeholder="Login" name="user.uname"
						tooltip="Enter your Name here" />

					<s:password placeholder="Password" name="user.pword" />

					<s:submit cssClass="btn btn-primary" />
				</s:form>
				<s:form action="echo" theme="bootstrap"
					cssClass="well form-vertical" label="AJAX Echo Form" method="ajaxResult">
					<s:textfield label="Enter your Name" name="user.echo"
						tooltip="Enter your Name here" />

					<sj:submit targets="result" effect="highlight"
						cssClass="btn-success" />
				</s:form>
				<div id="result"></div>

			</div>
		</div>
	</div>
</body>
</html>