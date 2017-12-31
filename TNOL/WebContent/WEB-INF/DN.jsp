<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Thi trac nghiem online</title>
<!--     <link rel="stylesheet" type="text/css" href="style3.css"/> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<style type="text/css">
<style>
#model {
	width: 1349px;
	height: 900px
}

.nen {
	opacity: 0.5;
	position: relative;
	left: 0px;
	top: 0px;
	max-width: 100%
}

.jumbotron {
	position: relative;
	top: -900px;
	width: 100%;
	opacity: 0.5;
	font-size: 50px
}

.DangNhap {
	position: relative;
	top: -890px;
	left: 350px;
	width: 600px;
	height: 400px;
	font-size: 20px;
	background: DarkSeaGreen;
	opacity: 0.7;
	border-radius: 10px
}

.form-control {
	width: 50px
}

#DN {
	margin-top: -45px
}

.radio-inline {
	margin-left: 50px
}

.SingIn {
	margin-left: 220px;
	margin-top: 50px;
	padding-left: 20px;
	padding-bottom: 5px;
	padding-top: 5px;
	padding-right: 20px;
	font-size: 20px;
	border-radius: 10px
}

.radio-inline1 {
	margin-left: 55px;
	position:relative;
	top:0px
}

.input-group {
	padding-left: 45px
}

label.error {
	display: inline-block;
	color: #556B2F;
	width: 600px;
	position: fixed;
	left: 00px;
	font-size: 18px;
	position: relative;
	left: -447px;
	top: 40px
}
.SingIn{position:relative;top:0px}
#mess{position:relative;left:10px;top:40px;color:red}
</style>
</head>

<body>
	<div id="model" style="width: 1349px; height: 800px">
		<img src="image/nenDN1.jpg" class="nen">
		<div class="jumbotron text-center">
			<br> <b>TRẮC NGHIỆM ONLINE</b> <br>
		</div>

		<div class="DangNhap">
			<div class="container">
				<br>
				<form action="login" method="post" id="DangNhapValidate">
						<label class="radio-inline"><input checked="checked" type="radio"
						name="optradio" value="3">Học viên</label>
						<label class="radio-inline"
						style="margin-left: 155px"><input type="radio"
						name="optradio" value="1">Người quản lý câu hỏi</label><br> 
						<label
						class="radio-inline"><input type="radio" name="optradio" value="2">Người
						quản lý đề thi</label> 
						<label class="radio-inline"
						style="margin-left: 50px"><input type="radio"
						name="optradio" value="4">Admin</label> <br> <br>

					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input type="text"
							class="form-control" name="username" placeholder="Username"
							style="width: 450px">
					</div>
					<br>
					<br>
					<div class="input-group" >
						<span class="input-group-addon">
						<i class="glyphicon glyphicon-lock"></i></span> <input type="password"
							class="form-control" name="pwd" placeholder="Password"
							style="width: 450px"  />
							
					</div>
					<p id="mess"></p>
					<label class="radio-inline1"><input type="checkbox"
						name="optradio">Nhớ mật khẩu</label> <input type="submit"
						name="" value="Login" class="SingIn" />
				</form>

				<br>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
			//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
			$("#DangNhapValidate").validate(
					{
						rules : {
							username : "required",
							pwd : {
								required : true,
								minlength : 3
							}
						},
						messages : {
							username : "Vui lòng nhập tên đăng nhập ^^",
							pwd : {
								required : "Vui lòng nhập mật khẩu đăng nhập ^^",
								minlength : "Mật khẩu từ 3 ký tự trở lên =.="
							}
						}
					});
			if(${not empty param.login}){  //viết tên bình thường hoặc requestScope.login thì sẽ hiểu là attribute
											// viết parameter thì sẽ ghi là param.login
											//sessionScope.login
				$("#mess").html("username hoặc password không đúng =))) Vui lòng nhập lại ^^");
			}
		});
		</script>
	</div>
</body>
</html>