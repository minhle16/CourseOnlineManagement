<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title><tiles:getAsString name="title" /></title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/elegant-fonts.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css"></link>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body class="<tiles:getAsString name="content" />">
	<div class="page-header">
		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="banner"/>
	</div>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>
</body>
</html>
