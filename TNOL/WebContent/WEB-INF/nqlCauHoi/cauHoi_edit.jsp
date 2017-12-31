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
   	 a{color: DarkSlateGray}
	input[type='text'] {border : 1px solid #000;
 	    background-color : #e0e0e0;}
	.ha{color: RoyalBlue; font-size: 30px; width:600px;}
  	label {color:DarkRed;}
        #my{position: absolute;top:0%;left: 0%;  -moz-transform: translate(0%,0%);transform: translate(0%,0%);
            background-color:transparent;width:100%;height: 220%}
        .input {margin: 0px;padding: 0px 16px}
        .myheader{background-color:PaleTurquoise;padding: 5px 20px;color: white;width:1350px}
        .myheader:after{content:"";clear: both;display: table}
        .mymodal-content{padding: 8px 5px}
        .mymodal-content button{font-size: 15px; text-align: center;
            margin-left: 78%;margin-top:0px;width:10%;height: 30%}
        .mymodal-footer{position:absolute;background-color:#50c1e9;padding: 5px 10px;bottom: 0px;left: 0px;width: 100%}
        .mymodal-footer hh{margin-right: 200px;float: right;color:red;text-decoration: none}
        .mymodal-content input[type=radio] {display: inline-block;}
 	.table1{background-color:PaleTurquoise !important;text-aglign="left";color:DarkSlateGray;position:relative; left:7px;top:97px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1350px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.HienThongTin{background-color:#e0e0e0; border:0px solid DarkSlateGray;padding-left:50px; padding-top:15px;color: red ; font-size: 20px; 
			width:1050px; height: 1100px;position:relative; left:285px;top:-325px;border-radius: 10px}
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
	.btn1{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:20px; position: relative;top: 676px;left: 900px}
	.btn1:hover{background-color:DarkSlateGray ;color:Cyan}
	.ThemNQL{position: relative;top:0px;left: 0px}
	#phucModel{position: relative;top: 600px;left: 00px;width: 600px;height: 00px}
	.ThemNQL1{position: fixed;left: 490px;font-size: 20px;border-radius: 4px;color:DarkSlateGray}
	.ThemNQL3{position: fixed;left: 340px;font-size: 20px;color:DarkSlateGray}
	.ThemNQL2{position: fixed;left: 555px;font-size: 20px;border-radius: 4px;color:DarkSlateGray}
	.ThemNQL4{position: fixed;left: 340px;font-size: 20px;color:DarkSlateGray}
	#btnXoa{background-color:LightCoral;color:DarkSlateGrey ;font-size:22px; position: relative;top: 70px;left: 500px;padding:5px 15px;width:170px}
	#btnXoa:hover{background-color:IndianRed}
	#btnThem{background-color:#67BF7F;color:DarkSlateGrey;font-size:22px;position: relative;top: 70px;left: 520px;padding:5px 15px;width:200px}
	#btnThem:hover{background-color: #00A06B;color:DarkSlateGrey}

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
		<IMG src="image/logo.png", style="margin-left:100px; width:800px">
		<label for="ttt" style="display: block; margin-left: 500px" class="ha" name ="ttt"><span></span> <b>THI TRẮC NGHIỆM ONLINE</b></label>
		</div><br>

		<div class="w3-content w3-section" style="max-width:1350px; max-height:100px;position:relative;top:-25px">
	  	<img class="mySlides" src="image/hh3.png" style="width:1350px">
	  	<img class="mySlides" src="image/hh2.png" style="width:1350px">
	  	<img class="mySlides" src="image/hh1.png" style="width:1350px">
		</div>

 		<div style="width:100%;height:1600px;position:fixed;top:400px">

	 		<table class="table2" style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px" border-top-width="5px">
			<tr>
			<th><b class="ADMIN" style="padding-left:10px;font-size:23px ;margin-right:100px" >NGƯỜI QUẢN LÝ CÂU HỎI</b></th>
			<th><a href="logout"><u class="tb2">ĐĂNG XUẤT</u></a></th>
			</tr>      
			</table> 

 			<table class="table1" border="0px" cellpadding="15px">
		    	<tr><th  class="tbl1"><a href="nqlch_trangChu"><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr><br>
		    	<tr><th  class="tbl1"><a href="nqlch_cauHoiList" style="color:DarkBlue">DANH SÁCH CÂU HỎI</a></th></tr><br>
		        <tr><th  class="tbl1"><a href="nqlch_nhomCauHoiList">DANH SÁCH NHÓM CÂU HỎI</a></th></tr><br>
		    	<tr><th  class="tbl1"><a href="nqlch_userInfo">THÔNG TIN CÁ NHÂN</a></th></tr>
		    	<tr><th  class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
			</table><br><br>
					
  			<div class="HienThongTin">
  			<b style="font-size: 35px; color:DarkRed"><span class="glyphicon glyphicon-pencil"></span>Chỉnh sửa câu hỏi</b>
  			<form action="nqlch_cauHoi_edit" method="post">
  				<br>
					<b class="ThemNQL3" >Nhóm câu hỏi:</b>
					<select class="ThemNQL1" name="nhomCauHoi" data-toggle="dropdown" style="background-color: #F7F8E0;height:45px;width:240px;border: #000 solid 1px;color:#000">
	 				<c:forEach var="nch" items="${requestScope.listNhomCauHoi }">
	 				<c:if test="${nch.getMaNhomCauHoi()==requestScope.cauHoiTheoMaCauHoi.getNhomCauHoi()}">
	 				<option value="${nch.getMaNhomCauHoi() }">${nch.getTenNhomCauHoi()}</option>
	 				</c:if>
	 				</c:forEach>
	 				<c:forEach var="nch" items="${requestScope.listNhomCauHoi }">
	 				<option value="${nch.getMaNhomCauHoi() }">${nch.getTenNhomCauHoi() }</option> 
	 				</c:forEach>
					</select>
					<br><br><br>
					<c:set var="dapAnDung" value="1"></c:set>
					<c:set var="dapAnDung2" value="A"></c:set>
					<c:if test="${requestScope.listDapAn[0].isDapAnDung()==true}">
					<c:set var="dapAnDung" value="1"></c:set>
					<c:set var="dapAnDung2" value="A"></c:set>
					</c:if>
					<c:if test="${requestScope.listDapAn[1].isDapAnDung()==true}">
					<c:set var="dapAnDung" value="2"></c:set>
					<c:set var="dapAnDung2" value="B"></c:set>
					</c:if>
					<c:if test="${requestScope.listDapAn[2].isDapAnDung()==true}">
					<c:set var="dapAnDung" value="3"></c:set>
					<c:set var="dapAnDung2" value="C"></c:set>
					</c:if>
					<c:if test="${requestScope.listDapAn[3].isDapAnDung()==true}">
					<c:set var="dapAnDung" value="4"></c:set>
					<c:set var="dapAnDung2" value="D"></c:set>
					</c:if>
					<div id="maDapAn" style="position: fixed;top:1900px">
					<input name="maDapAn1" value="${requestScope.listDapAn[0].getMaDapAn()}"/>
					<input name="maDapAn2" value="${requestScope.listDapAn[1].getMaDapAn()}"/>
					<input name="maDapAn3" value="${requestScope.listDapAn[2].getMaDapAn()}"/>
					<input name="maDapAn4" value="${requestScope.listDapAn[3].getMaDapAn()}"/>
					<input name="maCauHoi" value="${requestScope.maCauHoi}"/>
					</div>
					<b class="ThemNQL3">Nội dung:</b>
					<textarea name="noiDung" rows="4" cols="72" class="ThemNQL1" style="background-color: #F7F8E0;border:#000 solid 1px;width:735px;color:#000">${requestScope.cauHoiTheoMaCauHoi.getNoiDungCauHoi()}</textarea>
					<br><br><br><br><br><br>
					<b class="ThemNQL3" >Đáp án A:</b>
					<textarea name="dapAn1" rows="4" cols="25" class="ThemNQL1" style="background-color: #F7F8E0;border:#000 solid 1px;margin-left: 0px;color:#000">${requestScope.listDapAn[0].getTenDapAn()}</textarea>
					<b class="ThemNQL4" style="margin-left: 515px">Đáp án B:</b>
					<textarea name="dapAn2" rows="4" cols="25" class="ThemNQL2" style="background-color: #F7F8E0;border:#000 solid 1px;margin-left:400px;color:#000">${requestScope.listDapAn[1].getTenDapAn()}</textarea>
					<br><br><br><br><br><br><br>
					<b class="ThemNQL3" >Đáp án C:</b>
					<textarea name="dapAn3" rows="4" cols="25" class="ThemNQL1" style="background-color: #F7F8E0;border:#000 solid 1px;margin-left:0px;color:#000">${requestScope.listDapAn[2].getTenDapAn()}</textarea>
					<b class="ThemNQL4" style="margin-left: 515px">Đáp án D:</b>
					<textarea name="dapAn4" rows="4" cols="25" class="ThemNQL2" style="background-color: #F7F8E0;border:#000 solid 1px;margin-left:400px;color:#000">${requestScope.listDapAn[3].getTenDapAn()}</textarea>
					<br><br><br><br><br><br><br>
					<b class="ThemNQL3" >Đáp án đúng:</b>
					<select name="dapAnDung" class="ThemNQL1" data-toggle="dropdown" style="background-color: #F7F8E0;height:45px;width:240px;border: #000 solid 1px;color:#000">
	 				<option value="${dapAnDung }">${dapAnDung2 }</option> 
	 				<option value="1">A</option> 
					<option value="2">B</option> 
					<option value="3">C</option>
					<option value="4">D</option>  
					</select>
					<br><br><br>	
					<button type="button" class="btn" id="btnXoa" onclick="getBack()"><span class="	glyphicon glyphicon-remove" style="margin-top: 5px"></span><b style="margin-left:20px">Hủy</b></a></button>
					<button type="submit" class="btn" id="btnThem" value="edit" name="command"><span class="glyphicon glyphicon-ok" style="margin-top: 5px"></span><b style="margin-left:5px"><b>Lưu thay đổi</b></button>
  			</form>
					
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
   $(document).ready(function(){
       $("#maDapAn").hide();
   });
</script>

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
<script type="text/javascript">
	function getBack() {
		history.back();
	}		
</script>
<!-- bắt thông báo thêm sửa xóa-->
<script>
if(${not empty sessionScope.kqDelete})
{
	if(${sessionScope.kqDelete})
		{
			<c:remove var="kqDelete" scope="session" />
			alert("Xóa thành công ^^");
		}
	else{
			<c:remove var="kqDelete" scope="session" />
			alert("Chưa xóa được =( ");
		}
	
}
</script>
<script>
if(${not empty sessionScope.kqInsert})
{
	if(${sessionScope.kqInsert})
		{
			<c:remove var="kqInsert" scope="session" />
			alert("Đã thêm thành công ^^");
		}
	else{
		<c:remove var="kqInsert" scope="session" />
		alert("Chưa thêm được =( ");
	}
}
</script>
<script>
if(${not empty sessionScope.kqEdit})
{
	if(${sessionScope.kqEdit})
		{
			<c:remove var="kqEdit" scope="session" />
			alert("Sửa thành công ^^");
		}
	else{
		<c:remove var="kqEdit" scope="session" />
		alert("Chưa sửa được =( ");
	}
}
</script>
<script>
if(${not empty sessionScope.trung})
{
	if(${sessionScope.trung})
		{
			<c:remove var="trung" scope="session" />
			alert("Đã tồn tại môn học này ^^");
		}
}
</script>

</body>
</html>