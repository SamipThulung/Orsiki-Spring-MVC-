<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html lang="en">
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-120249425-1"></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'UA-120249425-1');
</script>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/logo.png" type="image/png">
<title>Search Results</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/root.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mini-header.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css"/>
 <link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/third.css'>
    <link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/modal.css'>
    <style>tr:nth-child(even) {background: #FFFFFF;
}
tr:nth-child(odd) {background:  #f6f9fb;}

 





#headerTable{
	background: #65707f; /* Old browsers */
	background: -moz-linear-gradient(top,  #65707f 0%, #4a5564 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#65707f), color-stop(100%,#4a5564)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #65707f 0%,#4a5564 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #65707f 0%,#4a5564 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #65707f 0%,#4a5564 100%); /* IE10+ */
	background: linear-gradient(to bottom,  #65707f 0%,#4a5564 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#65707f', endColorstr='#4a5564',GradientType=0 ); /* IE6-9 */
	background-color: #586272;
	-webkit-border-radius: 5px 5px 0px 0px;
	-moz-border-radius: 5px 5px 0px 0px;
	border-radius: 5px 5px 0px 0px;

	padding:10px 5px 10px 8px;
	/* margin-right:12px; */
	text-align: center;
	color:white;
}</style>

</head>
<body>
	<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '153908238732751',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v2.11'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
	<div class="mini-header">
		<ul class="left">
			<li><a href="${pageContext.request.contextPath}/customer/home">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="news.html">News</a></li>
			<li><a href="terms.html">Terms</a></li>
			<li><a href="contact.html">Contact</a></li>
			<li><a href="faq.html">FAQ</a></li>
			<li style="margin-left: 8px;" class="search-icon">
					<i class="fas fa-search" onclick="searchforce()"></i>
			</li>
		</ul>
		
		<ul class="right">
			<li><a href="#" onclick="showLogin()" style="display:${visibleLogin};">Login</a></li>
			<li style="display:${visibleLogin};">|</li>
			<li><a href="${pageContext.request.contextPath}/customer/registerButton" style="display:${visibleLogin};">Register</a></li>
			
			<li><a href="${pageContext.request.contextPath}/userClass/logout" oncancel="showRegister()" style="display:${visibleLolly};">Logout</a></li>
		</ul>
	</div>

	<header>
		<div class="logo">
			<a href="${pageContext.request.contextPath}/customer/home"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Oriski Logo"></a>
			<span>Oriski <div style="float:right;display:${visibleLolly};" >(${loginName})</div></span>
			
		</div>
		
		<!-- <div class="mobile mobsearch">
			<label>
				<i class="fas fa-search"></i>
				<input type="checkbox" id="search-check" onclick="showsearch()">
			</label>
		</div> -->
		
		<div class="search-container">
			<form method="GET" action="${pageContext.request.contextPath}/search/Search">
				<input type="search" id="search"  name="keyword" tabindex="1" class="search" placeholder="Search..." required>
				<select id="select-search" name="category">
					<option class="hidden">All Category</option>
					<option>Mens</option>
					<option>Women</option>
					<option>Kids</option>
					<option>Beverages</option>
					<option>Electronics</option>
					<option>Households</option>
					<option>Kitchen Items</option>
					<option>Grooming Kits</option>
				</select>
				<button type="submit" class="search-button" id="submit-search">
					<i class="fas fa-search"></i>
				</button>
			</form>
		</div>
		
		<div class="wishbtn">
			<a href="wishlist.html">Wishlist(0)</a>
			<a href="compare.html">Compare</a>
		</div>
		
		<div class="lolly" style="display:${visibleLolly};">
			<span>${lollyMoney}</span>
			<i class="fas fa-coins"></i>
		</div>
		
		<div class="cart">
			<i class="fas fa-shopping-cart"></i>
			<span class="items" id="total-items">0</span>
		</div>
	</header>
	

<h1 style="font-family:Comic Sans Ms;">Search Results</h1>
				
				
				<table >
					<tr id="headerTable" >
						
						<th style="padding:22px 64px;">Image</th>
						<th style="padding:22px 18px;">Name</th>
						<th style="padding:22px 128px;">Description</th>
						<th style="padding:22px 18px;">Gender</th>
						
					</tr>
					
					<c:forEach var = "tempCustomer" items = "${pants}">
					
											
					
						<tr>
						
							<td><img id = "img" src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" alt="HTML5 Icon" width="180" height="180"></th> 
							<%-- <th>${tempCustomer.image}</th>  --%>
							<td style="text-indent: 50px;font-size:20px;"> ${tempCustomer.name}</td>
							<td style="text-align:center;font-size:15px;padding:16px 18px;"> ${tempCustomer.description}</td>
							<td>
							<!-- display the update link -->
				<c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="${tempCustomer.cate}" />
					</c:url>
					<a type="button" href="${updateLink}" style="text-decoration:none;cursor:pointer;padding:10px 15px 10px 15px;border:1px solid black;border-radius:15%;color:white;background-color:green;"> Check</a>
				</td>
						</tr>
						
						
					</c:forEach>
				</table>
	
	
	
	<div class="footer">
		<div class="one">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Oriski">
			<div class="about">
				<b>About:</b><br>
				We here at Oriski recognize the needs of the Nepalese customer and have put together a site that is easy to use for our customer with the right amout of content. </div>
			<a href="tel:01-000000">+01-245100</a>
			<a href="https://maps.google.com">GoogleMap</a>
		</div>
		
		<div class="bar"></div>
		
		<div class="two">
			<div class="links">
				<b>Find It Fast:</b>
				<ul>
					<li><a href="#">Mens</a></li>
					<li><a href="#">Womens</a></li>
					<li><a href="#">Electronics</a></li>
					<li><a href="#">Kitchen</a></li>
					<li><a href="#">Grooming</a></li>
				</ul>
			</div>
			
			<div class="links">
				<b>Policy Info:</b>
				<ul>
					<li><a href="#">Privacy</a></li>
					<li><a href="#">Terms</a></li>
					<li><a href="#">News</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#" onclick="showLogin()">Login</a></li>
				</ul>
			</div>
		</div>
		
		<div class="bar"></div>
		
		<div class="three">
			<div class="social">
				<a href="#"><i class="fab fa-facebook-f"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a>
				<a href="#"><i class="fab fa-google-plus-g"></i></a>
				<a href="#"><i class="fas fa-phone"></i></a>
			</div>
			<p><a href="#">Cart</a></p>
			<p><a href="#">Security</a></p>
		</div>
	</div>
	
	<footer>
		<a href="#">&copy; Oriski 2018</a>
		-
		<a href="#">Sitemap</a>
		-
		<a href="#">Disclaimer</a>
	</footer>
	
	<div class="login">
		
		<div class="login-background" onclick="showLogin()"></div>
	
		<div class="main-login-container">
			<div class="cross" onclick="showLogin()">X</div>
			
			<div class="login-logo">
				<img src="${pageContext.request.contextPath}/resources/images/userlogo.png"/>
			</div>
			
			<div class="login-form">
				<form action="${pageContext.request.contextPath}/userClass/login" method="POST">
					<label>
						Username:
						<input type="text" name="uname" required/>
					</label>
					<label>
						Password:
						<input type="password" name="psw" required/>
					</label>
					<button type="submit">Login</button>
					<span title="Why Do You Guys Do That?"><a href="forgot">Forgot Password</a>, Huh? </span>
				</form>
			</div>
			
			<div class="register">
				New Here? <a href="signup">Sign Up</a> Now.
			</div>
		</div>
	</div>
	
	



<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/javascript/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/javascript/main.js"></script>

<script>

	

</script>
</body>
</html>