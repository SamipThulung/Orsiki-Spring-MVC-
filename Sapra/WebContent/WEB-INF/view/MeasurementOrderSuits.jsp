<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-120249425-1"></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'UA-120249425-1');
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Suit Measurement</title>
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">
	      
	 <link type ="text/css"
	      rel="stylesheet"
	      href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search.css">		
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navBar.css">	
	
		<style> 
.error{color:red}
</style>
</head>
<body>

<div class="container-fluid">


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
		   	 <input  id="inputSearch" type="text" name="keyword" />
		   	 <span></span>
		  	</div>
		  </form>
			</div>
			<a type="button" onclick="document.getElementById('id01').style.display='block'" id="loginButton" style="display:${visibleLogin}"><img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:26px;display:inline;float:left;padding-right:3px;margin-left:4px;">${loginName }</a>
		
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
  
  
  
  
  <div id="id01" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/userClass/login" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="${pageContext.request.contextPath}/resources/images/E-001588-20120604.jpg" alt="Avatar" style="border-radius:50%;height:300px;width:300px;">
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
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
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


 <div class="jumboContainer ">
 
 <div id="main" Style="Margin-left:30%;">
<p>Place the cursor on the image to magnify</p>
<div class="item">
 <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/${img}" style="height:100%;width:100%;">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/cottonShirtBule.jpg" style="height:100%;width:100%;">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/Gmail.png" style="height:100%;width:100%;">
</div>

  <div class="cont">
      <img class="sliderBelow" src="${pageContext.request.contextPath}/resources/images/${img}" onclick="currentDiv(1)">


      <img class="sliderBelow" src="${pageContext.request.contextPath}/resources/images/cottonShirtBule.jpg"  onclick="currentDiv(2)">
 
   
      <img class="sliderBelow" src="${pageContext.request.contextPath}/resources/images/Gmail.png"  onclick="currentDiv(3)">
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

<h1 style="font-size:23px;">${brand}</h1>
<p >${msg}</p>
<p >${brand}</p>
<p >${gender}</p>
<div class="fb-messengermessageus" 
  messenger_app_id="153908238732751" 
  page_id="1694539674180125"
  color="white"
  size="standard">
</div>

<div id="id01" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/orderClass/addOrder" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="${pageContext.request.contextPath}/resources/images/${img}" alt="AntiTheft" class="avatar"  style="border-radius:60%;">
    </div>

    <div class="containerM">
      <input type="hidden" placeholder="Enter Username" value="${id}" name="productid"  readonly>
      <input type="hidden" placeholder="Enter Username" value="${type}" name="producttype"  readonly>
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
       
      <button id="buybutton" onclick="document.getElementById('id01').style.display='none';document.getElementById('id03').style.display='block'" type="submit" ><img src="${pageContext.request.contextPath}/resources/images/68-256.png" style="width:40px;height:40px;"> Order Now!</button>
     <!--  <label> <input type="checkbox" checked="checked">Remember me </label>
      <br> -->
       </div>

    <div class="containerM" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none';" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

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

 <div class="jumboContainer ">
 <h1>Measurement</h1>
<div style="padding-top:50px"align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/nwBniB9amJY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
<br><br>

 <form:form  modelAttribute="suitOrder"  action="${pageContext.request.contextPath}/service/measurementComplete"  style="margin-left:25%;margin-right:25%;width:40%;"  align="left" >
 <form:hidden path="id"/> 
  <form:input type="hidden" placeholder="Enter Username" value="${id}" path="productid"  />
      <form:input type="hidden" placeholder="Enter Username" value="suits" path="producttype"  />
      Username: <form:errors path= "username" cssClass="error"/>
      <form:input type="text" placeholder="Enter Username" value="${buying}" path="username" />
      
      Contact Number: <form:errors path= "contactNumber" cssClass="error"/>
      <form:input type="text" placeholder="Enter Contact Number" value="${contact}" path="contactNumber" />
      
      Date: <form:errors path= "date" cssClass="error"/>
      <form:input type="text" placeholder="Enter Today's Date" path="date"  />
      
       
      location:<form:errors path= "location" cssClass="error"/>
      <form:input type="text" placeholder="Enter location" path="location" />
      
 
 
 <p>Blazzers</p>
 Shoulder to Hip Length:<br><form:input type="number" placeholder="Enter number" path="blazzerLength" />
 <form:errors path= "blazzerLength" cssClass="error"/><br>
 Chest Length: <br><form:input  type="number" placeholder="Enter number" path="chestLength" />
 <form:errors path= "chestLength" cssClass="error"/><br>
		   	 Shoulder Length:<br> <form:input  type="number" placeholder="Enter number" path="shoulderLength" />
		   	 <form:errors path= "shoulderLength" cssClass="error"/><br>
		   	 Sleeve Length:<br><form:input  type="number" placeholder="Enter number" path="sleeveLength" />
		   	 <form:errors path= "sleeveLength" cssClass="error"/><br>
		   	      <br><br>
		   	  <p>Pants</p>
		   	  Hip to Foot Length:<br><form:input  type="number" placeholder="Enter number" path="pantLength" />
		   	  <form:errors path= "pantLength" cssClass="error"/><br>
		   	  Waist Length:<br><form:input  type="number" placeholder="Enter number" path="waistLength" />
		   	  <form:errors path= "waistLength" cssClass="error"/><br>
		   	  Hip Length:<br><form:input type="number" placeholder="Enter number" path="hipLength" />
		   	  <form:errors path= "hipLength" cssClass="error"/><br>
		   	    
		   	  Thigh to Knee:<br><form:input  type="number" placeholder="Enter number" path="thighToKneeLength" />
		   	  <form:errors path= "thighToKneeLength" cssClass="error"/><br>
		   	     
		   	      

		   	 <input type="submit" value = "Submit"/>     

		 
		  
		 </form:form>


</div>


</div>

</div>

</body>
</html>