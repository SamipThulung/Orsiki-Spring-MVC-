<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

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
<title>Sapra Shopping</title>
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">
	      
	 <link type ="text/css"
	      rel="stylesheet"
	      href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search.css">		
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navBar.css">
		
	</head>
	
	<style>
	.mySlides{
	display:none;
	}
	</style>
<body>
<div class="container-fluid">
<div class="nav">
<img src="${pageContext.request.contextPath}/resources/images/Sapra.jpg" style="height:50px;width:50;border-radius: 50%;border:0.5px solid black;padding:0;margin:5px"/>   
  <div class="nav-header">
    
    <div class="nav-title">
    
    Oriski
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
    <div class="coin bronze" style="display:${visibleLolly};"><p>${lollyMoney}</p></div>
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
		
			  <div id="logout" class="dropdown-content-logout" style="margin-right:500px;">
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

  <div class="jumboContainer" id="hiddenSlide" >
  <p style="font-family:Open Sans;">${OwnerMessage}</p>
  <p style="font-family:Open Sans;font-size:20px:margin:16px 18px">${lollyMessage }</p>
  
  <div>
  	<table style="position:relative;width:30%;display:inline;" align="left">
  		<tr>
        	<th id="headerTable" >Products</th>
		</tr>
		     
      <tr class="dropdown" style="display:table;"> 
      	<td style="padding:14px 50px 14px 18px;" width="30%">
      		<a class="dropdownlink" href="#" >Mens</a>
    		<div class="dropdown-content" style="left:0;">
    			<a class="dropItem" href="${pageContext.request.contextPath}/product/gentsUpper">Uppers</a>
    			 <a class="dropdownItem" href="${pageContext.request.contextPath}/product/gentsLower">Lowers</a>
    			<a href="${pageContext.request.contextPath}/product/gentsShoes">Shoes</a>
  			</div>
  		</td>
  	</tr>
 
    <tr class="dropdown" style="display:table;position:relative"> 
    	<td style="padding:14px 28.5px 14px 18px;">
    		<a class="dropdownlink" href="#" >Womens</a>
    		<div class="dropdown-content" style="left:0;">
    			<a href="${pageContext.request.contextPath}/product/ladiesUpper">Top</a>
    			<a href="${pageContext.request.contextPath}/product/ladiesLower">Lowers</a>
   	  			<a href="${pageContext.request.contextPath}/product/ladiesShoes">Shoes</a>
  		</div>
  		</td>
  	</tr>
     
    <tr class="dropdown" style="display:table;"> 
    	<td style="padding:14px 6.8px 14px 18px;">
    		<a class="dropdownlink" href="#" >Musical</a>
    		<div class="dropdown-content" style="left:0;">
    			<a href="${pageContext.request.contextPath}/product/ma">Musical Accessories</a>
    			<a href="${pageContext.request.contextPath}/product/mi">Musical Instrument</a>
    
  			</div>
  		</td>
  	</tr>
     
    <tr class="dropdown" style="display:table;"> 
    	<td style="padding:14px 16px 14px 18px;">
    		<a class="dropdownlink" href="#" >Gifts,Toys</a>
    		<div class="dropdown-content" style="left:0;">
    			<a href="#">Flowers</a>
    			<a href="#">Cards</a>
    			<a href="#">Cups</a>
    			<a href="#">Bracelets</a>
  			</div>
  		</td>
  	</tr>
  	
  	<tr class="dropdown" style="display:table;"> 
  		<td style="padding:14px 21px 14px 18px;">
  			<a class="dropdownlink" href="#" >Cosmetics</a>
    		<div class="dropdown-content" style="left:0;">
   				<a href="#">Fidget spinner</a>
    			<a href="#">Zig shaw puzzle</a>
    			<a href="#">Shuttle board</a>
  			</div>
  		</td>
  	</tr>
  	
    <tr class="dropdown" style="display:table;">
    	<td style="padding:14px 51px 14px 18px;">
    		<a class="dropdownlink" href="#" >Bags</a>
    		<div class="dropdown-content" style="left:0;">
    			<a href="#">Classics</a>
    			<a href="#">Hipsters</a>
    			<a href="#">Shuttle board</a>
	  		</div>
	  	</td>
	 </tr>
	 
    <tr class="dropdown" style="display:table;"> 
    	<td style="padding:14px 14px 14px 18px;">
    		<a class="dropdownlink" href="#" >Electronics</a>
   			<div class="dropdown-content" style="left:0;">
    			<a href="#">Mobile</a>
    			<a href="#">Laptops</a>
   				<a href="#">Desktops</a>
 			</div>
 		</td>
 	</tr>
 	
    <tr class="dropdown" style="display:table;"> 
    	<td style="padding:14px 45px 14px 18px;">
    		<a class="dropdownlink" href="#" >Sports</a>
   			<div class="dropdown-content" style="left:0;">
    			<a href="#">Jerseys</a>
    			<a href="#">Shorts</a>
   				<a href="#">Shoes</a>
  			</div>
  		</td>
  	</tr>
