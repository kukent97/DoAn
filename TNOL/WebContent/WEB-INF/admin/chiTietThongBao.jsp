<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
.btn{position:relative; top:0px; left:900px;font-size:25px}
.img-rounded{max-width:400px}
</style>
</head>

<body>
	<div id="model" style="background-color: DarkGrey;width: 1349px;height:1500px">
		<form style="position:relative; top:50px; left:70px;width:1210px;height:1400px; background-color: #fff; border-radius:20px">
			<div style="position:relative;top:00px; left:000px; font-size:25px;padding:70px">
			<b style="font-size:35px ;color:red; margin-left:430px">THÔNG BÁO</b><br>
			<button type="button" onclick="getBack()" class="btn">Trở về</button><br>
			
					<h2 style="color:red;width:1100px">${requestScope.TB.getTitle()}</h2><br>
					<h4>Ngày thông báo: ${requestScope.TB.getTimeNotice()}</h4>
					<table>
						<tr class="ThongBao2">
		    				<td style="vertical-align: top;"><img src="${requestScope.TB.getImage()}" class="img-rounded" alt="Cinque Terre" >
		    				</td>
		    				<td>
		    				<div style="width:670px; margin-left: 40px">
		    					${requestScope.TB.getNoticeContent()}<br><br>
		    				</div>
		    				</td>
		    			</tr>
		    		</table><br>
					<u>Tệp đính kèm:</u><br>
					<div style="width:1100px!important"><a href="${requestScope.TB.getEnclosedd()}">${requestScope.TB.getEnclosedd()}</a>
					</div>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function getBack() {
			history.back();
		}		
	</script>		
</body>
</html>