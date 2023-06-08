<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
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
    
  #welcome{
  margin-top: 50px;
  }
  
 #section{
      padding: 100px 0px;
    }
    
    .service {
      margin-top: 50px;
      background-color: #ffffff;
      padding: 30px;
      margin-bottom: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
      transition: transform 0.3s ease-in-out;
    }
    
    .service-icon {
      font-size: 48px;
      color: #17a2b8;
      margin-bottom: 20px;
      transition: transform 0.8s ease-in-out;
    }
    
    .service-title {
      font-size: 24px;
      margin-bottom: 10px;
    }

    .service-description {
      font-size: 16px;
      margin-bottom: 20px;
    }

    .service:hover {
      transform: scale(1.05);
    }

    .service:hover .service-icon {
      transform: rotate(10deg);
    }
    .profile-image {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
        } 
    .profile-card {
            max-width: 400px;
            margin: auto;
            background-color: #f8f9fa;
            border-radius: 5px;
            padding: 20px;
            text-align: center;
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
            <a class="nav-link active" aria-current="page" href="#">Home</a>
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
            <a class="nav-link" data-bs-toggle="modal" data-bs-target="#exampleModal">Profile</a>
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
  <!--  -->
  
  <div id="section" class="container">
    <div class="row">
      <center><h2>Key Highlights</h2></center>
      <br><br>
      <div class="col-md-4">
        <div class="service" onmouseover="rotateIcon(this)" onmouseout="resetIcon(this)">
          <h1 class="service-icon">${FindMaxId}</h1>
          <h2 class="service-title">Jobs</h2>
          <p class="service-description">Learn at your own pace with our online courses.</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="service" onmouseover="rotateIcon(this)" onmouseout="resetIcon(this)">
          <h1 class="service-icon">${FindMaxId2}</h1>
          <h2 class="service-title">Internships</h2>
          <p class="service-description">Experience interactive learning through digital platforms.</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="service" onmouseover="rotateIcon(this)" onmouseout="resetIcon(this)">
          <h1 class="service-icon">${FindMaxId3}</h1>
          <h2 class="service-title">Courses</h2>
          <p class="service-description">Learn from industry experts with real-world experience.</p>
        </div>
      </div>
    </div>
  </div>
  
  <!-- end -->
  
  <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Profile</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="profile-card">
        <img src="${pageContext.request.contextPath}/images/profile.png" alt="Profile Picture" class="profile-image">
        <h3>${username}</h3>
        <p>Email: ${email}</p>
        <hr>
        <h5>Applied Jobs</h5>
        <h6>${max}</h6>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>