</table>

<table id="trendingTable" style="width:60%;display:inline;" align="center">
 	<tr>
    	<th id="headerTable" >Trending!!</th>
  	</tr>
  	<tr>
    	<td>   
  			<div class="w3-content w3-section" >
 				<a href="${pageContext.request.contextPath}/customer/trending1"> <img id="trendingImg"class="mySlides w3-animate-top" src="${pageContext.request.contextPath}/resources/images/${trending0}" style="width:650px;height:600px;" >  </a>
  				<a href="${pageContext.request.contextPath}/customer/trending2"> <img id="trendingImg"class="mySlides w3-animate-top" src="${pageContext.request.contextPath}/resources/images/${trending1}" style="width:650px;height:600px;"> </a>
 				 <a href="${pageContext.request.contextPath}/customer/trending3"> <img id="trendingImg" class="mySlides w3-animate-top" src="${pageContext.request.contextPath}/resources/images/${trending2}" style="width:650px;height:600px;"></a>
  			 </div>  
		   <script>
		   var myIndex = 0;
		   carousel();
		   function carousel(){
		   	var i;
		   	var x = document.getElementsByClassName("mySlides");
		   	for(i=0; i<x.length; i++){
		   		x[i].style.display = "none";
		   	}
		   	myIndex++;
		   	if(myIndex > x.length){myIndex = 1}
		   	x[myIndex-1].style.display = "block";
		   	setTimeout(carousel,2500)
		   }
		  </script> 
  		</td>	  	</tr>
</table>

 <table style="width:20%;display:inline;margin-left:-9%;" align="right">
  	<tr>
        <th id="headerTable" >Services</th>
	</tr>       
    <tr> 
    	<td style="padding:14px 18px;">
    		<a href="${pageContext.request.contextPath}/service/tailor" class="service" >Suits Tailoring</a>
    	
    	    </tr>
    <tr >    
    	<td style="padding:14px 18px;">
    		<a href="${pageContext.request.contextPath}/service/mobileRepairing" class="service">Mobile Repairing</a>
    	</td>
    </tr>
</table>

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

 <div class="swipeManual carouselStyle" style="width:100%">

<c:forEach var = "tempCustomer" items = "${customers}">
<img id="imgS" src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="customers" />
					</c:url>
					<a type="button" href="${updateLink}" class="lin" >Check</a>

  
</c:forEach>

</div>	
<div style="background-color:rgba(0,100,0,0.1);width:100%;border-left: 0.1em solid green;border-left: 0.1em solid green;border-right: 0.1em solid green;border-bottom: 0.1em solid green;margin-bottom:2em;margin-top:-2.4em;border-radius: 8px;z-index:1;padding:16px 18px;">


</div> 



<div id="carousel" class="swipeManual carouselStyle" style="width:100%">

<c:forEach var = "tempCustomer" items = "${sklo}">

<img id="imgS" src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="sklo" />
						
					</c:url>
					<a type="button" href="${updateLink}" class="lin">Check</a>

   


</c:forEach>		 
</div>
<div style="background-color:rgba(0,100,0,0.1);width:100%;border-left: 0.1em solid green;border-left: 0.1em solid green;border-right: 0.1em solid green;border-bottom: 0.1em solid green;margin-bottom:2em;margin-top:-2.4em;border-radius: 8px;z-index:1;padding:16px 18px;">


</div> 

<div class="swipeManual carouselStyle" style="width:100%">

<c:forEach var = "tempCustomer" items = "${jackets}">


                    <c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="jackets" />
					</c:url>
					<img id="imgS" src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >
					<a type="button" href="${updateLink}" class="lin">Check</a>

   


</c:forEach>
</div>
<div style="background-color:rgba(0,100,0,0.1);width:100%;border-left: 0.1em solid green;border-left: 0.1em solid green;border-right: 0.1em solid green;border-bottom: 0.1em solid green;margin-bottom:2em;margin-top:-2.4em;border-radius: 8px;z-index:1;padding:16px 18px;">


</div> 




 <!-- <a href="registerButton">Run</a> -->
 <input type="button" value = "Run"
				onclick="window.location.href='registerButton';return false;"
				Class = "add-button" 
				/>
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



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
</body>
</html>
