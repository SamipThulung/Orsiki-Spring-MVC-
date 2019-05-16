<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">	      
	 <link type ="text/css"
	      rel="stylesheet"
	      href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navBar.css">	
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search.css">		
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product</title>
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



<div class="container-fluid" >

<div class="nav">
<img src="${pageContext.request.contextPath}/resources/images/Sapra.jpg" style="height:50px;width:50;border-radius: 50%;border:0.5px solid black;padding:0;margin:5px"/>   
  <div class="nav-header">
    
    <div class="nav-title">
    
      Sapra
    </div>
    <div id="nav-search">
    <form id="searchForm" name="search" method="POST"  action="${pageContext.request.contextPath}/searchClass/pantSearch">
		  	<div id="search-box">
		   	 <input id="inputSearch" type="text" name="keyword"/>
		   	 <span></span>
		  	</div>
		  </form>
			</div>
			
  </div>
  
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
  <input type="checkbox" id="nav-check">
 
  <div class="nav-links">
    <a href="#" target="_blank">Home</a>
    <a href="#" target="_blank">About</a>
    <a href="#" target="_blank">Service</a>
    <a href="#" target="_blank">Portfolio</a>
    <a href="#" target="_blank">News</a>
    <div class="coin bronze" style="display:${visibleLolly}"><p>${lollyMoney}</p></div>
    <a target="_blank">
    <div id="nav-search">
    <form method="POST"  action="${pageContext.request.contextPath}/searchClass/pantSearch" id="searchForm" >
		  	<div id="search-box">
		   	 <input id="inputSearch" type="text" name="keyword" />
		   	 <span></span>
		  	</div>
		  </form>
			</div>
			<a type="button" onclick="document.getElementById('id02').style.display='block'" id="loginButton" style="display:${visibleLogin}"><img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:26px;display:inline;float:left;padding-right:3px;margin-left:4px;">${loginName }</a>
		
			<div class="logoutDropDown">
			<a type="button" onclick="logout()" id="logoutButton" style="display:${visibleLogout}"><img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:26px;display:inline;float:left;padding-right:3px;margin-left:4px;">${loginName }</a>
		
			  <div id="logout" class="dropdown-content-logout">
			    <a href="${pageContext.request.contextPath}/userClass/logout"><img src="${pageContext.request.contextPath}/resources/images/786_-_Logout-256.png" style="height:30px;width:30px;float:left;"> Logout</a>
			  </div>
</div>
<script>

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function logout() {
	
	var x = document.getElementById('logout');
	    if (x.style.display === "none") {
	    	 document.getElementById('logoutButton').style.background="#4CAF50"; 
	    	 document.getElementById('logoutButton').style.color="white";
	        x.style.display = "block";
	    } else {
	    	document.getElementById('logoutButton').style.background="#f7f8f9";
	    	document.getElementById('logoutButton').style.color="#4CAF50";
	        x.style.display = "none";
	    } 
}


</script>
	</a>
  </div>
     
  </div>










 
  <%--  <li class="nav-item" style="list-style:none;">
  <button class="btn btn-outline-success my-2 my-sm-0" onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:24px;">${loginName}</button>
  </li>
</nav> --%>
<div class="jumboContainer" background="${pageContext.request.contextPath}/resources/images/A21721.jpg">

<div id="main" Style="Margin-left:30%;">
<p>Place the cursor on the image to magnify</p>
<div class="item">
 <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/${img1}" style="height:500px;width:100%;">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/${img2}" style="height:500px;width:100%;">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/${img3}" style="height:500px;width:100%;">

</div>

  <div class="cont">
      <img class="sliderBelow" src="${pageContext.request.contextPath}/resources/images/${img1}" onclick="currentDiv(1)">


      <img class="sliderBelow" src="${pageContext.request.contextPath}/resources/images/${img2}"  onclick="currentDiv(2)">
 
   
      <img class="sliderBelow" src="${pageContext.request.contextPath}/resources/images/${img3}"  onclick="currentDiv(3)">

      
 </div>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}

