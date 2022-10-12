<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="./css/style.css" />
</head>
<body>

<section class="wrapper">

<h2>Here's Your Omikuji!</h2>

<div>
	<p>
		<c:out value="${formInput }"/>
	</p>
</div>

<div>
	<a href="/omikuji">Go Back</a>
</div>
</section>



</body>
</html>