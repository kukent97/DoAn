<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if> 
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	.table1{background-color:PaleTurquoise !important;text-color:red;color:DarkSlateGray;position:relative; left:7px;top:78px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1349px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.btn{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:15px}
	.btn:hover{background-color:DarkSlateGray ;color:Cyan}
	.HienThongTin{background-color:#e0e0e0; border:0px solid DarkSlateGray;padding-left:50px; padding-top:15px;color: red ; font-size: 20px;
			 width:1050px; height: 1000px;position:relative; left:285px;top:-432px;border-radius: 10px}
	a:hover{color:DarkBlue}
	body{background-color:DarkCyan}
	.tb2:hover{color:DarkBlue;align :center}
	.Anh{text-decoration: none}
	.Anh:hover{color:red; background:#000;border-radius: 8px;}
	.btn1{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:20px; position: relative;top: 1410px;left: 980px}
	.btn1:hover{background-color:DarkSlateGray ;color:Cyan}
	.ThemNQL{position: relative;top:0px;left: 0px}
	#phucModel{position: relative;top: 600px;left: 00px;width: 600px;height: 00px}
	#btnXoa{background-color:LightCoral;color:DarkSlateGrey ;font-size:22px; position: relative;top: 70px;left: 500px;padding:5px 15px;width:150px}
	#btnXoa:hover{background-color:IndianRed}
	#btnThem{background-color:#67BF7F;color:DarkSlateGrey;font-size:22px;position: relative;top: 27px;left: 680px;padding:5px 15px;width:180px}
	#btnThem:hover{background-color: #00A06B;color:DarkSlateGrey}
    .tbl1{padding-left:15px;padding-top:20px;padding-bottom:20px;border-bottom: DarkCyan solid 4px}
    .iamge{position:relative;left:0px;top:0px;border-radius: 10px;width:270px;height:200px;background-color: #fff;text-align:center;padding-top:15px;border-radius: 10px}
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
	.ThemNQL1{position: relative;left: 0px;font-size: 25px;border-radius: 7px;width:450px; color:Black}
	.ThemNQL3{position: relative;left: 0px;font-size: 25px;width:500px;color:Black}
	#Tep{margin-left:-162px;margin-top:10px}
	#TepDinhKem{width: 590px; position:relative;left: 160px;top:-40px;font-size:25px;height:40px;background-color:#F7F8E0}
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

 	<div class"than" style="width:100%;height:1600px;position:fixed;top:400px">

	 <table class="table2"; style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px";border-top-width="5px">
	<tr>
	<th><b class="ADMIN" style="padding-left:90px;font-size:23px ;margin-right:220px" >ADMIN</b></th>
	<th><a href="logout"><u class="tb2" >ĐĂNG XUẤT</u></a></th>
	</tr>      
	</table> 

 	<table class="table1" border="0px" cellpadding="15px">
    	<tr><th align ="left" class="tbl1"><a href="trangChuList"><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="userList">DANH SÁCH USER</a></th></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="monHocList">DANH SÁCH MÔN HỌC</a></tH></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="dangThongBaoList" style="color:DarkBlue">ĐĂNG THÔNG BÁO</a></tH></tr><br>
    	<tr><th align ="left" class="tbl1"><a href="taiLieuList">ĐĂNG TÀI LIỆU</a></th></tr>
    	<tr><th align ="left" class="tbl1"><a href="userAdmin">THÔNG TIN CÁ NHÂN</a></th></tr>
    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
	</table><br><br>
	<div class="HienThongTin">
		<b style="font-size: 35px; color:DarkRed"><span class="glyphicon glyphicon-pencil"></span>Chỉnh sửa thông báo</b><br><br><br>
		<div class="iamge"><img src="${requestScope.getThongBao.getImage() }" style="border-radius: 10px;max-width:250px;max-height:170px"></div>
		<button class="Anh" style="position:relative;left:280px;top:-50px;border-radius: 10px;height:47px" id="nhapvo"><span class="glyphicon glyphicon-camera"></span>CHỈNH SỬA ẢNH</button><br>
		<form action="admin_thongBao_anh" method="post" enctype="multipart/form-data" id="canAn" >
			<div id="bb">
				<input type="file" style="position:relative;left:-325px;top:-610px" name="upload" id="hahahihi" >
				<input type="submit" value="updateAvata" style="position:relative;left:-325px;top:-610px;border-radius" id="submit1"/>
			</div>
		</form>
		<form action="admin_thongBao" id="editThongBao" method="post" style="margin-top:-40px">
			<br>
			<b class="ThemNQL3">Ngày thông báo:</b><br>
			<input class="ThemNQL1" id="" type="date" value="${requestScope.getThongBao.getTimeNotice() }" class="form-control" name="ngayThongBao" style="width: 300px;background-color:#F7F8E0"><br>
			<b class="ThemNQL3">Tiêu đề thông báo:</b><br>
			<input class="ThemNQL1" id="TieuDe" type="text" value="${requestScope.getThongBao.getTitle() }" class="form-control" name="tieuDe" placeholder="Nhập tiêu đề thông báo" style="width: 600px;background-color:#F7F8E0"><br>
			<b class="ThemNQL3">Nội dung thông báo:</b><br>
			<textarea class="ThemNQL1" name="noiDungThongBao" style="width: 750px;height: 230px;border-radius: 8px;color:black;background-color:#F7F8E0" id="noiDung2"> ${requestScope.getThongBao.getNoticeContent()}</textarea><br>
			<input class="ThemNQL1" type="button" class="form-control" name="Tep" value="Link đính kèm" style="width: 150px;height:45px; font-size:20px;background-color: DarkSeaGreen">
		    <input id="TepDinhKem" type="text" value="${requestScope.getThongBao.getEnclosedd() }" class="form-control" name="linkDinhKem" placeholder="Không có link đính kèm">
		</form>
		<form action="dangThongBaoList" style="margin-top:-35px">
			<button type="submit" class="btn" id="btnXoa" onclick="getBack()">Hủy</a></button>
		</form>
			<button type="submit" class="btn" id="btnThem" value="edit" name="command" form="editThongBao">Lưu thay đổi</button>
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