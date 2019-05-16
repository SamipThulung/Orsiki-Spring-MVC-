<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">
	      
	 <link type ="text/css"
	      rel="stylesheet"
	      href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search.css">		
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navBar.css">	
	
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
 <p>Mens</p>
  <div class="swipeManual carouselStyle" style="width:100%">

<c:forEach var = "tempCustomer" items = "${list2}">
<img id="imgS" src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/service/measurement">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="Suits" />
					</c:url>
					<a type="button" href="${updateLink}" class="lin" >Check</a>

  
</c:forEach>

</div>	

<p>Ladies</p>
<div class="swipeManual carouselStyle" style="width:100%">

<c:forEach var = "tempCustomer" items = "${list1}">
<img id="imgS" src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/service/measurement">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="Suits" />
					</c:url>
					<a type="button" href="${updateLink}" class="lin" >Check</a>

  
</c:forEach>

</div>


 </div>

</div>

</body>
</html>