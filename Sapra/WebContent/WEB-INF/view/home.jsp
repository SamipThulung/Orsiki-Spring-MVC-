<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<html>
<head>
<title>Oriski</title>
	
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/test.css">
  <link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/four.css'>
  
	<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginbutton.css">
	      
	
		
	
  
  <style>
     
     *{
      padding: 0px;
      margin:0px;
      box-sizing: border-box;
      user-select: none;
     }

     .header{
       width: 100%;
       height:15%;
       background-image:url(back.jpg);
       background-size: cover;
       margin-left: 0;

     }

     .navbar{
      width: 100%;
      height: 102px;
      position: fixed;
      top: 0px;
      text-align: center;
      transition: .5s;
      background-color: #eaecee;
      box-shadow: 4px 2px 34px -7px black;
      z-index:1;
     }
    

     #navLink{
      clear: both;
      float: right;
      margin-right: 20px;
     }



     #navLink a{
      text-decoration: none;
      color: #2b111b;
      font-size: 20px;
      padding: 9px;
      font-family: Times New Roman;
     }

     #navLink a:hover{
      color: #fff;
      background: #14122e;
      border-radius: 10%;
     }


     .logoX{
      display: inline-block;
      float: left;

     }

     /* ------------------------------------------------------logo img ---------------------------------------------------------------*/

     #logo{
      height: 50px;
      width: 50px;
      margin-right: 5px;
      margin-top: 5px;
      margin-left : 5px;
      border-radius: 100%;
     }
     /*--------------------------------------------------- logo image rotate -------------------------------------------------------*/

     #trademark:hover img{/* oile yo .navbar class ma hover huda rotate hunxa but paxi .container class ma hover garda hune banau paxi */
      transform: perspective(2000px) rotateY(360deg);
    transition: transform 1s linear 100ms;
     }


     .logoTitle{
      display: inline;
      font-size: 50px;
      color: #C00;
      float: left;
      padding: 0 10px 10px 0px;
      font-family: Brush Script MT, Brush Script Std, cursive;
     }



     .search-form{
      margin-top: 15px;
      display: inline-block;
      margin-right: 100px;
      margin-left: 10px;
      float: left;
     }

     /*------------------------------------------------ search button -----------------------------------------------*/
     
     .formX button{
      background: gray;
      color: white;
      border-radius: 0 20px 0 0;
      cursor: pointer;
      height: 42px;
      font-size: 20px;
      width: 99px;
      display: inline-block;
      box-shadow: 4px 2px 34px -7px black;
     }

     #searchField {
      height: 40px;
      width: 600px;
      display: inline-block;
      border-radius: 0 0 0 20px;
      margin-left: 10px;
      font-size: 16px;
      text-indent: 9px;
      /*box-shadow: 4px 2px 34px -7px black;*/
      box-shadow: -4px 19px 128px -15px #0099ff;
      transition: .5s;
      }

      
      .box{
        width: 80%;
        height: 2000px;
        background: green;
        margin: 20px auto;
      }

      /*------------------------------------------ loli --------------------------------------------------------*/

  .coin p{
    font-family: georgia;
    font-style: italic;
    position: absolute;
    font-size: 15px;
    z-index: 700;
    top: 15px;
    left: 12px;
    }

  .coin.bronze p{
    color: rgba(223,182,103,1);
  }

  .coin{
    cursor: pointer;
    content: "";
    width: 52px; 
    height: 52px;
    display: inline-block;
    position: relative;
    margin-left: 0%;
    margin-top: 8px;
    border-radius: 50px;
    z-index: 500;
    box-shadow:  2px 2px 2px 1px rgba(0, 0, 0, .1);
    }

  .coin:after{
    content: "";
    width: 42px; 
    height: 42px;
    display: block;
    top: 4px;
    left: 4px;
    position: absolute;
    border-radius: 50px;
    z-index: 600;
    }

  .coin:before{
    content: "";
    width: 50px; 
    height: 50px;
    display: block;
    position: absolute;
    border-radius: 50px;
    z-index: 500;
    }

  .coin:hover{
    top: -4px;
    transition: all .5s ease-in-out;
    box-shadow:  0px 0px 5px 1px rgba(0, 0, 0, .2);
    }

  .bronze{
    background: linear-gradient(45deg,  rgba(223,182,103,1) 0%,rgba(249,243,232,1) 56%,rgba(231,192,116,1) 96%); 
    }

  .bronze:before{
    background: linear-gradient(135deg,  #d19c35 0%,#f7e6c5 50%,#e8b558 100%);
    border: 1px solid #e6b86a;
    }

  .bronze:after{
    background: linear-gradient(45deg,  rgba(223,182,103,1) 0%,rgba(249,243,232,1) 56%,rgba(231,192,116,1) 96%);
    border-top: 1px solid rgba(255,255,255,0.3);
    border-left: 1px solid rgba(255,255,255,0.3);
    border-bottom: 1px solid rgba(209,156,53,0.3);
    border-right: 1px solid rgba(209,156,53,0.5);
    box-shadow: inset 0px 0px 2px 2px rgba(153, 106, 26, .05);
    }

  .bronze:hover:after{
    background: linear-gradient(45deg,  rgba(223,182,103,1) 0%,rgba(249,243,232,1) 41%,rgba(231,192,116,1) 96%);
    border-top: 1px solid rgba(255,255,255,0.3);
    border-left: 1px solid rgba(255,255,255,0.3);
    border-bottom: 1px solid rgba(209,156,53,0.3);
    border-right: 1px solid rgba(209,156,53,0.5);
    box-shadow: inset 0px 0px 2px 2px rgba(153, 106, 26, .05);
    }

    .profileX{
      
    }

    .profileX:hover{
      background: green;
      color: white;
    }

    @media only screen and (max-width: 1024px) and (min-width: 375px){
      #searchField {
        height: 40px;
        width: 370px;
        display: inline-block;
        border-radius: 0 0 0 20px;
        margin-left: 10px;
        font-size: 16px;
        text-indent: 9px;
        /*box-shadow: 4px 2px 34px -7px black;*/
        box-shadow: -4px 19px 128px -10px #0099ff;
        transition: .5s;
      }
      .header{
        height: 10%;
      }

    }


