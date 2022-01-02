<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	
}
:root
{
	--blue: #287bff;
	--white: #fff;
	--grey: #f5f5f5;
	--black1: #222;
	--black2: #999;
}
body
{
	min-height: 100vh;
	overflow-x: hidden;
}
.container
{
	position: relative;
	width: 100%;
}
.navigation
{
	position: fixed;
	width: 300px;
	height: 100%;
	background: var(--blue);
	border-left: 10px solid var(--blue);
	transition: 0.5s;
	overflow: hidden;
}
.navigation ul
{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.navigation ul li
{
	positon: relative;
	width: 200%;
	list-style: none;
	border-top-left-radius: 30px;
	border-bottom-left-radius: 30px;
	
}
.navigation ul li:hover
{
	background: var(--white);
}
.navigation ul li:nth-child(1)
{
	margin-bottom: 40px;
	pointer-events: none;
}
.navigation ul li a
{
	positon: relative;
	display: block;
	width: 100%;
	display: flex;
	text-decoration: none;
	color: var(--white);
}
.navigation ul li:hover a
{
	color: var(--blue);
}
.navigation ul li a .icon
{
	position: relative;
	display: block;
	min-width: 60px;
	height: 60px;
	line-height: 60px;
	text-align: center;
}
.navigation ul li a .icon ion-icon
{
	font-size: 1.75em;
}
.navigation ul li a .title
{
	positon: relative;
	display: block;
	padding: 0 10px;
	height: 60px;
	line-height: 60px;
	text-align: start;
	white-space: nowrap;	
}


.navigation ul li:hover a::before
{
	content: '';
	position: absolute;
	right: 0;
	top: -50px;
	width: 50px;
	height: 50px;
	background: transparent;
	border-radius: 50%;
	box-shadow: 35px 35px 0 10px var(--white);
	pointer-events: none;
}
.navigation ul li:hover a::after
{
	content: '';
	position: absolute;
	right: 0;
	top: -50px;
	width: 50px;
	height: 50px;
	background: transparent;
	border-radius: 50%;
	box-shadow: 35px 35px 0 10px var(--white);
	pointer-events: none;
}

</style>

</head>
<body>

<div class="container">
	<div class="navigation">
		<ul>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="logo-apple"></ion-icon></span>
					<span class="title">Brand Name</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="home-outline"></ion-icon></span>
					<span class="title">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="people-outline"></ion-icon></span>
					<span class="title">Customers</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="chatbubble-outline"></ion-icon></span>
					<span class="title">Message</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="help-outline"></ion-icon></span>
					<span class="title">Helps</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
					<span class="title">Settings</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
					<span class="title">Password</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
					<span class="title">Sign Out</span>
				</a>
			</li>
		</ul>
	</div>
</div>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>