<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Fresher Program</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/admin/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/admin/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Fjalla+One&family=Lobster&family=Original+Surfer&family=Playfair+Display&display=swap" rel="stylesheet">
  <base href="${pageContext.servletContext.contextPath}/"/>
  <link rel="shortcut icon" href="/img/favicon.ico" />
    <style>
  	*[id$=errors]{
		color:brown;
		font-style: italic;
	}
  </style>
  
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
	<tiles:insertAttribute name="menu"/>	
	<main>
		<table style="width:100%" border="1">
			<tr>
				<td valign="top"><tiles:insertAttribute name="body"/></td>
			</tr>
		</table>
	</main>
	<tiles:insertAttribute name="footer"/>
	
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/admin/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/admin/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/admin/dist/js/adminlte.min.js"></script>
</body>
</html>
