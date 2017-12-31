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
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
    <style>
   	 a{color: DarkSlateGray;}
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
	.table1{background-color:PaleTurquoise !important;text-color:red;color:DarkSlateGray;position:relative; left:7px;top:75px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1349px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.btn{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:15px}
	.btn:hover{background-color:DarkSlateGray ;color:Cyan}
	.HienThongTin{background-color:#e0e0e0; border: 0px solid DarkSlateGray;padding-left:480px; padding-top:85px;color: red ; font-size: 20px;
			 width:1050px; height: 1000px;position:relative; left:285px;top:-368px;border-radius: 10px}
	a:hover{color:DarkBlue}
	body{background-color:DarkCyan}
	.tb2:hover{color:DarkBlue}
	.Anh{text-decoration: none;position:relative;left:-325px;top:-610px;border-radius: 7px}
	.Anh:hover{color:red; background:#000;border-radius: 8px;}
	.btn1{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:20px; position: relative;top: 1410px;left: 980px}
	.btn1:hover{background-color:DarkSlateGray ;color:Cyan}
	.ThemNQL{position: relative;top:0px;left: 0px}
	#phucModel{position: relative;top: 600px;left: 00px;width: 600px;height: 00px}
	.mk1{position: fixed;left: 280px;font-size: 20px;border-radius: 7px ; width:420px}
	.mk3{position: fixed;left: 40px;font-size: 20px}
	#btnXoa{background-color: MediumSeaGreen;font-size:18px; position: relative;top:-200px;left: 150px;padding:5px 15px;width:130}
	#btnXoa:hover{background-color: IndianRed}
	#btnThem{background-color: MediumSeaGreen;font-size:18px;position: relative;top:-238px;left: 300px;padding:5px 15px;width:150}
	#btnThem:hover{background-color: LightSkyBlue}
    .tbl1{padding-left:15px;padding-top:20px;padding-bottom:20px;border-bottom: DarkCyan solid 4px}
    .iamge{position:relative;left:-350px;top:-645px;border-radius: 10px;width:230px;background-color: #fff;height:298px;text-align:center;padding-top:15px}
    label.error {
	display: inline-block;
	width: 600px;
	position: fixed;
	left: 00px;
	font-size: 16px;
	position: relative;
	left: 272px;
	top: 40px
	}
	.ThemNQL1{position:fixed;left:930px;border-radius: 5px;width:280px}
    </style>
</head>
<body>


<div id="my">
    	<div class ="myheader">
	<IMG src="image/logo.png" style="margin-left:100px; width:800px">
	<label for="ttt" style="display: block; margin-left: 500px" class="ha" name ="ttt"><span></span> <b>THI TRẮC NGHIỆM ONLINE</b></label>
	</div><br>

	<div class="w3-content w3-section" style="max-width:1350px; max-height:100px;position:relative;top:-25px">
	  <img class="mySlides" src="image/hh3.png" style="width:1350px">
	  <img class="mySlides" src="image/hh2.png" style="width:1350px">
	  <img class="mySlides" src="image/hh1.png" style="width:1350px">
	</div>

 	<div style="width:100%;height:1600px;position:fixed;top:400px">

	 <table class="table2" style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px";border-top-width="5px">
	<tr>
	<th><b class="ADMIN" style="padding-left:10px;font-size:23px ;margin-right:170px" >HỌC VIÊN</b></th>
	<th><a href="logout"><u class="tb2" >ĐĂNG XUẤT</u></a></th>
	</tr>      
	</table> 

 	<table class="table1" border="0px" cellpadding="15px" >
    	<tr><th align ="left" class="tbl1"><a href="hocVien_trangChu"><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="hocVien_lamBaiThi">LÀM BÀI THI</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="hocVien_xemDiem">XEM ĐIỂM</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="hocVien_lichThi">LỊCH THI</a></th></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="hocVien_userInfo">THÔNG TIN CÁ NHÂN</a></th></tr>
    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
	</table><br><br>
	<div class="HienThongTin">
	
	<form action="hocVien_info_edit" method="post" id="edit">
		<div style="background-color: #fff;width:478px;height:370px;border-radius: 10px">
			<b><u style="margin-left:130px">THÔNG TIN CÁ NHÂN</u></b><br>
			<div style="background-color: #e0e0e0;width:450px;height:320px;border-radius: 10px;margin-left:10px;margin-top:8px;padding:30px">
		
				username: <input type="text" name="username" style="background-color: LightSlateGray" class="ThemNQL1" value="${requestScope.userAdmin.getUsername()}"readonly><br><br>
				Họ tên:<input type="text" name="hoTen"  class="ThemNQL1" value="${requestScope.userAdmin.getFullname()}"><br><br>
				Giới tính:<input type="text" name="gioiTinh"  class="ThemNQL1" value="${requestScope.userAdmin.getSex()}"><br><br>
				Ngày sinh:<input type="text" name="ngaySinh"  class="ThemNQL1" value="${requestScope.userAdmin.getBirthday()}"><br>
			</div>
		</div>	<br><br>
		
		<div style="background-color: #fff;width:478px;height:220px;border-radius: 10px">
			<b><u style="margin-left:130px"><b>THÔNG TIN LIÊN LẠC</b></u></b><br>
			<div  style="background-color: #e0e0e0;width:450px;height:170px;border-radius: 10px;margin-left:10px;margin-top:8px;padding:30px">
				Số điện thoại: <input type="text" name="sdt"  class="ThemNQL1" value="${requestScope.userAdmin.getPhone()}"><br><br>
			</div>
		</div>
		</form>
		<div class="iamge"><img src="${requestScope.userAdmin.getAvatar()}" style="border-radius: 10px;max-width:200px;max-height:270px" ></div>
		<form action="hocVien_userInfo">
		<button type="submit" class="btn" id="btnXoa" data-dismiss="modal" >Hủy</button>
		</form>
		<button type="submit" class="btn" id="btnThem" value="edit" name="command" form="edit">Lưu thay đổi</button>
		</div>
</div>
<table style="position:relative;top:1280px; left:20px">
	<tr><td style="border-bottom:#fff solid 2px; color:#fff">THÔNG TIN TRƯỜNG</td></tr>
	<tr><td style="padding-top:20px;color:#fff">số 1-3 Võ Văn Ngân, Quận Thủ Đức, Tp.Hồ Chí Minh</td></tr>
	</table>
	<table style="position:relative;top:1210px; left:540px;width:230px">
	<tr><td style="border-bottom:#fff solid 2px; color:#fff">HỖ TRỢ</td></tr>
	<tr><td style="padding-top:20px;color:#fff">Giải đáp thắc mắc</td></tr>
	<tr><td style="color:#fff">Hướng dẫn sử dụng</td></tr>
	<tr><td style="color:#fff">Chính sách</td></tr>
	</table>
	<table style="position:relative;top:1110px; left:1000px;width:320px">
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
<script type="text/javascript">
	$("#btnOk").click(function() {
	$("#doiMatKhau").validate(
		{
			rules : {
				mkcu : "required",
				mkmoi1 : "required",
				mkmoi2 : "required",
			},
			messages : {
				mkcu : "Phải nhập lại mật khẩu cũ ^^",
				mkmoi1 : "Không bỏ trống mật khẩu mới ^^",
				mkmoi2 : "Nhập lại mật khẩu mới nào ^^",
			}
		});
	
	});
</script>
<script>
if(${not empty sessionScope.trangThai})
{
	if(${trangThai=="doiThanhCong"})
		{
			alert("Đổi mật khẩu thành công ^^");
		}
	else if(${trangThai=="matKhauKhongKhop"})
	{
		alert("Mật khẩu mới không khớp nhau =.=");
	}
	else if(${trangThai=="saiMatKhauCu"})
	{
		alert("Mật khẩu cũ nhập sai =.=");
	}
	<c:remove var="trangThai" scope="session" />
}
</script>
<!-- ẩn đổi ảnh -->
<script>
     $(document).ready(function(){
         $("#bb").hide();
         $("#nhapvo").click(function(){
         	$("#hahahihi").click();
         });
         $("input[type='file']").change(function(){
        	 if($("input[type='file']").get(0).files.length==0)
        		 return;
        	$("#submit1").click(); 
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
if(${not empty sessionScope.kqInsert})
{
	if(${sessionScope.kqInsert})
		{
			alert("Đã thêm thành công ^^");
		}
	else{
		alert("Chưa thêm được =( ");
	}
	<c:remove var="kqInsert" scope="session" />
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
if(${not empty sessionScope.kqEdit1})
{
	if(${sessionScope.kqEdit1})
		{
			alert("Sửa thành công ^^");
		}
	else{
		alert("Chưa sửa được =( ");
	}
	<c:remove var="kqEdit1" scope="session" />
}
</script>
</body>
</html>