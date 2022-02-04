<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Users</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="/DataTables/datatables.css">
 
<script type="text/javascript" charset="utf8" src="/DataTables/datatables.js"></script>

	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
body {
	background: linear-gradient(to bottom right, #BDB76B, white);
	background-attachment: fixed;
}

.container {
	margin-top: 270px;
}

table, th, tr {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 20px;
}

td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 20px;
}

.css-serial {
	counter-reset: serial-number; /* Set the serial number counter to 0 */
}

.css-serial td:first-child:before {
	counter-increment: serial-number;
	/* Increment the serial number counter */
	content: counter(serial-number); /* Display the counter */
}

nav {
	padding: 15px;
}

.moveTop {
	width: 1198 px;
	margin-left: 150px;
	margin-top: -90px;
}

.button {
	border-radius: 4px;
	background-color: #0000FF;
	border: none;
	color: #FFFAFA;
	text-align: center;
	font-size: 23px;
	padding: 2px;
	width: 150px;
	transition: all 0.5s;
	cursor: move;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 10;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

.registerform {
	background-color: GhostWhite;
	height: 580px;
	width: 350px;
	position: absolute;
	left: 500px;
	top: 50px;
	border-radius: 0px;
	margin-top: 25px;
}

.button1 {
	border-radius: 4px;
	background-color: #0000FF;
	border: none;
	color: #FFFAFA;
	text-align: center;
	font-size: 23px;
	padding: 2px;
	width: 320px;
	transition: all 0.5s;
	cursor: move;
	margin: 5px;
}

.dropbtn {
	border-radius: 4px;
	background-color: #0000FF;
	border: none;
	color: #FFFAFA;
	text-align: center;
	padding: 2px;
	width: 170px;
	font-size: 23px;
	transition: all 0.5s;
	border: none;
	cursor: help;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: green;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
		
</head>
<body>
	</head>
<body>
	<c:set value="${currentUser1}" var="user" />
	<!--logoImage -->
	<img src="image/KFC Logo2.png " width="150px" height="100px">
	<!-- navbar-->
	<div class="moveTop">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid justify-content-between">
				<!-- Left elements -->
				<a class="nav-link d-sm-flex align-items-lg-center"> <img
					src="https://mdbcdn.b-cdn.net/img/new/avatars/1.webp"
					class="rounded-circle" height="25" alt="image for b/w" /> <strong
					class="d-none d-sm-block ms-7"><c:out
							value="${user.userName}" /> </strong>
					<div class=" dropdown">
						<button onclick="myFunction()" class="btn btn-light dropbtn">
							Menu <i class="fa fa-caret-down"></i>
						</button>

						<div id="myDropdown" class="dropdown-content">
							<a href="insertProduct.jsp"> Insert New Meal</a> <a
								href="newAdmin.jsp">Add New Admin</a> <a href="TodaySalesReport">Sales Report(Today)</a>
						</div>
					</div> <a class="" href="adminPage.jsp">
						<button type="submit" class="btn btn-light  button">Home</button>
				</a>
				</a> <a class="" href="ShowProductsAdmin">
					<button type="submit" class="btn btn-light  button">List
						of Meals</button>
				</a> <a class="" href="OrderStatus">
					<button type="submit" class="btn btn-light  button">Orders</button>

					<!-- Left elements --> <!-- Right elements --> <a href="login.jsp"><button
							type="submit" class="btn btn-light button">Logout</button></a> <!-- Right elements -->
			</div>
		</nav>
	</div>
	<br />
	<!-- Navbar -->
	<label for="myInput" id="">Search</label><input type="text" id="myInput" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
	<table id="myTable" class="display css-serial" style="width:100%">
		<caption></caption>
		<tr class="header">
			<th>S.No</th>
			<th>User Id</th>
			<th>User Name</th>
			<th>User Mail-Id</th>
			<th>Mobile Number</th>
			<th>Role</th>
		</tr>
		<c:forEach items="${allUser}" var="user">
			<tr>
				<td align="center"></td>
				<td align="center"><c:out value="${user.userId}" /></td>
				<td align="center"><c:out value="${user.userName}" /></td>
				<td align="center"><c:out value="${user.mailId}" /></td>
				<td align="center"><c:out value="${user.mobileNumber}" /></td>
				<td align="center"><c:out value="${user.roleType}" /></td>
			</tr>
		</c:forEach>
	</table>
	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {
				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
		function search() {
			  var input, filter, table, tr, td, i, txtValue;
			  input = document.getElementById("myInput");
			  filter = input.value.toUpperCase();
			  table = document.getElementById("myTable");
			  tr = table.getElementsByTagName("tr");
			  for (i = 0; i < tr.length; i++) {
			    td = tr[i].getElementsByTagName("td")[2];
			    if (td) {
			      txtValue = td.textContent || td.innerText;
			      if (txtValue.toUpperCase().indexOf(filter) > -1) {
			        tr[i].style.display = "";
			      } else {
			        tr[i].style.display = "none";
			      }
			    }       
			  }
			}
		
		</script>
</body>
</html>