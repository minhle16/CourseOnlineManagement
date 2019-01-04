<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title><tiles:getAsString name="title" /></title>
<meta charset="utf-8">

	<link href="${pageContext.request.contextPath}/css/bootstrap1.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/font-awesome1.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>
	
	<div class="sidebar">
			<tiles:insertAttribute name="sidebar" />
	</div>
		
	<div class="flex">
		<div class="sidebar2"></div>
		<div class="content">
			<tiles:insertAttribute name="content" />
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/admin.js"></script>
</body>
</html>
