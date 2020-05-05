<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Country Search</title>
</head>
<body>
	<center>
		<form action="/" method="post">
			<label><h4>
					<i>Enter a Pattern</i>
				</h4></label> <br> <input type="text" placeholder="Enter the Country"
				name="country"
				style="border-width: 1px; border-radius: 5px; height: 40px; padding-left: 10px;" />
			<input type="submit" name="submit" value="Submit"
				class="btn btn-success btn-md"
				style="padding: auto; margin-right: 10px; margin-left: 10px;">
			<input type="reset" name="reset" value="Clear"
				class="btn btn-info btn-md" style="padding: auto;">
		</form>
		<br> <br>
		<c:if test="${countryList.size() >0 }">
			<div class="container">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<table class="table  table-hover">
							<thead>
								<tr>
									<th>Code</th>
									<th>Country Name</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${countryList}" var="country">
									<tr>
										<td>${country.code}</td>
										<td>${country.name}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</c:if>
	</center>
</body>
</html>
