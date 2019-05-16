<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
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
	<title>Register</title>
	<style> 
.error{color:red}
</style>
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Registration</h2>
		</div>
	</div>

	<div id="container">
		<h3>Please fill in the form</h3>
		<p style="display:${show};color:red;">${passwordError}</p>
	
		<form:form action="${pageContext.request.contextPath}/userClass/userFormProcess" modelAttribute="user">
	<form:hidden path="UserId"/> 	
	
   First Name: <form:input path="firstName"/>
   <form:errors path= "firstName" cssClass="error"/>

	<br><br>

	Last Name (*): <form:input path="lastName"/>
	<form:errors path= "lastName" cssClass="error"/>
	<br> <br>
	Date Of Birth: <form:input path="dob"/>
	<form:errors path= "dob" cssClass="error"/>
	<br><br>	
	Gender:
	<br><br>
		Male<form:radiobutton path="gender" value = "male"/>
		Female<form:radiobutton path="gender" value = "female"/>
		Others<form:radiobutton path="gender" value = "others"/>
	<br><br>
	Location: <form:input path="location"/>
    <form:errors path= "location" cssClass="error"/>
	<br><br>	
	Contact Number: (+977) <form:input path="contactNumber"/>
	<form:errors path= "contactNumber" cssClass="error"/>
	<br><br>	
	E-mail Id: <form:input path="email"/>
   <form:errors path= "email" cssClass="error"/>
	<br><br>
	User name: <form:input path="userName"/>
    <form:errors path= "userName" cssClass="error"/>
	<br><br>
	Password: <form:input type="password" path="identifier"/>
   <form:errors path= "identifier" cssClass="error"/>
	<br><br>
	Confirm Password: <form:input type="password" path="confirmIdentifier"/>
   <form:errors path= "confirmIdentifier" cssClass="error"/>
	<br><br>
	
 
	
	<input type="submit" value = "Submit"/>
				
	
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










