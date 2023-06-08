<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply</title>
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
  
  .card{
  margin-top: 50px
  }
</style>
</head>
<body onload="showAlert()">
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
  
  <!-- Card -->
<div class="container">  
<div class="card text-center">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
  <form action="/user/apply/${id}" method="post">
    <div class="mb-3">
  	<label for="exampleFormControlInput1" class="form-label">Job Id</label>
  	<input type="number" class="form-control" name="Jobs" value="${id}">
	</div>
	<div class="mb-3">
  	<label for="exampleFormControlInput1" class="form-label">username</label>
  	<input type="text" class="form-control" name="username" value="${username}">
	</div>
	<button type="submit" class="btn btn-primary">Save</button>
	</form>
  </div>
  <div class="card-footer text-body-secondary">
    <a href="${apply}" class="btn btn-primary">Apply</a>
  </div>
</div>
</div>
<script>
function showAlert() {
    var alertMessage = "${alertMessage}";
    if (alertMessage) {
        alert(alertMessage);
    }
}
</script>  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>