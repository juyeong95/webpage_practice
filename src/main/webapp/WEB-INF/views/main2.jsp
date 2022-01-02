<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*
{
margin: 0;
padding: 0;
box_sizing: border-box;
}
body
{
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background: #222327;
}
.navigation
{
	position: relative;
	width: 400px;
	height: 60px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 10px;
}
.navigation ul
{
	display: flex;
	width: 350px;
}
.navigation ul li
{
	list-style: none;
	position: relative;
	width: 70px;
	height: 60px;
	z-index: 2;
}
.navigation ul li a
{
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	width: 100%;
	text-align: center;
	font-weight: 500;
}
.navigation ul li a .icon
{
	position: relative;
	display: block;
	line-height: 65px;
	font-size: 1.5em;
	transition: 0.5s;
	color: #222327;
}
.navigation ul li.active a .icon
{
	transform: translateY(-32px);
	color: #2196f3;
}
.navigation ul li a .text
{
	position: absolute;
	background: #2196f3;
	color: #fff;
	padding: 2px 7px;
	border-radius: 12px;
	font-weight: 400;
	font-size: 0.75em;
	letter-spacing: 0.05em;
	transition: 0.5s;
	opacity: 0;
	transform: translateY(15px);
}
.navigation ul li.active a .text
{
	transform: translateY(-4px);
	opacity: 1;
}
.indicator
{
	position: absolute;
	top: -35%;
	width: 70px;
	height: 70px;
	background: #fff;
	border-radius: 50%;
	z-index: 1;
	transition: 0.5s;
}
.indicator::before
{
	content: '';
	position: absolute;
	top: 5px;
	left: -28px;
	width: 30px;
	height: 30px;
	background: transparent;
	border-radius: 50%;
	box-shadow: 15px 18px #fff;
}
.indicator::after
{
	content: '';
	position: absolute;
	top: 5px;
	right: -28px;
	width: 30px;
	height: 30px;
	background: transparent;
	border-radius: 50%;
	box-shadow: -15px 18px #fff;
}

.navigation ul li:nth-child(1).active ~ .indicator
{
	transform: translateX(calc(70px * 0));
}
.navigation ul li:nth-child(2).active ~ .indicator
{
	transform: translateX(calc(70px * 1));
}
.navigation ul li:nth-child(3).active ~ .indicator
{
	transform: translateX(calc(70px * 2));
}
.navigation ul li:nth-child(4).active ~ .indicator
{
	transform: translateX(calc(70px * 3));
}
.navigation ul li:nth-child(5).active ~ .indicator
{
	transform: translateX(calc(70px * 4));
}
</style>
</head>
<body>
 	<div class="navigation">
 		<ul>
 			<li class="list active">
 				<a href="#">
 					<span class="icon"><ion-icon name="home-outline"></ion-icon></span>
 					<span class="text">Home</span>
 				</a>
 			</li>
 			<li class="list">
 				<a href="#">
 					<span class="icon"><ion-icon name="person-outline"></ion-icon></span>
 					<span class="text">Profile</span>
 				</a>
 			</li>
 			<li class="list">
 				<a href="#">
 					<span class="icon"><ion-icon name="chatbox-outline"></ion-icon></span>
 					<span class="text">Messages</span>
 				</a>
 			</li>
 			<li class="list">
 				<a href="#">
 					<span class="icon"><ion-icon name="image-outline"></ion-icon></span>
 					<span class="text">Photos</span>
 				</a>
 			</li>
 			<li class="list">
 				<a href="#">
 					<span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
 					<span class="text">Settings</span>
 				</a>
 			</li>
 			<div class="indicator"></div>
 		</ul>
 	</div>
 	
 	<script>
 		const list = document.querySelectorAll('.list');
 		function activeLink(){
 			list.forEach((item) =>
 			item.classList.remove('active'));
 			this.classList.add('active')
 		}
 		list.forEach((item) =>
 		item.addEventListener('click', activeLink));
 		
 	</script>
 	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>