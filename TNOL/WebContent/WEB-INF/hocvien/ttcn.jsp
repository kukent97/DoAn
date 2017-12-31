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
	.table1{background-color:PaleTurquoise !important;text-color:red;color:DarkSlateGray;position:relative; left:7px;top:95px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1349px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.btn{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:15px}
	.btn:hover{background-color:DarkSlateGray ;color:Cyan}
	.HienThongTin{background-color:#e0e0e0; border: 0px solid DarkSlateGray;padding-left:480px; padding-top:85px;color: red ; font-size: 20px;
			 width:1050px; height: 1000px;position:relative; left:285px;top:-324px;border-radius: 10px}
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
	#btnXoa{background-color: MediumSeaGreen;font-size:18px; position: relative;top: 0px;left: -50px;padding:5px 15px}
	#btnXoa:hover{background-color: IndianRed}
	#btnOk{background-color: MediumSeaGreen;font-size:18px;position: relative;top: 0px;left: -30px;padding:5px 15px}
	#btnOk:hover{background-color: LightSkyBlue}
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
        <tr><th align ="left" class="tbl1"><a href="hocVien_xemDiem">XEM ĐIỂM</a></th></tr><br>
        <tr><th align ="left" class="tbl1"><a href="hocVien_lichThi">LỊCH THI</a></th></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="hocVien_userInfo">THÔNG TIN CÁ NHÂN</a></th></tr>
    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
	</table><br><br>
	<div class="HienThongTin">
	
	<div style="background-color: #fff;width:478px;height:370px;border-radius: 10px">
	<b><u style="margin-left:130px">THÔNG TIN CÁ NHÂN</u></b><br>
	<div style="background-color: #e0e0e0;width:450px;height:320px;border-radius: 10px;margin-left:14px;margin-top:8px;padding:30px">
	username:${requestScope.userInfo.getUsername()} <br><br>
	Họ tên:${requestScope.userInfo.getFullname()}<br><br>
	Giới tính:${requestScope.userInfo.getSex()}<br><br>
	Ngày sinh:${requestScope.userInfo.getBirthday()}<br><br>
	Lớp học:${requestScope.lhDal.getLopHoc(userInfo.getLopHoc()).getTenLopHoc()}<br>
	</div>
	</div>	<br><br>
	
	<div style="background-color: #fff;width:478px;height:220px;border-radius: 10px">
	<b><u style="margin-left:130px"><b>THÔNG TIN LIÊN LẠC</b></u></b><br>
	<div  style="background-color: #e0e0e0;width:450px;height:170px;border-radius: 10px;margin-left:14px;margin-top:8px;padding:30px">
	Số điện thoại: ${requestScope.userInfo.getPhone()}<br><br>
	</div>
	</div>

	<div class="iamge"><img src="${requestScope.userInfo.getAvatar()}" style="border-radius: 10px;max-width:200px;max-height:270px" ></div>
	<button class="Anh" id="nhapvo"><span class="glyphicon glyphicon-camera"></span>CHỈNH SỬA ẢNH</button><br>
		<form action="thayAvata" method="post" enctype="multipart/form-data"  id="canAn" >
		<div id="bb">
		<input type="file" style="position:relative;left:-325px;top:-610px" name="upload" id="hahahihi" >
		<input type="submit" value="updateAvata" style="position:relative;left:-325px;top:-610px;border-radius" id="submit1"/>
		</div>
		</form>
	<a href="hocVien_info_edit"><u style="position :relative;top:-230px;left:0px">CHỈNH SỬA THÔNG TIN</u></a>
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

	<div class="container" style="position:relative;top:0px;left:00px;z-index: 9999">
	<!-- Trigger the modal with a button -->
	<button type="button" class="btn1 btn-info btn-lg" data-toggle="modal" data-target="#phucModal"><b>Đổi mật khẩu</b></button>
	<!-- Modal -->
	<div class="modal fade" id="phucModal" role="dialog" >
		<div class="modal-dialog" style="position: relative;top: 50px;left: 0px;width: 750px">
			<!-- Modal content-->
			<div class="modal-content" style="position: relative;top: 0px;left: 0px;width: 750px;height: 380px;background-color:DarkSeaGreen">
				<div class="modal-header" style="position: relative;top: 0px;left: 0px;width: 740px;height: 50px">
					<button type="button" class="close" data-dismiss="modal" style="position: relative;top: 0px;left: 0px;z-index: 9999">&times;</button>
					<h4 class="modal-title" style="position: relative;top: 0px;left: 0px"><span class="glyphicon glyphicon-pencil"></span><b style="margin-left:12px">Đổi mật khẩu</b></h4>
				</div>
				<form action="doiMatKhau" class="modal-body" style="position: relative;top: 0px;left: 0px;width: 750px;height: 270px" id="doiMatKhau">
					<p>
						<br><br>
						<b class="mk3">Mật khẩu cũ:</b>
 						<input type="password" name="mkcu" class="mk1" required="required">
 						<br><br><br>
						<b class="mk3">Mật khẩu mới:</b>
 						<input type="password" name="mkmoi1" class="mk1" required="required">
						<br><br><br>
						<b class="mk3">Nhập lại mật khẩu mới:</b>
						<input type="password" name="mkmoi2" class="mk1" required="required">
 						<br><br>
					</p>
				</form>
				<div class="modal-footer" style="position: relative;top: 0px;left: 0px;width: 740px">
					<button type="button" class="btn" id="btnXoa" data-dismiss="modal" >Hủy</button>
					<button type="submit" class="btn" id="btnOk" form="doiMatKhau" value="doiMatKhau">Ok</button>
				</div>
			</div>
		</div>
	</div>
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