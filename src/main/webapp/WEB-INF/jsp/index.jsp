<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="h-100">
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Homepage</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 	</head>
  	
  	<body class="d-flex flex-column h-100">
  
   	 <jsp:include page="navigation.jsp"/>
     
     <main role="main" class="flex-shrink-0">
	     <div class ="container">
			<div class="text-center" id="welcometext">
				<div>
					<div class="col">
						<h1> Take your exercise routine to the next level </h1>
					</div>
				</div>
				
				<div class="row pt-5">
					<div class="col">
						<h2> Who are we? </h2>
						<p> HLSP is a service that provides personalized exercise recommendations all based of the information you provide us.</p>
						<p> With us, you can easily track your exercises each day, let us know your exercising preferences e.g., 
							whether you go to your gym or the park and set your goals! </p> 
						<p> We pride ourselves on our quick and easy to use design to enable the best use of time in your busy lifestyle </p>
					</div>
				</div>
				
				<c:if test="${sessionScope.loggedIn ne true}">
					<div class="pt-3">
				  		<h4> What are you waiting for? Start now! </h4>
				  		<div class="pt-3">
				  			<a class="btn btn-primary" href="/signupform"> Sign up </a>  
				  		</div>
			  		</div>
			  	</c:if>
				
			</div>
		</div>
	</main>
	
	<jsp:include page="footer.jsp"/>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    
  </body>
</html>