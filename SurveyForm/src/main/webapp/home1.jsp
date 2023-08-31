<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code Alpha : Survey</title>

<style type="text/css">

.cs {
	background: rgb(228,3,204);
	background: -moz-linear-gradient(357deg, rgba(228,3,204,1) 0%, rgba(96,99,252,1) 100%, rgba(88,105,255,1) 100%);
	background: -webkit-linear-gradient(357deg, rgba(228,3,204,1) 0%, rgba(96,99,252,1) 100%, rgba(88,105,255,1) 100%);
	background: linear-gradient(357deg, rgba(228,3,204,1) 0%, rgba(96,99,252,1) 100%, rgba(88,105,255,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#e403cc",endColorstr="#5869ff",GradientType=1);
}
.back-img{
		background: url("image/survey.webp");
		height: 60vh;
		min-height: 400px;
		width: 100%;
		Background-repeat: no-repeat;
		background-size: cover;
		
	}
  .code{
  	
  	font-family: cursive;
     background: -webkit-linear-gradient(rgb(188, 12, 241), rgb(212, 4, 4));
     -webkit-background-clip: text;
     -webkit-text-fill-color: transparent;
  }
  .sec{
  	margin-top: 30%;
  	font-size: 72px;
  }
  .fo{
  	font-size: 50px;
  }

</style>
<%@include file="Allcomponent/boot.jsp"%>
</head>
<body class="cs">
<%@include file="Allcomponent/navbar.jsp" %>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous">
</script>

	<%
		String su = (String)session.getAttribute("smsg");
	  	
	  	
		Format f = new SimpleDateFormat("HH.mm.ss");
		String time = f.format(new Date());
	%>
	<% if(su !=null){ %>
			  <div class="toast-container position-fixed bottom-0 end-0 me-2 mb-3 p-0 toast" role="alert" aria-live="assertive" aria-atomic="true">
			  <div class="toast-header pb-1 mb-0">
			     <c:if test="${not empty smsg}">
			      <strong class=" text-success"><i class="fa-solid fa-circle-check me-2 fa-beat"></i>Feed Message</strong>
			      </c:if>
			    
			      
			      <small class="ms-4"><%= time%></small>
			   	 <button type="button" class="btn-close ms-4" data-bs-dismiss="toast" aria-label="Close"></button>
			      
			  </div>
			   <c:if test="${not empty smsg}">
			    <div class="toast-body text-success  m-0 p-auto text-center ">
			      ${smsg}
			    </div> 
			    <c:remove var="smsg" scope="session"/>
			    </c:if>
			    
			</div>
			<%} %>
	<div class= "container-fluid back-img">
	<div class="row ">
	<div class="col-md-4 text-center code">
		<h1 class="sec">Code Alpha </h1>
		<h1 class="fo">Survey</h1>
		</div>
	</div>
	</div>
	
	<div class="container mb-5">
	<div class="text-center text-light mt-2">
		<h2 class="mt-4 mb-4">Different Survey are....</h2>
		
	</div>
		<div class="row mt-3 justify-content-center">
			<div class="col-md-5 me-5 mb-3 p-1  bg-body-secondary text-center rounded-5">
				<h3 class="mt-2">Interested Candidate</h3>
				<h1><i class="fa-solid fa-graduation-cap fa-3x"></i></h1>
				<h6>Are those who are interested to do internship</h6>
				<h6>at Code Alpha</h6>
				<h1><i class="fa-solid fa-file-signature fa-2x p-2"></i></h1>
				<h6>Fill the interest survey form</h6>
				<a href="index.jsp" class="btn btn-primary mb-4 mt-2 pe-5 ps-5 rounded-5">Click Here</a>
			</div>
			
			<div class="col-md-5 mb-3 p-1 bg-body-secondary text-center rounded-5">
				<h3 class="mt-2">Experienced Candidate</h3>
				<h1><i class="fa-solid fa-people-group fa-3x"></i></h1>
				<h6>Are those who have already done internship</h6>
				<h6>at Code Alpha</h6>
				<h1><i class="fa-solid fa-laptop-code fa-2x p-2"></i></i></h1>
				<h6>Share your valuable experience</h6>
				<a href="experience.jsp" class="btn btn-success mb-4 rounded-5 mt-2 pe-5 ps-5">Click Here</a>
			</div>
		</div>
	</div>
	<script  src="Allcomponent/main.js"></script>
	<%@ include file= "Allcomponent/Footer.jsp" %>
</body>
</html>