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
    <style>
   	 a{color: DarkSlateGray;}
	input[type='text'] {border : 1px solid #000;
 	    background-color : #e0e0e0;}
	.ha{color: RoyalBlue; font-size: 30px; width:600px;}
  	label {color:DarkRed;}
        #my{position: absolute;top:0%;left: 0%;  -moz-transform: translate(0%,0%);transform: translate(0%,0%);
            background-color:transparent;width:100%;height: 260%}
        .input {margin: 0px;padding: 0px 16px}
        .myheader{background-color:PaleTurquoise;padding: 5px 20px;color: white;width:1350px}
        .myheader:after{content:"";clear: both;display: table}
        .mymodal-content{padding: 8px 5px}
        .mymodal-content button{font-size: 15px; text-align: center;
            margin-left: 78%;margin-top:0px;width:10%;height: 30%}
        .mymodal-footer{position:absolute;background-color:#50c1e9;padding: 5px 10px;bottom: 0px;left: 0px;width: 100%}
        .mymodal-footer hh{margin-right: 200px;float: right;color:red;text-decoration: none}
        .mymodal-content input[type=radio] {display: inline-block;}
	.table1{background-color:PaleTurquoise !important;text-color:red;color:DarkSlateGray;position:relative; left:7px;top:75px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1350px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.HienThongTin{background-color:#e0e0e0; border:0px solid DarkSlateGray;padding-left:50px; padding-top:15px;color: red ; font-size: 20px;
		 width:1050px; height: 1100px;position:relative; left:285px;top:-368px;border-radius: 10px}
	a:hover{color:DarkBlue}
	body{background-color:DarkCyan}
	.tb2:hover{color:DarkBlue;align :center}
	.Anh{text-decoration: none}
	.Anh:hover{color:red; background:#000;border-radius: 8px;}
	}
	.ChuChay{text-decoration:underline }
	.form-control{
		position: relative;top:-20px;left:165px; width:150px;height:45px;
	}
	.Timkiemtheo{
		position: relative;top:30px;left:-10px;font-size: 25px
	}
	.btn1{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:20px; position: relative;top: 628px;left: 900px}
	.btn1:hover{background-color:DarkSlateGray ;color:Cyan}
	.ThemNQL{position: relative;top:0px;left: 0px}
	#phucModel{position: relative;top: 600px;left: 00px;width: 600px;height: 00px}
	.ThemNQL1{position: fixed;left: 250px;font-size: 20px;border-radius: 4px}
	.ThemNQL3{position: fixed;left: 50px;font-size: 20px}
	.ThemNQL2{position: fixed;left: 265px;font-size: 20px;border-radius: 4px}
	.ThemNQL4{position: fixed;left: 50px;font-size: 20px}
	#btnXoa{background-color: MediumSeaGreen;font-size:18px; position: relative;top: 0px;left: -50px;padding:5px 15px}
	#btnXoa:hover{background-color: IndianRed}
	#btnThem{background-color: MediumSeaGreen;font-size:18px;position: relative;top: 0px;left: -30px;padding:5px 15px}
	#btnThem:hover{background-color: LightSkyBlue}

	#searchbox {position: relative;left: 130px;top:-18px;width: 360px;height:20px;}
	
	#searchbox input {
 	   outline: none;
	}
	input:focus::-webkit-input-placeholder {
 	   color: transparent;
	}
	input:focus:-moz-placeholder {
  	  color: transparent;
	}
	input:focus::-moz-placeholder {
 	   color: transparent;
	}
	#searchbox input[type="text"] {
 	   background: url(http://2.bp.blogspot.com/-xpzxYc77ack/VDpdOE5tzMI/AAAAAAAAAeQ/TyXhIfEIUy4/s1600/search-dark.png) no-repeat 10px 13px #f2f2f2;
	border: 2px solid #f2f2f2;
    font: bold 12px Arial,Helvetica,Sans-serif;
    color: #6A6F75;
    width: 190px;
    padding: 14px 17px 12px 30px;
    -webkit-border-radius: 5px 0px 0px 5px;
    -moz-border-radius: 5px 0px 0px 5px;
    border-radius: 5px 0px 0px 5px;
    text-shadow: 0 2px 3px #fff;
    -webkit-transition: all 0.7s ease 0s;
    -moz-transition: all 0.7s ease 0s;
    -o-transition: all 0.7s ease 0s;
    transition: all 0.7s ease 0s;
	}
	#searchbox input[type="text"]:focus {
	background: #f7f7f7;
	border: 2px solid #f7f7f7;
	width: 220px;
	padding-left: 10px;
	}

	#button-submit{
	background: url(http://4.bp.blogspot.com/-slkXXLUcxqg/VEQI-sJKfZI/AAAAAAAAAlA/9UtEyStfDHw/s1600/slider-arrow-right.png) no-repeat;
	margin-left: -40px;
	border-width: 0px;
	width: 43px;
	height: 45px;
	}
    .tbl1{padding-left:15px;padding-top:20px;padding-bottom:20px;border-bottom: DarkCyan solid 4px}
    .buttons {
	  $w: 500px;
	  $h: 260px;
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  width: $w;
	  height: $h;
	  margin-top: -($h/2);
	  margin-left: -($w/2);
	  text-align: center;
	}
	
	.set:not(:last-child) {
	  border-bottom: 1px dotted #aaa;
	}
	
	.btn {
	  display: inline-block;
	  min-width: 110px;
	  margin: 15px 5px;
	  padding: 10px 15px 12px;
	  font: 700 12px/1 'Open Sans', sans-serif;
	  border-radius: 3px;
	  box-shadow: inset 0 -1px 0 1px rgba(0,0,0,.1), inset 0 -10px 20px rgba(0,0,0,.1);
	  cursor: pointer;
	}
	
	.btn.sec {
	  color: #777;
	  text-shadow: 0 1px 0 rgba(255,255,255,.8);
	  background: #fff;
	}
	
	.btn.sec:hover { background: #f5f5f5 }
	
	.btn.pri {
	  color: #fff;
	  text-shadow: 0 -1px 0 rgba(0,0,0,.2);
	}
	
	.set.blue .btn.pri { background: #59d }
	.set.green .btn.pri { background: #6b6 }
	.set.red .btn.pri { background: #d33 }
	.set.black .btn.pri { background: #555 }
	
	.set.blue .btn.pri:hover { background: #48c }
	.set.green .btn.pri:hover { background: #5a5 }
	.set.red .btn.pri:hover { background: #c22 }
	.set.black .btn.pri:hover { background: #444 }
	
	.btn.sec.ico,
	.btn.pri.ico {
	  position: relative;
	  padding-left: 40px;
	  text-align: left;
	}
	
	.btn.sec.ico:before,
	.btn.pri.ico:before {
	  position: absolute;
	  top: 0;
	  left: 0;
	  display: block;
	  width: 30px;
	  padding: 10px 0 12px;
	  font-family: fontawesome;
	  text-align: center;
	  border-radius: 3px 0 0 3px;
	  background: rgba(0,0,0,.15);
	}
	
	.btn.sec.ico:before {
	  background: rgba(0,0,0,.08);
	}
	
	.set.blue .btn.sec.ico:before { content: '\f053' }
	.set.green .btn.sec.ico:before { content: '\f05e' }
	.set.red .btn.sec.ico:before { content: '\f05e' }
	.set.black .btn.sec.ico:before { content: '\f0c4' }
	
	.set.blue .btn.pri.ico:before { content: '\f054' }
	.set.green .btn.pri.ico:before { content: '\f00c' }
	.set.red .btn.pri.ico:before { content: '\f014' }
	.set.black .btn.pri.ico:before { content: '\f0c4' }
    </style>
</head>


<body>
<div id="my">
    	<div class ="myheader">
		<IMG src="image/logo.png" style="margin-left:100px; width:800px">
		<label for="ttt" style="display: block; margin-left: 500px" class="ha"><span></span> <b>THI TRẮC NGHIỆM ONLINE</b></label>
		</div><br>

		<div class="w3-content w3-section" style="max-width:1350px; max-height:100px;position:relative;top:-25px">
	  	<img class="mySlides" src="image/hh3.png" style="width:1350px">
	  	<img class="mySlides" src="image/hh2.png" style="width:1350px">
	  	<img class="mySlides" src="image/hh1.png" style="width:1350px">
		</div>

 		<div style="width:100%;height:1600px;position:fixed;top:400px">

	 		<table class="table2" style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px" border-top-width="5px">
			<tr>
			<th><b class="ADMIN" style="padding-left:10px;font-size:23px ;margin-right:220px" >NGƯỜI QUẢN LÝ ĐỀ THI</b></th>
			<th><a href="logout"><u class="tb2" >ĐĂNG XUẤT</u></a></th>
			</tr>      
			</table> 

 			<table class="table1" border="0px" cellpadding="15px">
		    	<tr><th align ="left" class="tbl1"><a href="nqldt_trangChuList" ><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr><br>
		        <tr><th align ="left" class="tbl1"><a href="nqldt_deThiList" style="color:DarkBlue">DANH SÁCH ĐỀ THI</a></th></tr><br>
		        <tr><th align ="left" class="tbl1"><a href="nqldt_soanDeThi">SOẠN ĐỀ THI</a></th></tr><br>
		        <tr><th align ="left" class="tbl1"><a href="nqldt_kyThiList">DANH SÁCH KỲ THI</a></th></tr><br>
		    	<tr><th align ="left" class="tbl1"><a href="nqldt_userInfo">THÔNG TIN CÁ NHÂN</a></th></tr>
		    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
			</table><br><br>
			
  			<div class="HienThongTin">
  			<b style="font-size: 35px; color:DarkSlateGray">Danh sách đề thi</b>
 				<div class="Timkiemtheo">
 				Tìm kiếm:
 				</div>
				<form id="searchbox" method="get" action="/search" autocomplete="off" class="searchbox1">
				<input type="text" size="15" placeholder="Tìm kiếm..." name="search" id="search">
				<input id="button-submit"/>
				</form><br><br>
				<div style="margin-left:-20px;width:990px;height: 860px;background-color: #F7F8E0;border-radius: 10px">
					<table style="margin-left:10px;font-size: 20PX;width:970px;background-color: #F7F8E0">
				      <tr>
				        <th style="text-align: center;width:140px;height:70px;padding:7px;border-right:#000 solid 1px">Mã đề thi</th>
				        <th style="text-align: center;width:210px;border-right:#000 solid 1px">Tên đề thi</th>
				        <th style="text-align: center;width:140px;border-right:#000 solid 1px">Thời gian thi</th>
				        <th style="text-align: center;width:200px;border-right:#000 solid 1px">Danh sách câu hỏi</th>
				        <th style="text-align: center;width:155px;border-right:#000 solid 1px">Chỉnh sửa</th>
				        <th style="text-align: center">Xóa đề thi</th>
				      </tr>
				    </table>
				    <div style="margin-left:10px;width:970px;height: 810px;overflow:auto;background-color: #F7F8E0">
					    <table style="font-size: 20PX;width:970pxs;background-color:#F7F8E0" border="1px">
						    <tbody id="noidung">
						      <c:forEach var="dt" items="${requestScope.listDeThi}">
						      <tr>
						        <td style="text-align: center;width:140px;padding:7px">${dt.getMaDeThi()}</td>
						        <td style="text-align: center;width:210px;padding:7px">${dt.getTenDeThi()}</td>
						        <td style="text-align: center;width:140px;padding:7px">${dt.getThoiGianLamBai()} phút</td>
						        <td style="text-align: center;width:200px;padding:7px"><a href="nqldt_chiTietDeThi?maDeThi=${dt.getMaDeThi() }">Chi tiêt</a></td>
						        <td style="text-align: center;width:155px;padding:7px"><a href="nqldt_deThi_edit?command=edit&maDeThi=${dt.getMaDeThi()}"><span class="glyphicon glyphicon-cog"></span></a></td>
						        <td style="text-align: center;width:118px;padding:7px"><a href="nqldt_deThi_edit?command=delete&maDeThi=${dt.getMaDeThi()}"><span class="glyphicon glyphicon-trash"></span></a></td>
						      </tr>
						      </c:forEach>
						    </tbody>
					  </table>
				  </div>
				</div>
			</div>

	
  	</div>
  	<table style="position:relative;top:1380px; left:20px">
	<tr><td style="border-bottom:#fff solid 2px; color:#fff">THÔNG TIN TRƯỜNG</td></tr>
	<tr><td style="padding-top:20px;color:#fff">số 1-3 Võ Văn Ngân, Quận Thủ Đức, Tp.Hồ Chí Minh</td></tr>
	</table>
	<table style="position:relative;top:1310px; left:540px;width:230px">
	<tr><td style="border-bottom:#fff solid 2px; color:#fff">HỖ TRỢ</td></tr>
	<tr><td style="padding-top:20px;color:#fff">Giải đáp thắc mắc</td></tr>
	<tr><td style="color:#fff">Hướng dẫn sử dụng</td></tr>
	<tr><td style="color:#fff">Chính sách</td></tr>
	</table>
	<table style="position:relative;top:1210px; left:1000px;width:320px">
	<tr><td style="border-bottom:#fff solid 2px; color:#fff">POWERED AND DESIGNED BY</td></tr>
	<tr><td style="padding-top:20px;color:#fff">Ông Thị Diễm Phúc</td></tr>
	<tr><td style="color:#fff">Đặng Trương Duy Quang</td></tr>
	<tr><td style="color:#fff">Nguyễn Tiên Kha</td></tr>
	</table>
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
<script>
$("#search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>
<!-- bắt thông báo thêm sửa xóa-->
<script>
if(${not empty sessionScope.kqDelete})
{
	if(${sessionScope.kqDelete})
		{
			alert("Xóa thành công ^^");
		}
	else{
		alert("Chưa xóa được =( ");
	}
	<c:remove var="kqDelete" scope="session" />
}
</script>
<script>
if(${not empty sessionScope.kqEdit})
{
	if(${sessionScope.kqEdit})
		{
			alert("Sửa thành công ^^");
		}
	else{
		alert("Chưa sửa được =( ");
	}
	<c:remove var="kqEdit" scope="session" />
}
</script>
<script>
if(${not empty sessionScope.khongTheSua})
{
	alert("Bạn không phải người tạo đề thi này nên không thể sửa đề thi này!!!");
	<c:remove var="khongTheSua" scope="session" />
}
</script>
</body>
</html>