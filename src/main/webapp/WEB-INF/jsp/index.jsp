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
	     
	     <section class="bg-dark text-light text-center p-4">
	     	<div class="container">
	     		<div class="row">
	     			<div class="col-12">
	     				<h1> <span class="text-success"> Level up </span>  your exercise routine</h1>
	     			</div>
	     			<div class="col pt-3">
						<p> 
							HLSP is a service that provides personalized exercise recommendations all based of the information you provide us.
							With us, you can easily track your exercises each day, let us know your exercising preferences e.g., 
							whether you go to your gym or the park and set your goals! 
							We pride ourselves on our quick and easy to use design to enable the best use of time in your busy lifestyle 
						</p>
						<c:if test="${sessionScope.loggedIn ne true}">
							<div class="row">
								<div class="col">
							  		<div class="pt-3">
							  			<a class="btn btn-success btn-lg" href="/signupform"> Sign up now </a>  
							  		</div>
						  		</div>
						  	</div>
					  	</c:if>						
	     			</div>
	     		</div>
	     	</div>
	     </section>
	     
	     <section class="p-5 text-center">
	     	<div class="container">
		     	<div class="row">
		     		<div class="col">
						<div class="card text-white bg-success mb-3" style="max-width: 25rem;">
						  <div class="card-header bg-dark">Exercise routine</div>
						  <div class="card-body">
						  	<h5 class="card-title">Exercises</h5>
						    <p class="card-text">Provide rich detail about your exercises in your exercise routine through our interface. The more we know,
						    the more personalised the recommendations. You can easily view all of your exercises.  </p>
						  </div>
						</div>	     			
		     		</div>
		     		<div class="col">
						<div class="card text-white bg-success mb-3" style="max-width: 25rem;">
						  <div class="card-header bg-dark">Exercise routine</div>
						  <div class="card-body">
						  	<h5 class="card-title">Goals</h5>
						    <p class="card-text">We provide you an easy way to for you to set and track your goals. Not too sure about what goals to choose?
						    We're here to help with our own quiz that provides recommended goals.</p>
						  </div>
						</div>	         		
		     		</div>
		     		<div class="col">
						<div class="card text-white bg-success mb-3" style="max-width: 25rem;">
						  <div class="card-header bg-dark">Exercise routine</div>
						  <div class="card-body">
						  	<h5 class="card-title">Disabilites</h5>
						    <p class="card-text">Have any disabilities? We provide you with the option to specify these when setting up your account. This
						    ensures this is taken into consideration when providing recommendations. </p>
						  </div>
						</div>		     		
		     		</div>
		     	</div>
		     	
		     	<div class="row">
		     		<div class="col">
						<div class="card text-white bg-success mb-3 text-center" style="max-width: 25rem;">
						  <div class="card-header bg-dark">Analytics</div>
						  <div class="card-body">
						  	<h5 class="card-title">Recommendations</h5>
						    <p class="card-text"> The more we know, the more you benefit! Our algorithms will aggregate, review and analyse the information
						    you give us, and provide high-quality recommendations from trusted new sources that we can gurantee will <span class="fw-bold"> level up </span> 
						    your exercise routine.</p>
						  </div>
						</div>	     			
		     		</div>
		     		<div class="col">
						<div class="card text-white bg-success mb-3 text-center" style="max-width: 25rem;">
						  <div class="card-header bg-dark">Analytics</div>
						  <div class="card-body">
						  	<h5 class="card-title">Reports</h5>
						    <p class="card-text">With the collated data you've provided, we transform it into easy-to-read visualizations to enable to draw your 
						    own insights into your data!</p>
						  </div>
						</div>	         		
		     		</div>
		     		   <div class="col">
						<div class="card text-white bg-success mb-3 text-center" style="max-width: 25rem;">
						  <div class="card-header bg-dark">Usability</div>
						  <div class="card-body">
						  	<h5 class="card-title">Website design</h5>
						    <p class="card-text">We've endeavoured to make our website as simple and easy to use as possible, ensuring that your
						    experience using our service is as seamless and enjoyable as possbile. </p>
						  </div>
						</div>		     		
		     		</div>
		     	</div>
	     	</div>
	     </section>
	    
				

			
	</main>
	
	<jsp:include page="footer.jsp"/>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    
  </body>
</html>