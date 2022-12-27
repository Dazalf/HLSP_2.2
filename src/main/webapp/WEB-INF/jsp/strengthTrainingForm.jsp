<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add strength training</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body>
    
	<jsp:include page="navigation.jsp"/>

    <div class ="container pt-3">
    
	    <h3> Add strength training exercise </h3>
    	
    	<form action="/exercises/add/strength_exercise" method="POST">
    	
    		<div class="form-group">
    			<label for="exerciseName">Exercise name</label>
   				<input type="text" class="form-control" name="exerciseName" id="exerciseName" placeholder="Input exercise name" required>
	 		</div>
	 		
	 		<div class="form-group pt-3">
	    		<label>Where did you exercise?</label>
	    		<div class="form-check">
				  <input class="form-check-input" type="radio" value="Home" name="location" id="locationRadioHome" checked="checked">
				  <label class="form-check-label" for="locationRadioHome">
				    Home
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" value="Gym" name="location" id="locationRadioGym">
				  <label class="form-check-label" for="locationRadioGym">
				    Gym
				  </label>
				</div>
					<div class="form-check">
				  <input class="form-check-input" type="radio" value="Park" name="location" id="locationRadioPark">
				  <label class="form-check-label" for="locationRadioPark">
				    Park
				  </label>
				</div>
	  		</div>
	  		
	  		<div class="form-group pt-3">
	    		<label>What muscle group was involved?</label>
	    		<div class="form-check">
				  <input class="form-check-input" type="radio" value="Chest" name="muscleGroup" id="muscleGroupRadioChest" checked="checked">
				  <label class="form-check-label" for="muscleGroupRadioChest">
				    Chest
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" value="Back" name="muscleGroup" id="muscleGroupRadioBack">
				  <label class="form-check-label" for="muscleGroupRadioBack">
				    Back
				  </label>
				</div>
					<div class="form-check">
				  <input class="form-check-input" type="radio" value="Arms" name="muscleGroup" id="muscleGroupRadioArms">
				  <label class="form-check-label" for="muscleGroupRadioArms">
				    Arms
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" value="Abdominals" name="muscleGroup" id="muscleGroupRadioAbdominals">
				  <label class="form-check-label" for="checkboxAbdominals">
				    Abdominals
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" value="Legs" name="muscleGroup" id="muscleGroupRadioLegs">
				  <label class="form-check-label" for="muscleGroupRadioLegs">
				    Legs
				  </label>
				</div>
					<div class="form-check">
				  <input class="form-check-input" type="radio" value="Shoulders" name="muscleGroup" id="muscleGroupRadioShoulders">
				  <label class="form-check-label" for="muscleGroupRadioShoulders">
				    Shoulders
				  </label>
				</div>
	  		</div>
	 		
	  		<div class="form-group pt-3">
	    		<label for="sets">Amount of sets</label>
	    		<input type="number" class="form-control" name="sets" id="sets" min="0" required>
	  		</div>
	  		
	  		<div class="form-group pt-3">
	    		<label for="reps">Amount of reps</label>
	    		<input type="number" class="form-control" name="reps" id="reps" min="0" required>
	  		</div>
	  		
	  		<div class="form-group pt-3">
	    		<label for="date">Choose exercise date</label>
	    		<input type="date" class="form-control" name="dateOfExercise" id="date" value="${requestScope.todaysDate}" onfocus="this.max=new Date().toISOString().split('T')[0]" required>
	  		</div>
  			
  			<div class="form-check form-switch pt-3">
			  <input class="form-check-input" type="checkbox" name="favourite" id="flexSwitchCheckDefault">
			  <label class="form-check-label" for="flexSwitchCheckDefault">Favourite?</label>
			</div>
	  		
	  		<div class="pt-3">
	  			<button type="submit" value="Submit" class="btn btn-primary">Submit</button>
	  		</div>
    	</form>
    	
    	<div class="table-responsive-sm pt-3">
			<table class="table table-hover table-striped caption-top">
			<caption>Recently added exercises</caption>
			  <thead class="table-light"> 
			    <tr>
			      <th scope="col">Exercise name</th>
			      <th scope="col">Location</th>
			      <th scope="col">Muscle group</th>
			      <th scope="col">Sets</th>
			      <th scope="col">Reps</th>
			      <th scope="col">Date of exercise</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>Example exercise 1</td>
			      <td>Example location 1</td>
			      <td>Example muscle group 1</td>
			      <td>Example sets 1</td>
			      <td>Example reps 1</td>
			      <td>Example date 1</td>
			    </tr>
			  </tbody>
			</table>
		</div>
		
		<div class="table-responsive-sm pt-3">
			<table class="table table-hover table-striped caption-top">
			<caption>Favourite exercises</caption>
			  <thead class="table-light">
			   <tr>
			      <th scope="col">Exercise name</th>
			      <th scope="col">Location</th>
			      <th scope="col">Muscle group</th>
			      <th scope="col">Sets</th>
			      <th scope="col">Reps</th>
			      <th scope="col">Date of exercise</th>
			   </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>Example exercise 1</td>
			      <td>Example location 1</td>
			      <td>Example muscle group 1</td>
			      <td>Example sets 1</td>
			      <td>Example reps 1</td>
			      <td>Example date 1</td>
			    </tr>
			  </tbody>
			</table>
		</div>
    	
    </div>
    
    <jsp:include page="footer.jsp"/>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    
  </body>
</html>