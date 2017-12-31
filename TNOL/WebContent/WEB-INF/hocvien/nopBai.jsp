<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Thi trac nghiem online</title>
<!--     <link rel="stylesheet" type="text/css" href="style3.css"/> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<style type="text/css">

	.tbl1{position:fixed; top:250px; left:1100px; width:250px; height:200px}
	.dongho{border-radius: 7px; font-size:28px}
	</style>	
</head>

<body>
	<div id="model" style="background-color: DarkGrey;width: 1349px;height:1900px">
			<form action="hocVien_lichThi" id="formBD" style="position:fixed;top:200px;left:400px;width:500px;background-color: #fff;height:300px;border-radius:10px">
				<b style="position:relative;top:80px;left:60px;font-size:35px"><u>Điểm thi</u>: <fmt:formatNumber value="${requestScope.tongDiem}" maxFractionDigits="1"/>/10</b>
				<button type="submit" class="btn" style="position:fixed;top:400px;left:720px;font-size:25px;width:150px">Ok</button>
			</form>
	</div>
</body>
</html>