</style>
		
	</head>
<body>

  <!-- Navigation bar start -->
  <div class="header">
   
   <div class="navbar" id='nav'>

    <a href="#">
      <div id="trademark">
        <logo class="logoX">
          <img id="logo" src="${pageContext.request.contextPath}/resources/images/oriski.jpg">
        </logo>
        <div class="logoTitle">
          Oriski
        </div>
      </div>
    </a>

      <div class="formX" id="searchX">
            <form class="search-form"  action="${pageContext.request.contextPath}/searchClass/pantSearch">
              
                <input id="searchField" type="text" placeholder="Enter Search Key" name="keyword"><!--   
              
              
               --><button>Search</button>
            </form>   
      </div>  
              <div class="coin bronze" id="coinX" style="display:${visibleLolly};"><p>${lollyMoney}</p></div>

              
              <button id="loginButton" class="llbtn" onclick="document.getElementById('id01').style.display='block'" style="display:${visibleLogin}">
              <img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:26px;display:inline;float:left;padding-right:3px;margin-left:4px;"> 
              ${loginName }</button>
              
              <button id="logoutButton" class="llbtn" onclick="logout()" style="display:${visibleLogout}">
              <img src="${pageContext.request.contextPath}/resources/images/310869.png" style="height:24px;width:26px;display:inline;float:left;padding-right:3px;margin-left:4px;"> 
              ${loginName }</button>
              
              <a href="${pageContext.request.contextPath}/userClass/logout">
              <div id="logout"  style="z-index:5;border:1px solid black;width:100px;float:right;background-color:white;display:none;">
			    
			    <img src="${pageContext.request.contextPath}/resources/images/786_-_Logout-256.png" style="height:30px;width:30px;"><!--  
			     -->Logout
			
			  </div>
			  </a>
              <script>

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function logout() {
	
	var x = document.getElementById('logout');
	var navl = document.getElementById('navLink')
	    if (x.style.display === "none") {
	    	 document.getElementById('logoutButton').style.background="#4CAF50"; 
	    	 document.getElementById('logoutButton').style.color="white";
	        x.style.display = "inherit";
	        x.style.margin = "0px 30px 0 5px";
	        
	        navl.style.display = "none";
	    } else {
	    	document.getElementById('logoutButton').style.background="#f7f8f9";
	    	document.getElementById('logoutButton').style.color="#4CAF50";
	        x.style.display = "none";
	        navl.style.display = "inline-block";
	    } 
}


