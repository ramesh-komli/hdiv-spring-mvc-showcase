<%@ page contentType="text/html; charset=ISO-8859-1" language="java" errorPage="" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">	
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Simple form using ActionForm</title>
	<link rel="stylesheet" type="text/css" href="../../css/example.css" />
</head>
<body>
	<c:url value="../attacks.html" var="url" />
	<a href="${url}">
		<img src="../../images/back-icon.png" alt="Return to examples page" class="back" />
	</a>
	<h1>Simple form using ActionForm</h1>
	<hr noshade="noshade"/>
	
	<p>Enter information into the field below. Your entries will be displayed when you Submit the form.</p>
	
	<form:form action="processXSS.html" commandName="message" method="post">
		<form:errors path="*" cssClass="error"/>

		<p><b>General Goal(s):</b></p>
		The user can perform reflected XSS attacks. To do this, insert the following string:
		<b>&lt;script&gt;alert('If you see this you have a potential vulnerability');&lt;/script&gt;</b>	
		<br>
		<p>Enter a message (you may use html tags):<br />
			<form:textarea path="msgText" cols="40" rows="6" ></form:textarea>		
		</p>
		<hr noshade="noshade" />   
		<p>
		<form:button>Submit</form:button>
		</p>
	</form:form>
	
	<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>
