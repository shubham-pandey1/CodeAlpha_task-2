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
<title>Code Alpha : Feedback</title>

<style type="text/css">
.cs {
	background: rgb(228,3,132);
	background: -moz-linear-gradient(47deg, rgba(228,3,132,1) 0%, rgba(218,224,135,1) 52%, rgba(107,252,96,1) 100%, rgba(88,105,255,1) 100%);
	background: -webkit-linear-gradient(47deg, rgba(228,3,132,1) 0%, rgba(218,224,135,1) 52%, rgba(107,252,96,1) 100%, rgba(88,105,255,1) 100%);
	background: linear-gradient(47deg, rgba(228,3,132,1) 0%, rgba(218,224,135,1) 52%, rgba(107,252,96,1) 100%, rgba(88,105,255,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#e40384",endColorstr="#5869ff",GradientType=1);
}

.bg {
	background: rgb(34,53,195);
	background: -moz-linear-gradient(0deg, rgba(34,53,195,1) 0%, rgba(250,14,209,1) 100%);
	background: -webkit-linear-gradient(0deg, rgba(34,53,195,1) 0%, rgba(250,14,209,1) 100%);
	background: linear-gradient(0deg, rgba(34,53,195,1) 0%, rgba(250,14,209,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#2235c3",endColorstr="#fa0ed1",GradientType=1);	
}
.co{
	background: rgb(64,76,241);
	background: -moz-radial-gradient(circle, rgba(64,76,241,1) 0%, rgba(234,237,252,1) 100%);
	background: -webkit-radial-gradient(circle, rgba(64,76,241,1) 0%, rgba(234,237,252,1) 100%);
	background: radial-gradient(circle, rgba(64,76,241,1) 0%, rgba(234,237,252,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#404cf1",endColorstr="#eaedfc",GradientType=1);
}
 .bimg{
 	background: url("image/texture.jpg");
 	background-size: cover;
 	
 }
 .textcp{
 	color: #d3a804 !important;
 	font-size: 25px !important;
 	padding: 0 !important;
 	letter-spacing: .5rem !important;
 	
 }
	
</style>
<%@include file="Allcomponent/boot.jsp"%>
</head>
<body class="cs">
<%@include file="Allcomponent/navbar.jsp" %>
<%
		String fa,cap,wcap;
	  	fa = (String)session.getAttribute("fmsg");
	  	wcap = (String)session.getAttribute("wcap");
	  	
		Format f = new SimpleDateFormat("HH.mm.ss");
		String time = f.format(new Date());
		
		cap = captcha();
	%>
	
	<%!
		char all[] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'};
		int n = all.length;
		int i;
		Random rand = new Random();
		public String captcha(){
		String cp= "";
		  for(i = 0; i<6; i++){
			cp +=all[rand.nextInt(n)];
		}
		  return cp;
	}
	%>
	<% if(fa != null){ %>
			  <div class="toast-container position-fixed bottom-0 end-0 me-2 mb-3 p-0 toast" role="alert" aria-live="assertive" aria-atomic="true">
			  <div class="toast-header pb-1 mb-0">
			     
			    
			      <c:if test="${ not empty fmsg}">
			      <strong class="me-auto text-danger "><i class="fa-solid fa-circle-xmark fa-beat me-2"></i>Cart Message</strong>
			      </c:if>
			      <small class="ms-4"><%= time%></small>
			   	 <button type="button" class="btn-close ms-2" data-bs-dismiss="toast" aria-label="Close"></button>
			      
			  </div>
			   
			    <c:if test="${ not empty fmsg}">
			    <div class="toast-body text-danger p-1 m-0 text-center">
			      ${fmsg}
			    </div>
			    <c:remove var="fadd" scope="session"/>
			    </c:if>
			</div>
			<%} %>
	<div class="container mb-5 ">
	<div class="text-center mt-2">
		<h2>Feedback Form</h2>
		<h6>Thank you for doing Internship with us. As during that</h6>
		<h6>you have got lot of experience. Share your experience</h6>
		<h6>to help other. If any suggestion then you are most </h6>
		<h6>welcome.</h6>
	</div>
		<div class="row mt-3 justify-content-center ">
			<div class="col-md-7 me-5 mb-3 p-4 bg-body-primary co justify-content-left rounded-5">
			<form action="UserServ" method="post" >
			<c:if test="${not empty wcap}">
				<h6 class="text-center text-danger"><%=wcap %></h6>
				<c:remove var="wcap" scope="session"/>
			</c:if>
				<div class="mb-3">
					<label for="formGroupExampleInput" class="form-label">Name</label> 
					<input type="text" class="form-control"
						id="formGroupExampleInput" placeholder="Name" name="name" required="required">
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Email</label>
					<input type="email" class="form-control" id="formGroupExampleInput2" placeholder="Email" name="email" required="required">
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Age</label>
					<input type="number" class="form-control" id="formGroupExampleInput2" placeholder="Age" name="age" required="required">
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Which option best Describe you?</label>
				<select class="form-select" aria-label="Default select example" name="option" required="required">
				  <option selected>---Select---</option>
				  <option value="student">Student</option>
				  <option value="teacher">Teacher</option>
				  <option value="job">Job</option>
				  <option value="other">Other</option>
				</select>
			</div>
				<div class="mb-3 mt-3">
					<label for="formGroupExampleInput" class="form-label">Would you recommend Code Alpha to your friend?</label> 
				<div class="form-check  ms-4">
				  <input class="form-check-input" type="radio" name="choice" id="exampleRadios1" value="yes">
				  <label class="form-check-label" for="exampleRadios1">
				    Yes
				  </label>
				</div>
				<div class="form-check  ms-4">
				  <input class="form-check-input" type="radio" name="choice" id="exampleRadios2" value="no">
				  <label class="form-check-label" for="exampleRadios2">
				    No
				  </label>
				</div>
				<div class="form-check  ms-4">
				  <input class="form-check-input" type="radio" name="choice" id="exampleRadios3" value="maybe" >
				  <label class="form-check-label" for="exampleRadios3">
				    May Be
				  </label>
				</div>
				
				</div>
				<div class="mb-3 mt-3">
					<label for="formGroupExampleInput" class="form-label">In which domain you have done Internship?</label> 
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="java" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckIndeterminateDisabled">
					    Java
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="js" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckDisabled">
					    JavaScript
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="react" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    React
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="python" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckIndeterminateDisabled">
					    Python
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="sprng" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckDisabled">
					    Spring
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="django" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    Django
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="c" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    C
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="c#" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckDisabled">
					    C#
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="c++" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    C++
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="angular" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    Angular
					  </label>
					</div>
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label ">Captcha Image</label>
					<input onmousedown="return false" onselectstart="return false" type="text" class="form-control text-center bimg textcp" id="formGroupExampleInput2"  name="mcap" value="<%=cap%>" readonly="readonly">
					
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Enter the text shown in the captcha</label>
					<input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter text of captcha" name="ancap" required="required">
				</div>
				<div class="mb-3 mt-3">
					<label for="formGroupExampleInput" class="form-label">Any Comment or Suggestions</label> 
					<div class=" ms-2">
					  <textarea class="form-control" placeholder="Leave a comment here..." id="Textarea" style="height: 100px" name= "comment"></textarea>
					  
					</div>
				</div>
				<div class="d-inline-flex gap-5 ms-3">
				  <button class="btn btn-success ms-5 col-md-12" type="submit" >Submit</button>
				  <button class="btn btn-warning  col-md-12" type="reset">Reset</button>
				</div>
			  </form>
			</div>
		</div>
	</div>
	<%@ include file= "Allcomponent/Footer.jsp" %>
</body>
</html>