</script>

              <div id="navLink">
                  <a href="#">About Us</a></li>
                    |
                    <a href="#">Services</a>
                    |
                    <a href="#">News</a>
                    |
                    <a href="#">Portfolio</a>
                    |
                    <a href="#">Contact Us</a>    
                </div>
  </div>

</div>




<!-- -----------------------             javascript code for scroll --------------------------------------------------------->

   <script type="text/javascript">
    
     var  navLinkX = document.getElementById('navLink');
     var  nav = document.getElementById('nav');
     var  searchFild = document.getElementById('searchField');
      
      window.onscroll = function(){

        if (window.pageYOffset >100) {

          navLinkX.style.display = "none";
          searchFild.style.margin = "0 0 0 60px";
          coinX.style.margin = "8px 0 0 0%";
          nav.style.height = "70px";
        }
        else{
          navLinkX.style.display = "inline-block";
          searchFild.style.margin = "0 0 0 10px";
          coinX.style.margin = "8px 0 0 0%";
          nav.style.height = "102px"
        }
      }

</script>


<!-- add css style -->


  <!-- Navigation bar ends -->

  <!-- For categroy -->
  <div >
  <div class="navtala" style="margin-top:105px;">
    <table class="table1">
      <tr>
        <th>Product</th>
      </tr>
      <tr>
        <td>
          <a>Men</a>
          <ul>
             <li><a href="${pageContext.request.contextPath}/product/gentsUpper">Men Upper</a></li>
             <li><a href="${pageContext.request.contextPath}/product/gentsLower">Men Lower</a></li>
             <li><a href="${pageContext.request.contextPath}/product/gentsShoes">Men Shoes</a></li>
          </ul>
        </td>
      
      </tr>
      <tr >
        <td >
          <a>Women</a>
          <ul>
             <li><a href="${pageContext.request.contextPath}/product/ladiesUpper" >Womens Upper</a></li>
             <li><a href="${pageContext.request.contextPath}/product/ladiesLower">Women Lower</a></li>
             <li><a href="${pageContext.request.contextPath}/product/ladiesShoes">Women Shoes</a></li>
          </ul>
        </td>
      </tr>
      <tr >
        <td >
          <a>Musicals</a>
          <ul>
             <li><a href="${pageContext.request.contextPath}/product/mi" >Instruments</a></li>
             <li><a href="${pageContext.request.contextPath}/product/ma">Acessories</a></li>
          </ul>
        </td>
      </tr>
      <tr >
        <td >
          <a>Gifts </a>
          <ul>
             <li><a href="#">Flower</a></li>
             <li><a href="#">Cards</a></li>
             <li><a href="#">Cups</a></li>
             <li><a href="#">Bracelets</a></li>
          </ul>
        </td>
      </tr>
      <tr >
        <td >
          <a>Cosmetics</a>
          <ul>
             <li><a href="#">Hair</a></li>
             <li><a href="#">Face</a></li>
             <li><a href="#">Body</a></li>
          </ul>
        </td>
      </tr>
      <tr >
        <td >
          <a>Bags</a>
          <ul>
             <li><a href="#" >Men</a></li>
             <li><a href="#">Women</a></li>
          </ul>
        </td>
      </tr>
      <tr >
        <td >
          <a>Electronics</a>
          <ul>
             <li><a href="#" >Television</a></li>
             <li><a href="#">Mobile Phones</a></li>
             <li><a href="#">Laptops & Desktops</a></li>
             <li><a href="#">Cameras</a></li>
             <li><a href="#">Gamings</a></li>

          </ul>
        </td>
      </tr>
       <tr >
        <td class="lastcategory">
          <a>Sports</a>
          <ul >
             <li><a href="#" >Football</a></li>
             <li><a href="#">Basketball</a></li>
             <li><a href="#">Volleyball</a></li>
             <li><a href="#">Table Tennis</a></li>
     

          </ul>
        </td>
      </tr>

    </table>

   <div class="mobileViewTable" >
     <h3>Products</h3>
     <div class="mobileViewTableProduct">
        <h4>Men</h4>
         <ul>
           <li><a href="${pageContext.request.contextPath}/product/gentsUpper">Men Upper</a></li>
           <li><a href="${pageContext.request.contextPath}/product/gentsLower">Men Lower</a></li>
           <li><a href="${pageContext.request.contextPath}/product/gentsShoes">Men Shoes</a></li>
         </ul>
         <h4>Women</h4>
         <ul>
           <li><a href="${pageContext.request.contextPath}/product/ladiesUpper">Women Upper</a></li>
           <li><a href="${pageContext.request.contextPath}/product/ladiesLower">Women Lower</a></li>
           <li><a href="${pageContext.request.contextPath}/product/ladiesShoes">Women Shoes</a></li>
         </ul>
         <h4>Musicals</h4>
         <ul>
           <li><a href="${pageContext.request.contextPath}/product/mi">Instruments</a></li>
           <li><a href="${pageContext.request.contextPath}/product/ma">Acessories</a></li>
         </ul>
         <h4>Gifts And Toys</h4>
         <ul>
           <li><a href="">Flowers</a></li>
           <li><a href="">Cards</a></li>
           <li><a href="">Cups</a></li>
           <li><a href="">Bracelets</a></li>
         </ul>
         <h4>Cosmetics</h4>
         <ul>
           <li><a href="">Hair</a></li>
           <li><a href="">Face</a></li>
           <li><a href="">Body</a></li>
         </ul>
         <h4>Bags</h4>
         <ul>
           <li><a href="">Men</a></li>
           <li><a href="">Women</a></li>
     
         </ul>
         <h4>Electronics</h4>
         <ul>
           <li><a href="">Television</a></li>
           <li><a href="">Mobile Phones</a></li>
           <li><a href="">Laptops and Desktop</a></li>
           <li><a href="">Camera</a></li>
           <li><a href="">Gaming</a></li>
         </ul>
         <h4>Sports</h4>
         <ul>
           <li><a href="">Football</a></li>
           <li><a href="">Basketball</a></li>
           <li><a href="">Volleyball</a></li>
           <li><a href="">Table Tennis</a></li>
         </ul>


       </div>

       <h3>Services</h3>
     <div class="mobileViewTableService">
        <ul>
             <li><a href="">Tailoring</a></li>
             <li><a href="">Mobile Repairing</a></li>
         </ul>
     </div>
   </div>

    <table class="table2" >
      <tr>
        <th>Trending</th>
      </tr>
      <tr>
        <td class="tableimg">
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
        </td>
      </tr>
    </table>

    <table class="table3" >
      <tr>
        <th>Service</th>
      </tr>
      <tr>
        <td> 
          <a>Tailoring </a>
        </td>
      </tr>
      <tr>
        <td class="lastcategory"> 
          <a>Mobile Repairing </a>
        </td>
      </tr>
    </table>
  </div>
