<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if> 
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if> 	
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	.table1{background-color:PaleTurquoise !important;text-color:red;color:DarkSlateGray;position:relative; left:7px;top:78px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1350px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	
	.HienThongTin{background-color:#e0e0e0; border:0px solid DarkSlateGray;padding-left:50px; padding-top:15px;color: red ; font-size: 20px;
			 width:1050px; height: 1000px;position:relative; left:285px;top:-432px;border-radius: 10px}
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
	.thanhcc{
		position:relative; left:290px;top:-895px;font-size: 25px
	}
	.btn1{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:20px; position: relative;top: 676px;left: 900px}
	.btn1:hover{background-color:DarkSlateGray ;color:Cyan}
	.ThemNQL{position: relative;top:0px;left: 0px}
	#phucModel{position: relative;top: 600px;left: 00px;width: 600px;height: 500px}
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
	.modal-body{font-size :20px}
	.ThemNQL1{position: fixed;left: -220px;font-size: 23px;border-radius: 7px;width:600px}
	.ThemNQL3{position: fixed;left: -370px;font-size: 23px;width:500px}
	#TieuDe{margin-left:0px;margin-top:0px}
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
		    	<tr><th align ="left" class="tbl1"><a href="dangThongBaoList">ĐĂNG THÔNG BÁO</a></tH></tr><br>
		    	<tr><th align ="left" class="tbl1"><a href="taiLieuList" style="color:DarkBlue">ĐĂNG TÀI LIỆU</a></th></tr>
		    	<tr><th align ="left" class="tbl1"><a href="userAdmin">THÔNG TIN CÁ NHÂN</a></th></tr>
		    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
			</table><br><br>
  			<div class="HienThongTin">
  			<b style="font-size: 35px; color:DarkSlateGray">Danh sách tài liệu</b>
 				<div class="Timkiemtheo">
 				Tìm kiếm:
 				</div>
				<form id="searchbox" method="get" action="/search" autocomplete="off" class="searchbox1">
				<input name="q" type="text" size="15" placeholder="Tìm kiếm..." id="search"/>
				<input id="button-submit"/>
				</form><br><br>
				<table class="table" border="2px" style="margin-left: -23px">
				    <thead>
				      <tr>
				        <th style="text-align:center">Tiêu đề</th>
				        <th style="text-align:center">Link</th>
				        <th style="text-align:center">Chỉnh sửa</th>
				        <th style="text-align:center">Xóa</th>
				      </tr>
				    </thead>
				    <tbody id="noidung">
					    <c:forEach var="TL" items="${requestScope.listTaiLieu}">
						    <tr>
						        <td style="width:550px">${TL.getTitle()}</</td>
						        <td style="text-align:center;width:150px"><a href="${TL.getLink()}">Tại đây</a></td>
						        <td style="text-align:center;width:150px"><a href="admin_taiLieu_edit?maTaiLieu=${TL.getDocumentId() }&command=edit"><span class="glyphicon glyphicon-cog"></span></a></td>
								<td style="text-align:center;padding:7px"><a href="admin_taiLieu_edit?maTaiLieu=${TL.getDocumentId() }&command=delete"><span class="glyphicon glyphicon-trash"></span></a></td>
						      </tr>
					    </c:forEach>
				    </tbody>
				  </table>
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

<div class="container" style="position:relative;top:0px;left:0px" id="themUser" >
	<!-- Trigger the modal with a button -->
	<button type="button" class="btn1 btn-info btn-lg" data-toggle="modal" data-target="#phucModal"><b>Thêm tài liệu</b></button>
	<!-- Modal -->
	<div class="modal fade" id="phucModal" role="dialog" >
		<div class="modal-dialog" style="position: relative;top: 0px;left: 0px;width: 00px">
			<!-- Modal content-->
			<div class="modal-content" style="position: relative;top: 0px;left: -400px;width: 800px;background-color:DarkSeaGreen">
				<div class="modal-header" style="position: relative;top: 0px;left: 0px;width: 795px">
					<button type="button" class="close" data-dismiss="modal" style="position: relative;top: 0px;left: 0px;z-index: 9999">&times;</button>
					<h4 class="modal-title" style="position: relative;top: 0px;left: 0px"><span class="glyphicon glyphicon-pencil"></span><b style="margin-left:12px">Thêm tài liệu</b></h4>
				</div>
				<div class="modal-body" style="position: relative;top: 0px;left: 0px;width: 800px;height: 230px">
					<p>
					<form  action="admin_taiLieu_edit" id="themTaiLieu">
						<br>
						<b class="ThemNQL3">Tên tài liệu:</b>
 						<input type="text" name="tentaiLieu" class="ThemNQL1">
						<br><br><br>
						<b class="ThemNQL3">Link tài liệu:</b>
 						<input type="text" name="link" class="ThemNQL1">
						<br><br><br><br>
					</form>
					</p>
				</div>
				<div class="modal-footer" style="position: relative;top: 0px;left: 0px;width: 795px">
					<button type="button" class="btn" id="btnXoa" data-dismiss="modal" >Hủy</button>
					<button type="submit" class="btn" id="btnThem" form="themTaiLieu" value="insert" name="command">Thêm tài liệu</button>
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

<script >
$("#search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>
</body>
</html>