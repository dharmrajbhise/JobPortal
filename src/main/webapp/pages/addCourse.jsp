<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
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
            <a class="nav-link active" aria-current="page" href="/admin">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/addJobs">Add Jobs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/addIntern">Add Internships</a>
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
<!-- Navbar ends -->

<div class="container mt-5">
        <h2>Add Course</h2>
        <form method="post" action="/admin/CourseAdded">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="company">Company:</label>
                <input type="text" class="form-control" id="company" name="company" required>
            </div>
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
			<div class="form-group">
            <label for="Mode">Mode :</label>
            <select class="form-select" name="mode" aria-label="Default select example">
			  <option selected>Select Mode of Course</option>
			  <option>Online</option>
			  <option>Offline</option>
			  <option>both Online and Offline</option>
			</select>
			</div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" rows="5" required></textarea>
            </div>
            <div class="form-group">
                <label for="availability">Availability:</label>
                <select class="form-select" name="availability" aria-label="Default select example">
			  <option selected>Select Availability</option>
			  <option>Paid</option>
			  <option>Free</option>
			</select>
            </div>
            <div class="form-group">
                <label for="applyLink">Apply Link</label>
                <input type="text" class="form-control" id="postedDate" name="applyLink" required>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Add Course</button>
        </form>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>