</div>


<!-- For login modal start -->
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
<!-- for login modal end -->


<!-- For carousel -->
<h1 style="visibility: hidden;">Samip</h1>




<div class="carousel" >
  <div class="description">
  <h3>Laptop</h3>
	</div>

  
    <c:forEach var = "tempCustomer" items = "${customers}">
    <div class="container" style="clear:both" >
   
		<img  src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="customers" />
					</c:url>
					
					<a href="${updateLink}"><button class="btn" >Check</button></a>
			
  </div>
  
  
</c:forEach>
    
</div>
<br>

<div class="carousel" >
  <div class="description">
  <h3>Mobile</h3>
	</div>

  
    <c:forEach var = "tempCustomer" items = "${sklo}">
    <div class="container" style="clear:both" >
   
		<img  src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="sklo" />
					</c:url>
					
					<a href="${updateLink}"><button class="btn" >Check</button></a>
			
  </div>
  
  
</c:forEach>
    
</div>

<div class="carousel" >
  <div class="description">
  <h3>Sung</h3>
	</div>

  
    <c:forEach var = "tempCustomer" items = "${jackets}">
    <div class="container" style="clear:both" >
   
		<img  src="${pageContext.request.contextPath}/resources/images/${tempCustomer.image1}" >

                    <c:url var="updateLink" value="/customer/check">
						<c:param name="Id" value="${tempCustomer.id}" />
						<c:param name="cate" value="jackets" />
					</c:url>
					
					<a href="${updateLink}"><button class="btn" >Check</button></a>
			
  </div>
  
  
