
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="/main.css">
<link type="text/css" rel="stylesheet" href="css/animate.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="~/lib/Font-Awesome/css/fontawesome.min.css">
<link rel="stylesheet" href="~/lib/Font-Awesome/css/regular.min.css">
<link rel="stylesheet" href="~/lib/Font-Awesome/css/solid.min.css">


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>


<style><%@include file="/WEB-INF/css/main.css"%></style>
<style><%@include file="/WEB-INF/css/style.css"%></style>


<meta charset="UTF-8">
</head>

<div class="topnav navbar-fixed-top" >
  <a href="home.do"><i class="fa fa-fw fa-home"></i> Home</a>

  <div class="search-container">
    <form class="searchButton" action="details.do" method="GET">
				<input type="number" name="id" placeholder="Search by Id"   />
				 <button type="submit" class="btn btn" value="Search by Id">
				Search</button> 
			</form>
  </div>
    <div class="search-container">
  <form class="searchButton" action="searchByName.do" method="GET">
				<input type="text" name="name" placeholder="Search by Name" />
				 <button type="submit" class="btn btn " value="Search by Name">
				Search</button> 
			</form>
			</div>
</div>
<body> 
  <!-- ========== HEADER SECTION ========== -->
  <section id="home" name="home"></section>
  <div id="headerwrap">
    <div class="container">
      <div class="logo">
        <img >
      </div>
      <br>
      <div class="row">
        <h1>Welcome to the World Database</h1>
					<br>
					<h3>Something for your curiosity !!</h3>
					<br> <br>   
					     <div class="col-lg-6 col-lg-offset-3">
        </div>
      </div>
    </div>
  
  </div>
  
  
 
  
 
  <br>
  <br>
  <div class="button1">


		<td><strong> Add</strong></td>
		<form action="create.do" method="GET" name="id" value=${ country.id}>

			<button  type="submit" data-toggle="modal" data-target="#edit"
				data-uid="2" class="add btn btn-primary btn-sm">
				<span class="glyphicon glyphicon-plus" value="Submit Button"></span>
			</button>
		</form>

		</td>

	</div>
          
          
          
          
          
  <div style="background-color: white" class="row" >
    <table class="table table-hover table-responsive">
      <thead>
        <tr>
          <th></th>
          <th></th>
         <th>ID</th>
						<th>Country</th>
						<th>Co-ordinates</th>
        </tr>
      </thead>
      <tbody>
<c:forEach items="${countryList}" var="country">
						<c:choose>
							<c:when test="${country.id == null }">
								<strong style="padding-left: 35em; color: red">Country Not Found !</strong>
								<br>
								<br>
								<br>
							</c:when>
							<c:otherwise>
								<tr id="d1">
									<td></td>
									<td></td>
									<td>${country.id }</td>
									
									<td><a href="details.do?id=${country.id}">${ country.country}</a>
								<%-- 	 id="name">${ country.country} --%></td>
									
									<td id="co-ord"><a href="http://maps.google.com/?q=${ country.latitude}, 
									${ country.longitude}">${ country.latitude},${ country.longitude}</a>
									</td>
									
									
									<td>
									<form action="update.do" method="GET">
									<input type="hidden" name="id"
										value=${ country.id} />
										
										<button type="submit" data-toggle="modal" value=${ country.id}
											name="country" data-target="#edit2" data-uid="2"
											class="update btn btn-warning btn-sm">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										</form>
									</td>
									
									
									
									<td>
										<form action="remove.do" method="GET" name="id"
											value=${ country.id}>
											
											<button data-target="#delete" type="submit"
												data-toggle="modal" data-uid="1"
												class="delete btn btn-danger btn-sm" name="id"
												value=${ country.id}>
												<span class="glyphicon glyphicon-trash"></span>
											</button>
										</form>
										
									</td>

								</tr>

							</c:otherwise>
						</c:choose>
					</c:forEach>        
     
      </tbody>
    </table>
  </div>
 
  
 
  
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>

