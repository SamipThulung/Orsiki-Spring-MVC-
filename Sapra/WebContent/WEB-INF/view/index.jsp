<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/img/input" method="post" enctype="multipart/form-data"> 

	<input type="text" name="name" placeholder="name"><br>
	<input type="text" name="gender" placeholder="gender"><br>
	<input type="text" name="description" placeholder="description"><br>
	<input type="text" name="image1" placeholder="image1"><br>
	<input type="text" name="image2" placeholder="image2"><br>
	<input type="text" name="image3" placeholder="image3"><br>
	<input type="text" name="image4" placeholder="image4"><br>
	<input type="text" name="price" placeholder="price"><br>
	<input type="text" name="productType" placeholder="productType"><br>
	<input type="text" name="subType" placeholder="subType"><br>
	<input type="text" name="cp" placeholder="cp"><br>
	<input type="submit"/>
</form>
<br>
<br>
<a type="button" href="${pageContext.request.contextPath}/img/logout" class="lin" >logout</a> 
</body>
</html>