<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
input {
	width: 30%;
	padding: 16px 20px;
	border: none;
	border-radius: 4px;
	background-color: #f1f1f1;
	margin-bottom: 20px;
}

* {
	outline: none;
	border: none;
	margin: 0px;
	padding: 0px;
	font-family: Courier, monospace;
}

body {
	background: #333
		url(https://static.tumblr.com/maopbtg/a5emgtoju/inflicted.png) repeat;
}

#paper {
	color: #FFF;
	font-size: 20px;
}

#margin {
	margin-left: 12px;
	margin-bottom: 20px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

#button {
	cursor: pointer;
	margin-top: 20px;
	float: center;
	height: 40px;
	padding-left: 24px;
	padding-right: 24px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 20px;
	color: #FFF;
	text-shadow: 0px -1px 0px #000000;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	border-top: 1px solid #FFF;
	-webkit-box-shadow: 0px 2px 14px #000;
	box-shadow: 0px 2px 14px #000;
	background-color: #62add6;
	background-image:
		url(https://static.tumblr.com/maopbtg/ZHLmgtok7/button.png);
	background-repeat: repeat-x;
}

#button:active {
	zoom: 1;
	filter: alpha(opacity = 80);
	opacity: 0.8;
}

#button:focus {
	zoom: 1;
	filter: alpha(opacity = 80);
	opacity: 0.8;
}

#wrapper {
	width: 700px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	margin-top: 24px;
	margin-bottom: 100px;
}

#text1 {
	width: 250px;
	overflow: hidden;
	background-color: #FFF;
	color: #222;
	font-family: Courier, monospace;
	font-weight: normal;
	font-size: 24px;
	resize: none;
	line-height: 40px;
	padding-left: 100px;
	padding-right: 100px;
	background-image:
		url(https://static.tumblr.com/maopbtg/E9Bmgtoht/lines.png),
		url(https://static.tumblr.com/maopbtg/nBUmgtogx/paper.png);
	background-repeat: repeat-y, repeat;
	-webkit-border-radius: 12px;
	border-radius: 12px;
	-webkit-box-shadow: 0px 2px 14px #000;
	box-shadow: 0px 2px 14px #000;
	border-top: 1px solid #FFF;
	border-bottom: 1px solid #FFF;
}
</style>
<script>
	$(document).ready(function() {
		$('#title').focus();
		$('#text').autosize();
	});
</script>
</head>
<body>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<form id="paper" action="LofgInControl.jsp" method="post">
		<center>


			<div id="wrapper">


				<input placeholder="Enter Email id." id="text1" name="username"
					rows="8" required><br /> <input type="password"
					placeholder="Enter Password." id="text1" name="password" required>
				<br> <input id="button" type="submit" value="Login">

			</div>
		</center>
	</form>
	
</body>
</html>