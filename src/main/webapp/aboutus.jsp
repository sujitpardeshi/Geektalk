<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 8px;
}

.about-section {
	padding: 50px;
	text-align: center;
	background-color: #474e5d;
	color: white;
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}

@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}
</style>



<title>About Us</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" />

<style>
.bgc {
	background: "#F9BEB2";
}
</style>
</head>
<body>

	<%@include file="narbar.jsp"%>


<div class="container-fluid">

	<div class="about-section " style="background: grey">
		<img src="img/newwww.png" width="90" height="90" alt="alt" />

		<h1 style="color: orange;">EsiTalK</h1>
		<p>EsiTalK is a photo and content sharing social networking
			service founded in 2021 by Saurabh Kolapkar .<br> The app allows users to
			upload media that can be viewed by anyone who ha account created in
			EsiTalK and organized by EsiTalK itself. Posts can be shared publicly
			or with preapproved loggers/users.<br> Users can browse other users' content
			view trending content, like photos, and see
			other users to a personal feed. <br>EsiTalK
			was originally distinguished by allowing content to be framed only in
			a square (1:1) aspect ratio of 640 pixels to match the display width
			of the iPhone at the time. In 2022, this restrictions was eased with
			an increase to 1080 pixels.</p>
		<p>Resize the browser window to see that this page is responsive
			by the way.</p>
	</div>


<br>
<br>

	<h2 style="text-align: center">Our Team</h2>
	<div class="row">
		<div class="column">
			<div class="card">
				<img src="img/phto.jpg" alt="Jane" style="width: 100%">
				<div class="container">
					<h2>Saurabh Kolapkar</h2>
					<p class="title">CEO & Founder</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>saurabh@apl.com</p>
					<p>
						<a href="https://mail.google.com/mail/u/0/#inbox?compose=CllgCHrlGLZKKdTMsrKXwjXqtmTTpncgSHtDTbwBMkXcscKpTPTwFzrZZDsRbrvfRxhkFZPXlDq" class="button ">Contact</a>
					</p>
				</div>
			</div>
		</div>


		<div class="column">
			<div class="card">
				<img src="img/default.png" alt="John" style="width: 100%">
				<div class="container">
					<h2>Eknath Shinde</h2>
					<p class="title">Designer</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>rocky@apl.com</p>
					<p>
						<a href="https://mail.google.com/mail/u/0/#inbox?compose=CllgCHrlGLZKKdTMsrKXwjXqtmTTpncgSHtDTbwBMkXcscKpTPTwFzrZZDsRbrvfRxhkFZPXlDq" class="button ">Contact</a>
					</p>
				</div>
			</div>
		</div>




		<div class="column">
			<div class="card">
				<img src="img/default.png" alt="John" style="width: 100%">
				<div class="container">
					<h2>P V Narsimha</h2>
					<p class="title">Designer</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>pushpa@apl.com</p>
					<p>
						<a href="https://mail.google.com/mail/u/0/#inbox?compose=CllgCHrlGLZKKdTMsrKXwjXqtmTTpncgSHtDTbwBMkXcscKpTPTwFzrZZDsRbrvfRxhkFZPXlDq" class="button ">Contact</a>
					</p>
				</div>
			</div>
		</div>
	</div>


</div>

</body>
</html>
