<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Movies</title>
<link href="./style/style.css" rel="stylesheet" type="text/css" />
<script src="./js/script.js" type="text/javascript"></script>
</head>
<body>
	<header> <span id="title">Movie Cruiser</span> <img
		class="img" src="./images/logo.png" alt="logo" id="logo" /> <nav>
	<a id="menu" href="ShowMovieListAdmin" />Movies</a> </nav> </header>
	<div>
		<h1>Edit Movies</h1>
		<form class="cont" name="form" onsubmit="return validation()"
			method="post" action="EditMovieItem?movieId=${menu.id}">
			<table>
				<tr>
					<td colspan="4"><label for="texttitle"> Title</label></td>
				</tr>
				<tr>
					<td colspan="4"><input type="text" id="texttitle"
						name="texttitle" size="80" value="${menu.title }"></td>
				</tr>
				<tr>
					<td><label for="textboxOffice">$.boxOffice </label></td>
					<td>active</td>
					<td><label for="textdateofLaunch">dateofLaunch </label></td>
					<td><label for="genre">Genre </label></td>
				</tr>
				<tr>
					<td><input type="textbox" id="textboxOffice"
						name="textboxOffice" class="txt-right" value="${menu.boxOffice}"></td>
					<td><label for="rdYes"><input type="radio" id="rdYes"
							name="rdYes" checked>Yes</label> <label for="rdno"><input
							type="radio" id="rdYes" name="rdYes">No</label></td>
					<td><input type="text" id="textdateofLaunch"
						name="textdateofLaunch"
						value="<fmt:formatDate pattern="dd/MM/yyyy"
							value="${menu.dateofLaunch }"></fmt:formatDate>"></td>
					<td><select name="genre" id="genre">
							<option>Science Fiction</option>
							<option>Superhero</option>
							<option>Romance</option>
							<option>Comedy</option>
							<option>Adventure</option>
							<option>Thriller</option></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" id="hasTeaser"
						name="hasTeaser" checked> <c:if test="${menu.hasTeaser }">Yes</c:if>
						<c:if test="${!menu.hasTeaser }">No</c:if></td>
				</tr>
				<tr>
					<td colspan="2"><input class="color" type="submit"
						value="Save"></td>
				</tr>
			</table>
		</form>
	</div>
	<footer> <span>Copyright@2019</span> </footer>
</body>
</html>