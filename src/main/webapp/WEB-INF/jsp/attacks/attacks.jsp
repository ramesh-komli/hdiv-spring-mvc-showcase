<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Vulnerable Section</title>
		<link rel="stylesheet" type="text/css" href="../css/example.css" />
	</head>
	<body>
		<c:url value="/welcome.html" var="url" />
		<a href="${url}">			
			<img src="../images/back-icon.png"  alt="Return to examples page" class="back" />
		</a>
	
		<h1>Vulnerable Section</h1>
		<hr noshade="noshade"/>

		<!--  Injection Flaws examples -->		
		<%@include file="SQLInjection/SQLInjection.html" %>		
		<br />
		<spring:url value="SQLInjection/prepareSQLInjection.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			How to perform String SQL Injection
		</a>
		<br />

		<!--  Parameter Tampering examples -->
		<%@include file="parameterTampering/ParameterTampering.html" %>
		<br />
		<spring:url value="parameterTampering/prepareSelectFieldTampering.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			How to Exploit Select Form fields
		</a>
		<br />
		<spring:url value="parameterTampering/prepareHiddenFieldTampering.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			How to Exploit Hidden Form fields
		</a>
		<br />
		<spring:url value="parameterTampering/prepareLinkTampering.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			How to Exploit Link Parameters
		</a>
		<br />

		<!--  Cross Site Scripting (XSS) -->
		<%@include file="xss/XSS.html" %>
		<br />
		<spring:url value="xss/prepareXSS.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			How to Perform Cross Site Scripting (XSS)
		</a><br />
		
		<!--  Auto-Binding -->
		<%@include file="autoBinding/AutoBindingExplain.html" %>
		<spring:url value="autoBinding/prepareAutoBinding.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			How to Perform an Auto Binding Injection
		</a>
		<br />
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>