<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if>
<!DOCTYPE html>
<html lang="vi">
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
.tbl1{width:100px}
.tbl2{width:600px}
.btn{position:fixed; top:73px; left:1000px;border-radius: 10px}
.btn:hover{color:Maroon;background-color: LightSlateGrey;border-radius: 10px}
</style>
</head>

<body>
	<div id="model" style="background-color: DarkGrey;width: 1349px;height:700px">
		<form style="position:fixed; top:50px; left:70px;width:1210px;height:500px; background-color: #fff; border-radius:20px">
			<div style="position:relative; padding:60px;padding-top:80px; font-size:27px">
					<b style="color:#800000"><u>Câu hỏi</u>: ${requestScope.cauHoi.getNoiDungCauHoi()}</b><br><br>
					
	  			<c:forEach items="${requestScope.listDapAnTheoMaCauHoi }" var="da">
				<c:if test="${da.isDapAnDung()}">
					<label class="radio-inline"><input checked type="radio"name="${ch.getMaCauHoi() }" value="${da.getMaDapAn() }" disabled="disabled"><b>${da.getTenDapAn() }</b></label> <br>
				</c:if>
				<c:if test="${da.isDapAnDung()==false}">
					<label class="radio-inline"><input type="radio"name="${ch.getMaCauHoi() }" value="${da.getMaDapAn() }" disabled="disabled"><b>${da.getTenDapAn() }</b></label> <br>
				</c:if>
				</c:forEach>
				<br><br>
				<h2 style="margin-left:500px"><u style="color:Navy;font-size:25px">Người tạo câu hỏi</u>: ${requestScope.tenNguoiTaoCauHoi }</h2>
	  		</div>
		</form>
	</div>
	<form action="nqlch_cauHoiList">
	<button type="submit" onclick="getBack()" class="btn" style="font-size:25px;width:150px">Trở về</button>
	</form>	
</body>
</html>