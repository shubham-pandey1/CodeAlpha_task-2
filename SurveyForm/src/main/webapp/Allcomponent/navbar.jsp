<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

nav{
	background: rgb(3,15,228);
	background: -moz-linear-gradient(0deg, rgba(3,15,228,1) 0%, rgba(46,67,252,1) 100%);
	background: -webkit-linear-gradient(0deg, rgba(3,15,228,1) 0%, rgba(46,67,252,1) 100%);
	background: linear-gradient(0deg, rgba(3,15,228,1) 0%, rgba(46,67,252,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#030fe4",endColorstr="#2e43fc",GradientType=1);
}
 
	a:hover{
		transform: scale(1.1);
		
	}

</style>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand text-light" href="home1.jsp"><i class="fa-solid fa-volleyball me-2"></i>Code Alpha</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-light" aria-current="page" href="home1.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="index.jsp">Before Intern</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-light"  href="experience.jsp">After Intern</a>
        </li>
      </ul>
    </div>
  </div>
</nav>