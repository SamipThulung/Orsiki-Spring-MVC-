<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

	<title>Save Customer</title>

	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">	      
	 <link type ="text/css"
	      rel="stylesheet"
	      href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navBar.css">	
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search.css">	  
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
    <a target="_blank">
    <div id="nav-search">
    <form method="POST"  action="${pageContext.request.contextPath}/searchClass/pantSearch" id="searchForm" >
		  	<div id="search-box">
		   	 <input id="inputSearch" type="text" name="keyword" />
		   	 <span></span>
		  	</div>
		  </form>
			</div>
			<a type="button" onclick="document.getElementById('id02').style.display='block'" id="loginButton"><img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:26px;display:inline;float:left;padding-right:3px;margin-left:4px;">${loginName }</a>
			</a>
	
  </div>
     
  </div>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>
	
		
		<div id="tfheader">
		<form  method="get" action="${pageContext.request.contextPath}/customer/search">
		        Search: <input type="text" name="Result" size="21" maxlength="120"><input type="submit" value="search" >
		</form>
	<div class="tfclear"></div></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
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










