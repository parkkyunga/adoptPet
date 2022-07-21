<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>데려가줘</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/styles.css" rel="stylesheet" />


<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

#id01 {
   width: 50%;
   height:500px
   position: fixed;
   top: 50%;
   left: 50%;
   -webkit-transform: translate(-50%, -50%);
   -moz-transform: translate(-50%, -50%);
   -ms-transform: translate(-50%, -50%);
   -o-transform: translate(-50%, -50%);
   transform: translate(-50%, -50%);
}

</style>



</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="main.do">데려가줘 PICK ME</a>

			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">

				<% if(session.getAttribute("id") == null){ // 로그인 안 한 상태 = 비회원 %>
				
					<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">ADOPTPAGE</a></li>
					<li class="nav-item"><a class="nav-link" href="#">VOLUNTEER</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">COMMUNITY</a></li>
					<li class="nav-item"><a class="nav-link" href="qnaBoardList.do">Q&A</a></li>
					<li class="nav-item" ><a class="nav-link" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">로그인</a></li>
<div id = "id01" class="modal">
	<form class="modal-content animate" action="memberLogin.do" method="post">
    <div class="container">
      <label for="uId"><b>UserId</b></label>
      <input type="text" placeholder="Enter UserId" name="uId" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
					
					<li class="nav-item"><a class="nav-link" href="memberJoinForm.do">회원가입</a></li>
				</ul>
				
				<%} else { // 로그인 한 상태 
		String author = (String) session.getAttribute("author");
		if(author.equals("ADMIN")) { // 로그인 함-> 권한:admin %>
				
					<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">ADOPTPAGE</a></li>
					<li class="nav-item"><a class="nav-link" href="#">VOLUNTEER</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">COMMUNITY</a></li>
					<li class="nav-item"><a class="nav-link" href="qnaBoardList.do">Q&A</a></li>
					<li class="nav-item"><a class="nav-link" href="#">관리자페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="memberLogout.do">로그아웃</a></li>
				</ul>
				
				<%} else { // 로그인 함-> 권한:USER %>
				
					<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">ADOPTPAGE</a></li>
					<li class="nav-item"><a class="nav-link" href="#">VOLUNTEER</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">COMMUNITY</a></li>
					<li class="nav-item"><a class="nav-link" href="qnaBoardList.do">Q&A</a></li>
					<li class="nav-item"><a class="nav-link" href="memberMyPage.do">MYPAGE</a></li>
					<li class="nav-item"><a class="nav-link" href="memberLogout.do">로그아웃</a></li>
				</ul>
				
				<%}%>
				<%}%>

			</div>
		</div>

	</nav>
</body>
</html>