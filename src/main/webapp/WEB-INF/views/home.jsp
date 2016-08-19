<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Mirabelkowa Aleja</title>
	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
	
</head>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Mirabelkowa Aleja</a>
			</div>
				<ul class="nav navbar-nav navbar-center">
  					<li role="presentation" class="active"><a href="#"><spring:message code="label.home"/></a></li>
  					<li><a href="#login" data-toggle="modal"><spring:message code="label.Login"/></a></li>
  					<li><a href="#contact" data-toggle="modal"><spring:message code="label.contact"/></a></li>
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					<li><a href="?lang=en" data-toggle="modal">EN</a></li>
  					<li><a href="?lang=pl" data-toggle="modal">PL</a></li>

				</ul>
		</div>
	</div>
	
	<div class="container">
		<div class="jumbotron ">
			<div class="col-md-8 col-md-offset-0">
				<p><spring:message code="label.welcome1"/></p>
				<p><spring:message code="label.welcome2"/></p>
			</div>
		</div>
	</div>
	
		<div class="modal fade" id="contact" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
				<form class="form-horizontal" role="form">
						<div class="modal-header">
							<h4><spring:message code="label.contact"/></h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="contact-name" class="col-sm-2" control-label"><spring:message code="label.name"/></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contact-name" placeholder="First & Last Name">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-email" class="col-sm-2" control-label"><spring:message code="label.email"/></label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="contact-name" placeholder="example@domain.com">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-message" class="col-sm-2" control-label"><spring:message code="label.message"/></label>
								<div class="col-sm-10">
									<textarea class="form-control" rows="4"></textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary"><spring:message code="label.send"/></button>
							<a class="btn btn-default" data-dismiss="modal"><spring:message code="label.close"/></a>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="login" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
				<form class="form-horizontal" role="form">
						<div class="modal-header">
							<h4><spring:message code="label.Login"/></h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="contact-name" class="col-sm-2" control-label"><spring:message code="label.login"/></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contact-name" placeholder="Login">
								</div>
							</div>
							<div class="form-group">
								<label for="contact-email" class="col-sm-2" control-label"><spring:message code="label.password"/></label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="contact-name" placeholder="Password">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary"><spring:message code="label.Login"/></button>
							<a class="btn btn-default" data-dismiss="modal"><spring:message code="label.close"/></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	
		<script src="webjars/jquery/1.11.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</body>
</html>
