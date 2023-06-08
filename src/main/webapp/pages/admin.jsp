<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Spline+Sans+Mono">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <style>
 body{
 font-family: 'Font Name', Spline Sans Mono;
 }
.navbar-nav .nav-link:hover {
      background-color: #F8F9FA; /* Hover background color */
      color: #212529; /* Hover text color */
    }

    .navbar-nav .nav-link.active {
      background-color: #343A40; /* Active background color */
    }
  #welcome{
  margin-top: 50px;
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
            <a class="nav-link active" aria-current="page" href="/admin">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/addJobs">Add Jobs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/addIntern">Add Internship</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/addCourse">Add Courses</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Navbar -->

  <!-- Page content -->
  <div id="welcome" class="container">
    <h2>Welcome ${username} </h2>
    <p>Discover Your Dream Job!</p>
  </div>
  
  <!-- Table -->
  <div class="container">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Username</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="e" items="${users }">
    <tr>
      <th scope="row">${e.user_id}</th>
      <td>${e.username }</td>
      <td>${e.email }</td>
      <td>${e.role.name }</td>
      <td>
      <a href="/edit/${e.user_id }" class= "btn btn-primary">Edit</a>
      <a href="/delete/${e.user_id }" class= "btn btn-success">Delete</a>
      </td>
    </tr>
</c:forEach>
  </tbody>
</table>
</div>
<script>
function showAlert() {
    var alertMessage = "${alertMessage}";
    if (alertMessage) {
        alert(alertMessage);
    }
}
</script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>