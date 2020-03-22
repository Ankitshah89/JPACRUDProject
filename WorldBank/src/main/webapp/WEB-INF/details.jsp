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


<title>Country</title>

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto+Mono"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />
<link rel="stylesheet"
	href="https://cdn.rawgit.com/konpa/devicon/df6431e323547add1b4cf45992913f15286456d3/devicon.min.css" />
<head>
<meta charset="UTF-8">


</head>
<body>

	<div class="topBar">
		<a href="home.do" class="fas fa-home" aria-hidden="true"
			style="font-size: 30px; float: right"></a>

	</div>
</head>
<body>

	<c:choose>
		<c:when test="${! empty country}">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Country</th>
      <th scope="col">Access To Electricity(%)</th>
      <th scope="col">Ease Of Doing Business(0-100)</th>
      <th scope="col">Educational Attainment(% Undergrad or
					More)</th>
      <th scope="col">Exports Vs Imports(%)</th>
      <th scope="col">Fertility Rate (total births per women)</th>
      <th scope="col">GDP Growth(%)</th>
      <th scope="col">GDP Per Capita($ PPP)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">${country.id}</th>
      <td>${country.country}</td>
      <td>${country.accessToElectricity}</td>
      <td>${country.easeOfDoingBusiness}</td>
      <td>${country.educationalAttaintment}</td>
      <td>${country.exportsVsImports}</td>
      <td>${country.fertilityRate}</td>
      <td>${country.gdpGrowth}</td>
      <td>${country.gdpPerCapita}</td>
    </tr>
   
  </tbody>
</table>
 
 
		
			<td>
				<form action="remove.do" method="GET" name="id" value=${ country.id}>

					<button class ="button" data-target="#delete" type="submit" data-toggle="modal"
						data-uid="1" class="delete btn btn-danger btn-sm" name="id"
						value=${ country.id}>
						<span class="glyphicon glyphicon-trash"></span>
					</button>
				</form>

			</td>


			<td>
				<form action="update.do" method="GET">
					<input type="hidden" name="id" value=${ country.id} />

					<button class ="button" type="submit" data-toggle="modal" value=${ country.id}
						name="country" data-target="#edit2" data-uid="2"
						class="update btn btn-warning btn-sm">
						<span class="glyphicon glyphicon-pencil"></span>
					</button>
				</form>
			</td>



		</c:when>
		<c:otherwise>
			<h1>Sorry! Country Not Found</h1>
		</c:otherwise>
	</c:choose>

</body>
</html>

