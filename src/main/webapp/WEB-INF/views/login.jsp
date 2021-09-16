<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Fjalla+One&family=Lobster&family=Original+Surfer&family=Playfair+Display&display=swap" rel="stylesheet">
	<title>Login</title>
	<link rel="shortcut icon" href="/img/favicon.ico" />
	<base href="${pageContext.servletContext.contextPath}/"/>
</head>
<body>
	<div class="container-fluid">
		<main style="height:657px">
			<div class="row justify-content-center mt-5">
				<div class="col-sm-3">
					<form action="abc.com/login" method="post">
						<div class="card mt-3">
							<div class="card-header bg-light text-center" >
								<h4 >LOGIN</h4>
							</div>
							
							<div class="card-body">
								<div class="row justify-content-center">
									<div class="col-sm-7 ml-5">
										<img src="/img/logobig.png"  width="75%"/>
									</div>
								</div>
								<div class="row justify-content-center mt-4 mb-1">
									<div class="col">								
										<c:if test="${not empty message }">
											<h6><div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> ${message }</div></h6>
										</c:if>
									</div>
								</div>
								
								<div class="form-group">
									<label class="mt-2" for="">Username</label>
									<input class="form-control" type="text" name="username" value="${username }" required" />
									<c:if test="${not empty userMess }">
										<div class="mt-1 ml-1" style="font-size:15px;color:red"><i>${userMess }</i></div>
									</c:if>
									
								</div>
								
								<div class="form-group">
									<label class="mt-2" for="">Password</label>
									<input class="form-control" type="password" name="password" value="${password }" required" />
									<c:if test="${not empty passMess }">
										<div class="mt-1 ml-1" style="font-size:15px;color:red"><i>${passMess }</i></div>
									</c:if>
								</div>
								
								<div class="form-group form-check mt-4">
									<input type="checkbox" class="form-check-input" id="remember" name="remember" value=true>
									<label for="remember">Remember Me</label>
								</div>
								
								<div class="form-group">
									<button class="btn btn-success col mt-2">LogIn</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</main>
		
		<footer>
			<div class="alert alert-secondary row mb-0">
				<div class="col text-center">
					<strong>Copyright &copy; 2021 <a href="https://adminlte.io">DXC Technology</a>.</strong> All rights reserved.
				</div>
			</div>
		</footer>
	</div>
</body>
</html>