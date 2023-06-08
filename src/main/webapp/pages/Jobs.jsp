<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jobs</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Spline+Sans+Mono">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <style>
 body{
 font-family: 'Font Name', Spline Sans Mono;
 background: linear-gradient(to right, #ff6e7f, #bfe9ff);
  animation: gradientAnimation 10s ease infinite;
 }
 @keyframes gradientAnimation {
  0% {
    background-position: 0% 50%;
  }

  50% {
    background-position: 100% 50%;
  }

  100% {
    background-position: 0% 50%;
  }
}
.navbar-nav .nav-link:hover {
      background-color: #F8F9FA; /* Hover background color */
      color: #212529; /* Hover text color */
    }

    .navbar-nav .nav-link.active {
      background-color: #343A40; /* Active background color */
    }
    #filter{
    margin-top: 50px;
    }
    #welcome{
    margin-top: 30px;
    }
    .card{
    margin-top: 20px;
    border-radius: 20PX;
    box-shadow: 0 2px 8px 4px rgba(0, 0, 0, 0.8);
    }
    .card:hover{
    border: solid lightblue 7px;
    }
    
    a{
    text-decoration: none;
    color: inherit;
    }
    
     @keyframes fadeIn {
    from {
      	opacity: 0;
    	}
    to {
      opacity: 1;
    }
  }

  .fadeIn {
    animation: fadeIn 2s;
  }
</style>
</head>
<body>

<!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="#">JobPortal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/user">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/user/jobs">Jobs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/user/intern">Internships</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/user/courses">Courses</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/user/jobs/Applied">Applied Jobs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Navbar -->
  
  <!-- Search bar -->
  
  <div id="filter" class="container">
  <form action="/user/jobs/filter" method="post">
  <div class="form-group">
            <label for="type">Job Type :</label>
            <select class="form-select" name="type" aria-label="Default select example">
			  <option selected>Software Engineering</option>
			  <option>Java Development</option>
			  <option>Dot Net Development</option>
			  <option>Android Development</option>
			  <option>Front End Development</option>
			  <option>Back End Development</option>
			  <option>Full Stack Development</option>
			  <option>UI/UX Design</option>
			  <option>Web Development</option>
			</select>
  
  </div>
  <br>
  <button class="btn btn-primary" type="submit">Go</button>
  </form>
  </div>
  <!-- Form Completed -->
  <!-- Card -->
 <div id="welcome" class="container">
 
<c:forEach var="e" items="${Jobs }">
<a href="/user/apply/${e.id}" target="_blank">
 <div class="card animated fadeIn">
  <h5 class="card-header">${e.title}</h5>
  <div class="card-body">
  <h6 class="card-title">${e.company}</h6>
    <h6 class="card-title">${e.location}</h6>
    <p class="card-text">Job Description : ${e.description }</p>
    <p class="card-text">Key Requirements : ${e.requirements }</p>
    <p class="card-text">Posted Date : ${e.postedDate }</p>
    <p class="card-text">Salary : ${e.salary }</p>
    <a href="/user/apply/${e.id}" target="_blank" class="btn btn-primary">Apply</a>
  </div>
</div>
</a>
</c:forEach> 
 </div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>