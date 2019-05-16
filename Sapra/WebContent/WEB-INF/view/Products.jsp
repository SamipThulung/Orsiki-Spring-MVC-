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
<title>Products</title>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/logo.png" type="image/png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/root.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mini-header.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/splash.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/banner.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carousal.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/special-product.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/another-search.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css"/>

</head>
<body>
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
	
	
	<div class="shop">
		<div class="carousal" id="featured">
			<div class="title">Featured</div>
			
			<div class="controller">
			
				<div class="scroll-lt" id="scroll-lt"><</div>
				<div class="scroll-rt" id="scroll-rt">></div>
				
				<div class="product-list swipezone">
					 <c:forEach var = "tempCustomer" items = "${list1}">
					<div class="product">
					<c:url var="updateLink" value="/customer/check">
							<c:param name="Id" value="${tempCustomer.id}" />
							<c:param name="cate" value="Product" />
						</c:url>
						<div class="image-holder">
							<a href="${updateLink}"><img src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}"></a>
						</div>
						<p class="name">${tempCustomer.description}</p>
						<p class="price">
						Rs. <i>${tempCustomer.price}</i>
						<span class="discount">Rs0.00</span>
						</p>
						<p class="hearted">
							<i class="fas fa-heart"></i>
						</p>
					</div>
			  
			  
				</c:forEach>
					
				
				</div>
			</div>
		</div>
		
		<!-------->
		
		<div class="carousal" id="laptop">
			<div class="title">Featured</div>
			
			<div class="controller">
			
				<div class="scroll-lt" id="scroll-lt"><</div>
				<div class="scroll-rt" id="scroll-rt">></div>
				
				<div class="product-list swipezone">
					<c:forEach var = "tempCustomer" items = "${list2}">
					<div class="product">
						<c:url var="updateLink" value="/customer/check">
							<c:param name="Id" value="${tempCustomer.id}" />
							<c:param name="cate" value="Product" />
						</c:url>
						<div class="image-holder">
							<a href="${updateLink}"><img src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}"></a>
						</div>
						<p class="name">${tempCustomer.description}</p>
						<p class="price">
						Rs. <i>${tempCustomer.price}</i>
						<span class="discount">Rs. 0.0</span>
						</p>
						<p class="hearted">
							<i class="fas fa-heart"></i>
						</p>
						
				
					
					</div>
			  
			  
				</c:forEach>
				
					
				
				</div>
			</div>
		</div>
	</div>
	
	<div class="special">
		<div class="special-image">
			<img src="${pageContext.request.contextPath}/resources/images/special1.png">
			<div class="special-caption">New Hoodies Coming to the Store for Limited Time.</div>
			<!-- 1 to 2 Liner Caption is Best -->
		</div>
		
		<div class="special-image">
			<img src="${pageContext.request.contextPath}/resources/images/special1.png">
			<div class="special-caption">Grand Sale Starts From September 05<br>Get Huge Discounts of Clothings and Electronics.</div>
		</div>
		
		<div class="special-image">
			<img src="${pageContext.request.contextPath}/resources/images/special1.png">
			<div class="special-caption">New Hoodies Coming to the Store for Limited Time.</div>
		</div>
	</div>
	
	<div class="search-container another-search">
		<form method="GET" action="search.jsp">
			<input type="search" id="search" name="query" tabindex="1" class="search" placeholder="Search..." required>
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
	
<style>
	

	
</style>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/javascript/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/javascript/main.js"></script>

<script>

	

</script>

<!-- Created By: Niush Sitaula 2018 - Oriksi -->
	