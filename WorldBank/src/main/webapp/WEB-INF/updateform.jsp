<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Update Data</title>
</head>
<body>
	<div class="d-flex" id="wrapper">
<%-- 		<jsp:include page="../navbar.jsp" /> --%>

		<div id="page-content-wrapper">

			<div class="container-fluid">

				<form:form action="update.do" method="POST" modelAttribute="country">
					<input name="id" type="hidden" value="${country.id }">
					<form:label path="accessToElectricity">Access To Electricity: </form:label>
					<form:input path="accessToElectricity" value="${country.accessToElectricity }" required="required"/>
					<form:errors path="accessToElectricity" />
					<br />
					<form:label path="easeOfDoingBusiness">Ease of Doing Business: </form:label>
					<form:input path="easeOfDoingBusiness" value="${country.easeOfDoingBusiness}" required="required"/>
					<br />
					<form:label path="educationalAttaintment">Educational Attaintment: </form:label>
					<form:input path="educationalAttaintment" value="${country.educationalAttaintment}" required="required"/>
					<br />
					
					<form:label path="exportsVsImports">Exports VS Imports: </form:label>
					<form:input path="exportsVsImports" value="${country.exportsVsImports}" required="required"/>
					<br />
				
					<form:label path="fertilityRate">Fertility Rate: </form:label>
					<form:input path="fertilityRate" value="${country.fertilityRate}" required="required"/>
					<br />
					
					<form:label path="fossilFuelConsumption">Fossil Fuel Consumption: </form:label>
					<form:input path="fossilFuelConsumption" value="${country.fossilFuelConsumption}" required="required"/>
					<br />
					
					<form:label path="gdpGrowth">GDP Growth: </form:label>
					<form:input path="gdpGrowth" value="${country.gdpGrowth}" required="required"/>
					<br />
					
					<form:label path="gdpPerCapita">GDP Per Capita: </form:label>
					<form:input path="gdpPerCapita" value="${country.gdpPerCapita}" required="required"/>
					<br />
					
					<input class="btn btn-primary" type="submit" value="Update">
				</form:form>
				<br>
					<form action ="home.do"> <input class="btn btn-primary" type="submit" value="Home"></form>					


			</div>
		</div>

	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>