</script>

<h1 style="font-size:23px">${brand}</h1>
<p style="margin-right:60%;">${msg}</p>
<p >${brand}</p>
<p >${gender}</p>
<p>${price}</p>
<div class="fb-messengermessageus" 
  messenger_app_id="153908238732751" 
  page_id="1694539674180125"
  color="white"
  size="standard">
</div>
<button class="buyButton" onclick="document.getElementById('id01').style.display='block'" style="width:auto;margin-left:15%;">
<img src="${pageContext.request.contextPath}/resources/images/68-256.png" style="height:35px;width:35px;"> Buy Now!</button>

<div id="id01" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/orderClass/addOrder" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="${pageContext.request.contextPath}/resources/images/${img}" alt="AntiTheft" class="avatar"  style="border-radius:60%;">
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
       
      <button id="buybutton" onclick="document.getElementById('id01').style.display='none';document.getElementById('id03').style.display='block'" type="submit" ><img src="${pageContext.request.contextPath}/resources/images/68-256.png" style="width:40px;height:40px;"> Order Now!</button>
     <!--  <label> <input type="checkbox" checked="checked">Remember me </label>
      <br> -->
       </div>

    <div class="containerM" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none';" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<script>
function updateTextInput(val){
	document.getElementById('textInput').value=val;
}
</script>


<div id="id02" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/userClass/login" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="${pageContext.request.contextPath}/resources/images/people.png" alt="Avatar" class="avatar">
    </div>

    <div class="containerM">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button id="butt1" onclick="window.location.href='login'" type="submit">Login</button>
     <!--  <label> <input type="checkbox" checked="checked">Remember me </label>
      <br> -->
       Dont have an account? Sign up with us <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="window.location.href='${pageContext.request.contextPath}/customer/registerButton';return false;" class="cancelbtn">Register</button>
    </div>

    <div class="containerM" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>






<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}




</script>

<script>
//Get the modal
var modal1 = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
    </script>

</div>
</div>

<footer class="footer">
  <div class="footer-left col-md-4 col-sm-6">
    <p class="about">
      <span> About the company</span> We here at Sapra recognize our customer needs and try to put our best effort to give customer satisfaction. We are here to give you pleasent online shopping experience to remember. </p>
    <div class="icons">
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/facebook.png" style="height:40px;width:40;"/></a>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/Instagram-256.png" style="height:40px;width:40;"/></a>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/077_twitter-256.png" style="height:40px;width:40;"/></a>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/3_social-256.png" style="height:40px;width:40;"/></a>
      </div>
    
  </div>
  <div class="footer-center col-md-4 col-sm-6">
    <div>
      <i class="fa fa-map-marker"></i>
      <p><span> Baneshor and 90878</span> Kathmandu, Nepal</p>
    </div>
    <div>
      <i class="fa fa-phone"></i>
      <p> (+001) 980 434 2022</p>
    </div>
    <div>
      <i class="fa fa-envelope"></i>
      <p><a href="#"> <img src="${pageContext.request.contextPath}/resources/images/Gmail.png" style="height:40px;width:40;"/>sapra@gmail.com</a></p>
    </div>
  </div>
  <div class="footer-right col-md-4 col-sm-6">
    <h2> Sapra<span> </span><img src="${pageContext.request.contextPath}/resources/images/Sapra.jpg" style="height:50px;width:50;"/></h2>
    <p class="menu">
      <a href="#"> Home</a> |
      <a href="#"> About</a> |
      <a href="#"> Services</a> |
      <a href="#"> Portfolio</a> |
      <a href="#"> News</a> |
      <a href="#"> Contact</a>
    </p>
    <p class="name"> Sapra &copy; 2016</p>
  </div>
</footer>

</body>
</html>