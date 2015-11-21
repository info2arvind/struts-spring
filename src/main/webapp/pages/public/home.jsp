<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <%@taglib uri="/struts-bootstrap-tags" prefix="sb" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head includeScripts="false" includeScriptsValidation="false"/>
</head>
<body>
this is home page<br/>
Name : ${sessionScope.uname}
Date : ${sessionScope.context}
<s:form action="logout">
    <s:submit></s:submit>
</s:form>
</body>
</html>