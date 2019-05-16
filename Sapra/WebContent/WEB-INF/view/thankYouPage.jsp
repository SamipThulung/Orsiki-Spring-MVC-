<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thanks you ${user}</title>
</head>
<body>
<h1>Thank you ${user}</h1>
<p>We thank you ${user} for choosing Sapra for your online shopping <br> Your product will be delevired within 2 days.<br>Note!: We will contact you if any of the provided information is not clear.<br>Again thank you and have a nice day.</p>

<br>
The total price: <strike>Rs. ${price } </strike> ${dp} (After Deduction)<br>
<p>${additionalLolly }</p><br><br>
<button class="btn btn-outline-success my-2 my-sm-0" onclick="window.location.href='${pageContext.request.contextPath}/customer/home'" type="submit"><img src="${pageContext.request.contextPath}/resources/images/home_house-256.png" style="height:40px;width:40px;"> Take Me back to home</button>
</body>
</html>