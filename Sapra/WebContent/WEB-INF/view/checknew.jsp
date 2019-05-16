<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
        Brand: ${brand}<br>
        Description: ${msg}<br>
        Gender = ${gender}<br>
        Price = Rs. ${price}<br>
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

<!-- modal start -->
<div id="id02" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/orderClass/addOrder" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
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


<div id="id01" class="pop">
  
  <form class="pop-content animate" action="${pageContext.request.contextPath}/userClass/login" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
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
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>






<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}




</script>

<script>
//Get the modal
var modal1 = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
    </script>
<!-- modal ends -->
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

</body>

</html>