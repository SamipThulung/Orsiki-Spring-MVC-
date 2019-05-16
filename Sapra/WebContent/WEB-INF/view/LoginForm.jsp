<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Login Form</title>
<link type ="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginForm.css">
</head>
<body>

<div class="login">
	<h1>Login</h1>
	<p style="display:${show};color:red;">${userNotFoundError }</p>
    <form action="${pageContext.request.contextPath}/userClass/login" method="POST">
    	<input type="text" name="uname" placeholder="Username" required="required" />
        <input type="password" name="psw" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
    </form>
</div>
</body>
</html>