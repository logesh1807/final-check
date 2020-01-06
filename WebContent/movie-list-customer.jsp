<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Movies</title>
<link href="./style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<span id="title">Movie Cruiser</span> <img src="./images/logo.png"
			alt="logo" id="logo">
		<nav>
			<a id="movies" href="ShowMovieListCustomer">Movies</a> <a
				id="favorites" href="ShowFavorite">Favorites</a>
		</nav>
	</header>
	<div>
		<h1>Movies</h1>
		<h3>${msg }</h3>
		<table cellspacing="10px" cellpadding="5px">
			<tr>
				<th class="al-left">Title</th>
				<th class="al-right">Box Office</th>
				<th class="al-mid">Genre</th>
				<th class="al-mid">Has Teaser</th>
				<th class="al-mid">Action</th>
			</tr>
			<c:forEach items="${movie}" var="menu">
				<tr>
					<td class="al-left">${menu.title }</td>
					<td class="al-right">$.${menu.boxOffice }</td>
					<td class="al-mid">${menu.genre }</td>
					<td class="al-mid"><c:if test="${menu.hasTeaser }">Yes</c:if>
						<c:if test="${!menu.hasTeaser }">No</c:if></td>
					<td class="al-mid"><a href="AddToFavorite?movieId=${menu.id }">Add
							to Favorite</td>
					</a>
				</tr>
			</c:forEach>
		</table>
	</div>
	<footer>
		<span id="cpw">Copyright@2019</span>
	</footer>
</body>
</html>