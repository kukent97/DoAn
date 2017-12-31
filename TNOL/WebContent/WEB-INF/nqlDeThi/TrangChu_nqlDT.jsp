<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if> 
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thi trac nghiem online</title>
    <link rel="stylesheet" type="text/css" href="style3.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
   	 a{color: DarkSlateGray;}
	input[type='text'] {border : 1px solid #000;
 	    background-color : #e0e0e0;}
	.ha{color: RoyalBlue; font-size: 30px; width:600px;}
  	label {color:DarkRed;}
        #modal{position: absolute;top:0%;left: 0%;transform: translate(0%,0%);
            z-index: 999;background-color:transparent;width:90%;height: 350%}
        .input {margin: 0px;padding: 0px 16px}
        .modal-header{background-color:PaleTurquoise;padding: 5px 20px;color: white;width:1349px}
        .modal-header:after{content:"";clear: both;display: table}
        .modal-content{padding: 8px 5px}
        .modal-content button{font-size: 15px; text-align: center;
            margin-left: 78%;margin-top:0px;width:10%;height: 30%}
        .modal-footer{position:absolute;background-color:#50c1e9;padding: 5px 10px;bottom: 0px;left: 0px;width: 100%}
        .modal-footer hh{margin-right: 200px;float: right;color:red;text-decoration: none}
        .modal-content input[type=radio] {display: inline-block;}
	.table1{background-color:PaleTurquoise !important;text-aglign="left";text-color:red;color:DarkSlateGray;position:relative; left:7px;top:75px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1349px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.btn{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:15px}
	.btn:hover{background-color:DarkSlateGray ;color:Cyan}
	.ThongBao{background-color:#e0e0e0; border: 0px solid DarkSlateGray;padding-left:480px; padding-top:85px;color: DarkOliveGreen ; font-size: 20px; 
			width:625px; height: 150px;position:relative; left:285px;top:-1646px;border-radius: 10px}
	a:hover{color:DarkBlue}
	body{background-color:DarkCyan}
	.tb2:hover{color:DarkBlue;align :center}
	.Anh{text-decoration: none}
	.Anh:hover{color:red; background:#000;border-radius: 8px;}
	}
	.ChuChay{text-decoration:underline }
	.ChuChayNgang{width:600px; height:10px;position: relative;top:-600px;left}
	.lich{position:relative;top:593px;left: 920px;z-index: 999}
	.TaiLieu{background-color: #e0e0e0;width: 418px;height: 00px;position: relative;top: -141px;left: 922px;border-radius: 10px}
	.TaiLieu1{width: 380px;height: 1200px}
	.ThongBao1{ width:625px; height: 1427px}
	.ThongBao2{margin-left:26px;margin-top: 30px;width: 570px;height: 150px}
	.img-rounded{margin-left:10px; max-width: 250px}
	.tbl1{padding-left:15px;padding-top:20px;padding-bottom:20px;border-bottom: DarkCyan solid 4px}
    </style>
</head>
<body>
<div id="modal">
    	<div class ="modal-header">
	<IMG src="image/logo.png" style="margin-left:100px; width:800px">
	<label for="ttt" style="display: block; margin-left: 500px" class="ha" name ="ttt"><span></span> <b>THI TRẮC NGHIỆM ONLINE</b></label>
	</div><br>

	<div class="w3-content w3-section" style="max-width:1350px; max-height:100px;position:relative;top:-25px">
	  <img class="mySlides " src="image/hh3.png" style="width:1350px">
	  <img class="mySlides " src="image/hh2.png" style="width:1350px">
	  <img class="mySlides " src="image/hh1.png" style="width:1350px">
	</div>

 	<div style="width:100%;height:1600px;position:fixed;top:400px">

	 <table class="table2" style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px">
	<tr>
	<th><b class="ADMIN" style="padding-left:10px;font-size:23px ;margin-right:100px" >NGƯỜI QUẢN LÝ ĐỀ THI</b></th>
	<th><a href="logout"><u class="tb2">ĐĂNG XUẤT</u></a></th>
	</tr>      
	</table> 

 	<table class="table1" border="0px" cellpadding="15px">
    	<tr><th align ="left" class="tbl1"><a href="nqldt_trangChuList" style="color:DarkBlue"><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="nqldt_deThiList">DANH SÁCH ĐỀ THI</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="nqldt_soanDeThi">SOẠN ĐỀ THI</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="nqldt_kyThiList">DANH SÁCH KỲ THI</a></th></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="nqldt_userInfo">THÔNG TIN CÁ NHÂN</a></th></tr>
    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
	</table><br><br>

<table class="TaiLieu">
	<tr><th align ="center" style="padding-left:140px;padding-top:05px;padding-bottom:05px;border-bottom: #000 solid 2px;font-size: 20px ">
			<b>GÓC TÀI LIỆU</b>
		</th>
	</tr><br>
   	<tr><th >
   		<div class="TaiLieu1">
   			<marquee onmouseover="this.stop()" onmouseout="this.start()" direction="down" scrollamount="8" vspace="10" width="100%" height="95%" class="ChuChay" style="text-decoration: underline;padding-left:15px">
			<c:forEach var="trangChuTaiLieu" items="${requestScope.listTaiLieu}">
			<div style="background-color: #fff;margin-left: 10px;margin-top: 10px;width: 367px;border-radius: 10px">
   					<img src="${trangChuTaiLieu.getImage()}" class="img-rounded" alt="Cinque Terre" style="margin: 7px;margin-bottom:10px; max-width: 353px">
   					<a href="${trangChuTaiLieu.getLink()}"><b style="font-size:20px">${trangChuTaiLieu.getTitle()}</b></a>
   			</div>
			</c:forEach>
   			</marquee>
   		</div>
   	</th></tr>
</table>

<table class="ThongBao">
	<tr><th style="padding-left:230px;padding-top:05px;padding-bottom:05px;border-bottom: #000 solid 2px;color:DarkSlateGray">THÔNG BÁO</th></tr><br>
    <tr><th >
		<div style="overflow:auto" class="ThongBao1">
    		<table  >
    			<c:forEach var="thongBao" items="${requestScope.listThongBao}">
    			<tr>
    				<td colspan="2" style="vertical-align: bottom;text-align: center; padding-top:40px" ><b style="margin-left:10px">${thongBao.getTitle()}</b></td>
    			</tr>
				<tr class="ThongBao2">
    				<td style="vertical-align: top;"><img src="${thongBao.getImage()}" class="img-rounded" alt="Cinque Terre" ></td>
    				<td>
    					<a href="chiTietThongBao?maTB=${thongBao.getNoticeId()}"><u style="color:DarkBlue">Nội dung thông báo</u></a><br>
    					<h3 style="color:#000">Ngày thông báo:${thongBao.getTimeNotice()}</h3>
    				</td>
    			</tr>
				</c:forEach>
    		</table>
    	</div>
    </th></tr>
    <tr>
    	<td colspan="2">
    	<div style="height:20px"></div>
    	</td>
    </tr>	
</table>



</div>
<table style="position:relative;top:1780px; left:20px">
<tr><td style="border-bottom:#fff solid 2px; color:#fff">THÔNG TIN TRƯỜNG</td></tr>
<tr><td style="padding-top:20px;color:#fff">số 1-3 Võ Văn Ngân, Quận Thủ Đức, Tp.Hồ Chí Minh</td></tr>
</table>
<table style="position:relative;top:1710px; left:540px;width:230px">
<tr><td style="border-bottom:#fff solid 2px; color:#fff">HỖ TRỢ</td></tr>
<tr><td style="padding-top:20px;color:#fff">Giải đáp thắc mắc</td></tr>
<tr><td style="color:#fff">Hướng dẫn sử dụng</td></tr>
<tr><td style="color:#fff">Chính sách</td></tr>
</table>
<table style="position:relative;top:1610px; left:1000px;width:320px">
<tr><td style="border-bottom:#fff solid 2px; color:#fff">POWERED AND DESIGNED BY</td></tr>
<tr><td style="padding-top:20px;color:#fff">Ông Thị Diễm Phúc</td></tr>
<tr><td style="color:#fff">Đặng Trương Duy Quang</td></tr>
<tr><td style="color:#fff">Nguyễn Tiên Kha</td></tr>
</table>
</div>



<div class=lich>
<script type="text/javascript" language="JavaScript" src="http://www.informatik.uni-leipzig.de/~duc/amlich/JavaScript/amlich-hnd.js">
</script>
<script language="JavaScript">
<!--
setOutputSize("medium");
document.writeln(printSelectedMonth());
-->
</script>
</div>




<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>