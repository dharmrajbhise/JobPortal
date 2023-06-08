<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Spline+Sans+Mono">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <style>
  body {
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

.register-page {
  margin-top: 200px;
  text-align: center;
  color: #fff;
}

.register-page h1 {
  font-size: 48px;
}

.register-page form {
  margin-top: 30px;
}

.register-page .form-label {
  color: #fff;
}

.register-page .btn-primary {
  background-color: #fff;
  color: #ff6e7f;
  border: none;
  padding: 10px 20px;
  font-size: 20px;
  transition: background-color 0.3s ease;
}

.register-page .btn-primary:hover {
  background-color: #ff6e7f;
  color: #fff;
}
.nav-link:hover{
 color: #fff;
 } 
  </style>
</head>

<body>

<!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block" style="z-index: 2000;">
    <div class="container-fluid">
      <!-- Navbar brand -->
      <a class="navbar-brand nav-link" target="_blank" href="https://mdbootstrap.com/docs/standard/">
        <strong>JobPedia</strong>
      </a>
      <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01"
        aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/user" rel="nofollow"
              target="_blank">login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin" target="_blank">Admin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#faq" target="_blank">FAQ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact" target="_blank">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Navbar -->

  <div class="container">
    <div class="row">
      <div class="col-lg-4 offset-lg-4">
        <div class="register-page">
          <h1>Register</h1>
          <form action="/" method="post">
            <div class="mb-3">	
              <label for="name" class="form-label">username</label>
              <input type="text" class="form-control" name="username" id="name" required>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" required>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" class="form-control" name="password" id="password" required>
            </div>
            <select name="role.name">
            <option value="ADMIN">ADMIN</option>
            <option value="USER">USER</option>
            </select>
            <button type="submit" class="btn btn-primary">Register</button>
          </form>
        </div>
        
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>