</c:forEach>
    
</div>










<!-- Footer Start -->
<footer>
    <!-- Products link in footer -->
    <div class="firsthalf" >
        <div class="companyfooter" style="float: left; width: 20%;">
            <a href="#">
              <div id="trademark">
                <logo class="logoX">
                  <img id="logo" src="${pageContext.request.contextPath}/resources/images/oriski.jpg">
                </logo>
                <div class="logoTitle">
                  Oriski
                </div>
              </div>
             </a>
            <p style="color:white;font-family: Comic Sans MS;font-size: 13px;clear: both;">We here at Oriski recognize the needs of the Nepalese customer and have put together a site that is easy to use for our customer with the right amout of content. </p>
            <form>
                <input type="text" name="searchquery" style="height: 20px;margin-right:1px;float: left"><!-- 
                 --><button type="submit"><img src="search.png" width="20px" height="20"  ></button> 
            </form>
        </div>
        <div class="footertable" style="margin-left: 12px;">
          <h3>Men</h3>
          <ul>
            <li><a href="">Men Upper</a></li>
            <li><a href="">Men Lower</a></li>
            <li><a href="">Men Shoes</a></li>
          </ul>
        </div>
        <div class="footertable">
          <h3>Women</h3>
          <ul>
            <li><a href="">Women Upper</a></li>
            <li><a href="">Women Lower</a></li>
            <li><a href="">Women Shoes</a></li>
          </ul>
        </div>
        <div class="footertable">
          <h3>Musicals</h3>
          <ul>
            <li><a href="">Instruments</a></li>
            <li><a href="">Acessories</a></li>
   
          </ul>
        </div>
        <div class="footertable">
          <h3>Gifts & toys</h3>
          <ul>
            <li><a href="">Flowers</a></li>
            <li><a href="">Cards</a></li>
            <li><a href="">Cups</a></li>
              <li><a href="">Bracelets</a></li>
          </ul>
        </div>
        <div class="footertable">
          <h3>Cosmetics</h3>
          <ul>
            <li><a href="">Hair</a></li>
            <li><a href="">Face</a></li>
            <li><a href="">Body</a></li>
          </ul>
        </div>
        <div class="footertable">
          <h3>Bags</h3>
          <ul>
            <li><a href="">Men</a></li>
            <li><a href="">Women</a></li>
          </ul>
        </div>
        <div class="footertable">
          <h3>Electronics</h3>
          <ul>
            <li><a href="">Televisions</a></li>
            <li><a href="">Mobile Phones</a></li>
             <li><a href="">Laptop and Desktops</a></li>
            <li><a href="">Cameras</a></li>
             <li><a href="">Gaming</a></li>
            
          </ul>
        </div>
        <div class="footertable">
          <h3>Sports</h3>
          <ul>
            <li><a href="">Football</a></li>
            <li><a href="">Basketball</a></li>
             <li><a href="">Volleyball</a></li>
            <li><a href="">Table Tennis</a></li>
          </ul>
        </div>
</div>

    
    <div class="lasthalf">
        <div class="rightslinks" align="left">
            <a href="">&copy; 2018 Oriski Inc.</a> |
            <a href="">Sitemap</a> |
            <a href="">Privacy Policy</a> |
            <a href="">Disclamer</a> |
        </div><div class="socialmedia" >

            <a href="#"><img src="${pageContext.request.contextPath}/resources/images/facebook.png" style="height:40px;width:40;"/></a>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/Instagram-256.png" style="height:40px;width:40;"/></a>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/077_twitter-256.png" style="height:40px;width:40;"/></a>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/images/3_social-256.png" style="height:40px;width:40;"/></a>
            
        </div>
    </div>

    
</footer>
<!-- Footer Ends -->

</body>
</html>


