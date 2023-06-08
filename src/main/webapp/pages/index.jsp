<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CMS Project</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Spline+Sans+Mono">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <style>
  body {
  font-family: 'Font Name', Spline Sans Mono;
  background-image: url("${pageContext.request.contextPath}/images/back.jpg");
  background-size: cover;
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
    animation: fadeIn 7s;
  }

.landing-page {
  margin-top: 200px;
  text-align: center;
  color: #fff;
}

.landing-page h1 {
  font-size: 48px;
}

.landing-page p {
  font-size: 24px;
  margin-bottom: 30px;
}

.landing-page .btn-primary {
  background-color: #fff;
  color: #ff6e7f;
  border: none;
  padding: 10px 20px;
  font-size: 20px;
  transition: background-color 0.3s ease;
}

.landing-page .btn-primary:hover {
  background-color: #ff6e7f;
  color: #fff;
}
 .nav-link:hover{
 color: #fff;
 } 
  </style>
</head>

<body onload="showAlert()">

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
            <a class="nav-link" href="#About" rel="nofollow"
              target="_blank">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services" target="_blank">Services</a>
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
      <div class="col-lg-9 offset-lg-3">
        <div class="landing-page animated fadeIn">
          <h1>Unlocking Opportunities, Transforming Lives.</h1>
          <p>Connecting Dreams, Empowering Careers: Your Gateway to Success</p>
          <a href="/user" class="btn btn-primary">Get Started</a>
        </div>
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
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>

</html>