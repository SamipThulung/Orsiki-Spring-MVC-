<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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
<title>${brand}</title>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/logo.png" type="image/png">
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
	

	<div class="middleBody">
    <div class='container' style="float: left;margin-left: 30px;">
        <div id="productImage1" class='easyzoom example'style="display: block;">
           
            <img src='${pageContext.request.contextPath}/resources/images/${img1}' >
            
        </div>
        <div id="productImage2"  class='easyzoom example' style="display: none;">
    
            <img  src='${pageContext.request.contextPath}/resources/images/${img2}' >
       
        </div>
        <div id="productImage3" class='easyzoom example' style="display: none;">
            
            <img  src='${pageContext.request.contextPath}/resources/images/${img3}' > 
           
        </div>
      
    </div>
    <script src="${pageContext.request.contextPath}/resources/javascript/secondlast.js" ></script>
    <script src='${pageContext.request.contextPath}/resources/javascript/last.js'></script>
    <script>
        $('.example').easyZoom({
            width: 420,
            height: 340,
            position: 'right',
			background: '#222',
        });
    </script>
    <div id="productDetails" >
        <strong><u>Brand:</u></strong> <i>${brand}</i><br>
        <strong><u>Description:</u></strong > <i style="text-indent:3em;">${msg}</i><br>
        <strong><u>Price</u></strong> : Rs. <i>${price}</i><br>
        <div class="fb-messengermessageus" 
          messenger_app_id="153908238732751" 
          page_id="1694539674180125"
          color="white"
          size="standard">
        </div>
        <button class="buyButton" onclick="document.getElementById('id02').style.display='block'" style="width:auto;margin-left:15%;">
<img src="${pageContext.request.contextPath}/resources/images/68-256.png" style="height:35px;width:35px;"> Buy Now!</button>


      
    </div>
    <div class="menuImageContainer">
       <img id="menuImage1" class="sliderBelow" src='${pageContext.request.contextPath}/resources/images/${img1}'  onclick="changeto1(1)" style="opacity: 0.5;">
       
        <img id="menuImage2" class="sliderBelow" src='${pageContext.request.contextPath}/resources/images/${img2}'  onclick="changeto2(2)">
        <img id="menuImage3" class="sliderBelow" src='${pageContext.request.contextPath}/resources/images/${img3}'  onclick="changeto3(3)">
    </div>
</div>

<!-- Javascript for choosing the image in the carousel -->
    <script>
function changeto1() {
    document.getElementById("productImage2").style.display = "none";
    document.getElementById("productImage3").style.display = "none";
    document.getElementById("productImage1").style.display = "block";
    document.getElementById("menuImage1").style.opacity = "0.5";
    document.getElementById("menuImage3").style.opacity = "1";
    document.getElementById("menuImage2").style.opacity = "1";
}
function changeto2(){
    document.getElementById("productImage1").style.display = "none";
    document.getElementById("productImage3").style.display = "none";
    document.getElementById("productImage2").style.display = "block";
    document.getElementById("menuImage1").style.opacity = "1";
    document.getElementById("menuImage3").style.opacity = "1";
    document.getElementById("menuImage2").style.opacity = "0.5";
}
function changeto3(){
    document.getElementById("productImage1").style.display = "none";
    document.getElementById("productImage2").style.display = "none";
    document.getElementById("productImage3").style.display = "block";
    document.getElementById("menuImage1").style.opacity = "1";
    document.getElementById("menuImage3").style.opacity = "0.5";
    document.getElementById("menuImage2").style.opacity = "1";
}

</script>




<script>
function updateTextInput(val){
  document.getElementById('textInput').value=val;
}
</script>
	
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
	
	<div id="id02" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/orderClass/addOrder" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="${pageContext.request.contextPath}/resources/images/${img1}" alt="AntiTheft" class="avatar"  style="border-radius:60%;">
    </div>

    <div class="containerM">
      <input type="hidden" placeholder="Enter Username" value="${id}" name="productid"  readonly>
      <input type="hidden" placeholder="Enter Username" value="${type}" name="producttype"  readonly>
      <input type="hidden" placeholder="Enter Username" value="${price}" name="price"  readonly>
      <input type="hidden" placeholder="Enter Username" value="${cp}" name="cp"  readonly>
      Username
      <input type="text" placeholder="Enter Username" value="${buying}" name="username"  required>
      Contact Number
      <input type="text" placeholder="Enter Contact Number" value="${contact}" name="contact" required>
      Quantity
      <input type="text" placeholder="Enter Quantity" name="quantity"  required>
      Date
      <input type="text" placeholder="Enter Today's Date" name="date"  required>
       
      location
      <input type="text" placeholder="Enter location" name="location"  required>
      
       <p style="display:${visibleLolly}">Lolly</p>
      <input type="${inputRange}" min="0" max="${max }" name="userLolly" onchange="updateTextInput(this.value)" oninput="showVal(this.value)" >
      <input type="${outputValue}" id="textInput" value=""  readonly>
       
      <button id="buybutton" onclick="document.getElementById('id02').style.display='none';document.getElementById('id03').style.display='block'" type="submit" ><img src="${pageContext.request.contextPath}/resources/images/68-256.png" style="width:40px;height:40px;"> Order Now!</button>
     <!--  <label> <input type="checkbox" checked="checked">Remember me </label>
      <br> -->
       </div>

    <div class="containerM" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none';" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<script>
function updateTextInput(val){
	document.getElementById('textInput').value=val;
}
</script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/javascript/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/javascript/main.js"></script>

<script>

	

</script>
</body>
</html>