<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>

<link rel="stylesheet" href="./css/style.css" />
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

</head>
<body>


	<section class="wrapper">
		<h1>Send an Omikuji!</h1>
		<form class="form" action="/form" method="POST">

			<div>
				<label for="number">Pick any number from 5 to 25</label> <input
					type="number" name="number" min="5" max="25" step="1" />
			</div>

			<div>
				<label for="city">Enter the name of any city.</label> <input
					type="text" name="city" />
			</div>
			<div>
				<label for="person">Enter the name of any real person</label> <input
					type="text" name="person" />
			</div>
			<div>
				<label for="hobby">Enter professional endeavor or hobby:</label> <input
					type="text" name="hobby" />
			</div>
			<div>
				<label for="animal">Enter any type of living thing.</label> <input
					type="text" name="animal" />
			</div>
			<div>
				<label for="nice">Say something nice to someone:</label> <input
					type="text" name="nice" style="height: 50px; width: 150px;" />
			</div>

			<label for="submit">Send and show a friend</label> <input
				type="submit" value="Send" />

		</form>
	</section>


</body>
</html>