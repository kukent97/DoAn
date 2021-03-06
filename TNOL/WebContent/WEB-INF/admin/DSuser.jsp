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
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
    <style>
   	 a{color: DarkSlateGray;}
	input[type='text'] {border : 1px solid #000; background-color : #e0e0e0}
	.ha{color: RoyalBlue; font-size: 30px; width:600px;}
  	label {color:DarkRed}
        #my{position: absolute;top:0%;left: 0%;  -moz-transform: translate(0%,0%);transform: translate(0%,0%);
            width:100%;height: 260%}
            
        .input {margin: 0px;padding: 0px 16px}
        .myheader{background-color:PaleTurquoise;padding: 5px 20px;color: white;width:1350px}
        .myheader:after{content:"";clear: both;display: table}
        .mymodal-content{padding: 8px 5px}
        .mymodal-content button{font-size: 15px; text-align: center;
            margin-left: 78%;margin-top:0px;width:10%;height: 30%}
        .mymodal-footer{position:absolute;padding: 5px 10px;bottom: 0px;left: 0px;width: 100%}
        .mymodal-footer hh{margin-right: 200px;float: right;color:red;text-decoration: none}
        .mymodal-content input[type=radio] {display: inline-block;}
	.table1{background-color:PaleTurquoise !important;color:DarkSlateGray;position:relative; left:7px;top:78px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1350px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	
	.HienThongTin{background-color:#FFF; border:0px solid DarkSlateGray;padding-left:50px; padding-top:15px;color: red ; 
	font-size: 20px; width:1050px; height: 900px;position:relative; left:0px;top:00px;border-radius: 10px}
	a:hover{color:DarkBlue}
	body{background-color:DarkCyan}
	.btn1{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:20px; position: relative;top: 676px;left: 900px}
	.btn1:hover{background-color:DarkSlateGray ;color:Cyan}
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
		position:relative; left:290px;top:-430px;font-size: 25px
	}
	.ThemNQL{position: relative;top:0px;left: 0px}
	#phucModel{position: relative;top: 600px;left: 00px;width: 600px;height: 500px}
	.ThemNQL1{position: fixed;left: 150px;font-size: 20px;border-radius: 5px}
	.ThemNQL2{position: fixed;left: 620px;font-size: 20px;border-radius: 5px}
	.ThemNQL3{position: fixed;left: 30px;font-size: 20px}
	.ThemNQL4{position: fixed;left: 465px;font-size: 20px}
	.ThemNQL5{position: fixed;left: 300px;font-size: 20px}
	.ThemNQL6{position: fixed;left: 370px;font-size: 20px}
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
	.classtab{background-color: #e0e0e0 !important}
    .tbl1{padding-left:15px;padding-top:20px;padding-bottom:20px;border-bottom: DarkCyan solid 4px}
    #mytab{positione:relative;top:0px}
    .mytab{positione:relative;top:0px}
    .radio-inline{font-size:23px;margin-left:15px}
    label.error {
	display: inline-block;
	position: relative;
	left: 135px;
	top:40px;
	width: 600px;
	font-size: 18px;
	}
	#mess{position:relative;left:10px;top:40px;color:red}
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

 		<div class"than" style="width:100%;height:1600px;position:fixed;top:400px">

	 		<table class="table2"; style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px";border-top-width="5px">
			<tr>
			<th><b class="ADMIN" style="padding-left:90px;font-size:23px ;margin-right:220px" >ADMIN</b></th>
			<th><a href="logout"><u class="tb2" >ĐĂNG XUẤT</u></a></th>
			</tr>      
			</table> 

 			<table class="table1" border="0px" cellpadding="15px">
		    	<tr><th align ="left" class="tbl1"><a href="trangChuList"><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr><br>
		    	<tr><th align ="left" class="tbl1"><a href="userList" style="color:DarkBlue">DANH SÁCH USER</a></th></tr><br>
		    	<tr><th align ="left" class="tbl1"><a href="monHocList">DANH SÁCH MÔN HỌC</a></tH></tr><br>
		    	<tr><th align ="left" class="tbl1"><a href="dangThongBaoList">ĐĂNG THÔNG BÁO</a></tH></tr><br>
		    	<tr><th align ="left" class="tbl1"><a href="taiLieuList">ĐĂNG TÀI LIỆU</a></th></tr>
		    	<tr><th align ="left" class="tbl1"><a href="userAdmin">THÔNG TIN CÁ NHÂN</a></th></tr>
		    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
			</table><br><br>

			<div class="thanhcc">
 
  				<ul class="nav nav-tabs" style="width:1000px;margin-left:27px;font-size:18px">
    			<li class="active mytab"><a data-toggle="tab" href="#home" id="mytab" >Danh sách người quản lý điểm</a></li>
    			<li class="mytab"><a data-toggle="tab" href="#menu1" ><b>Danh sách gười quản lý đề thi</b></a></li>
    			<li class="mytab"><a data-toggle="tab" href="#menu2" ><b>Danh sách học viên</b></a></li>
    			<li class="mytab"><a data-toggle="tab" href="#menu3" ><b>Danh sách Admin</a></li>
  				</ul>

  				<div class="tab-content">
    				<div id="home" class="tab-pane fade in active" >
    					<div class="HienThongTin">
 							<div class="Timkiemtheo">
			 				Tìm kiếm:
			 				</div>
							<form id="searchbox" method="get" action="/search" autocomplete="off" class="searchbox1">
							<input type="text" size="15" placeholder="Tìm kiếm..." name="search" id="search1">
							<input id="button-submit" type="submit" value=" "/>
							</form><br><br><br>
							
							<table class="table" border="2px" style="margin-left: -35px ;font-size:17px">
   								<thead>
      								<tr>
	        							<th>username</th>
	        							<th>Password</th>
	        							<th>Họ tên</th>
								        <th>Giới tính</th>
								        <th>Ngày sinh</th>
								        <th>SĐT</th>
								        <th></th>
								        <th></th>
									</tr>
							    </thead>
							    <tbody id="noidung1">
							    	<c:forEach items="${requestScope.listUser1}" var="user">
							    	<tr>
								        <td>${user.getUsername()}</td>
								        <td>${user.getPassword()}</td>
								        <td>${user.getFullname()}</td>
								        <td>${user.getSex()}</td>
								        <td>${user.getBirthday()}</td>
										<td>${user.getPhone()}</td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=edit">Edit</a></td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=delete">Delete</a></td>
							      	</tr>
							    	</c:forEach>
							      	
    							</tbody>
  							</table>
						</div>
					</div>
					
    				<div id="menu1" class="tab-pane fade" >
      					<div class="HienThongTin">
 							<div class="Timkiemtheo">
			 				Tìm kiếm:
			 				</div>
							<form id="searchbox" method="get" action="/search" autocomplete="off" class="searchbox1">
							<input type="text" size="15" placeholder="Tìm kiếm..." name="search" id="search2">
							<input id="button-submit" type="submit" value=" "/>
							</form><br><br><br>
							<table class="table" border="2px" style="margin-left: -35px ;font-size:17px">
   								<thead>
      								<tr>
	        							<th>username</th>
	        							<th>Password</th>
	        							<th>Họ tên</th>
								        <th>Giới tính</th>
								        <th>Ngày sinh</th>
								        <th>SĐT</th>
								        <th></th>
								        <th></th>
									</tr>
							    </thead>
							    <tbody id="noidung2">
							    	<c:forEach items="${requestScope.listUser2}" var="user">
							    	<tr>
								        <td>${user.getUsername()}</td>
								        <td>${user.getPassword()}</td>
								        <td>${user.getFullname()}</td>
								        <td>${user.getSex()}</td>
								        <td>${user.getBirthday()}</td>
										<td>${user.getPhone()}</td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=edit">Edit</a></td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=delete">Delete</a></td>
							      	</tr>
							    	</c:forEach>
							      	
    							</tbody>
  							</table>
  							
						</div>
    				</div>

   					<div id="menu2" class="tab-pane fade" >
     					 <div class="HienThongTin">
 							<div class="Timkiemtheo">
			 				Tìm kiếm:
			 				</div>
							<form id="searchbox" method="get" action="/search" autocomplete="off" class="searchbox1">
							<input type="text" size="15" placeholder="Tìm kiếm..." name="search" id="search3">
							<input id="button-submit" type="submit" value=" "/>
							</form><br><br><br>
							<table class="table" border="2px" style="margin-left: -35px ;font-size:17px">
   								<thead>
      								<tr>
	        							<th>username</th>
	        							<th>Password</th>
	        							<th>Họ tên</th>
	        							<th>Lớp học</th>
	        							<th>Giới tính</th>
								        <th>Ngày sinh</th>
								        <th>SĐT</th>
								        <th></th>
								        <th></th>
									</tr>
							    </thead>
							    <tbody id="noidung3">
							    	<c:forEach items="${requestScope.listUser3}" var="user">
							    	<tr>
								        <td>${user.getUsername()}</td>
								        <td>${user.getPassword()}</td>
								        <td>${user.getFullname()}</td>
								        <td>${user.getLopHoc()}</td>
								        <td>${user.getSex()}</td>
								        <td>${user.getBirthday()}</td>
										<td>${user.getPhone()}</td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=edit">Edit</a></td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=delete">Delete</a></td>
							      	</tr>
							    	</c:forEach>
							      	
    							</tbody>
  							</table>
  							
						</div>
    				</div>
    				<div id="menu3" class="tab-pane fade" >
     					 <div class="HienThongTin">
 							<div class="Timkiemtheo">
			 				Tìm kiếm:
			 				</div>
							<form id="searchbox" method="get" action="/search" autocomplete="off" class="searchbox1">
							<input type="text" size="15" placeholder="Tìm kiếm..." name="search" id="search4">
							<input id="button-submit" type="submit" value=" "/>
							</form><br><br><br>
							<table class="table" border="2px" style="margin-left: -35px ;font-size:17px">
   								<thead>
      								<tr>
	        							<th>username</th>
	        							<th>Password</th>
	        							<th>Họ tên</th>
								        <th>Giới tính</th>
								        <th>Ngày sinh</th>
								        <th>SĐT</th>
								        <th></th>
								        <th></th>
									</tr>
							    </thead>
							    <tbody id="noidung4">
							    	<c:forEach items="${requestScope.listUser4}" var="user">
							    	<tr>
								        <td>${user.getUsername()}</td>
								        <td>${user.getPassword()}</td>
								        <td>${user.getFullname()}</td>
								        <td>${user.getSex()}</td>
								        <td>${user.getBirthday()}</td>
										<td>${user.getPhone()}</td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=edit">Edit</a></td>
								        <td><a href="admin_user_edit?maNguoiDung=${user.getUsername()}&command=delete">Delete</a></td>
							      	</tr>
							    	</c:forEach>
							      	
    							</tbody>
  							</table>
  							
						</div>
    				</div>
				</div>
				
			</div>


	
  	</div>
  	<!-- Giới thiệu cuối Trang -->
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
<!-- Thêm user -->
<div class="container" style="position:relative;top:0px;left:00px;">
	<!-- Trigger the modal with a button -->
	<button type="button" class="btn1 btn-info btn-lg" data-toggle="modal" data-target="#phucModal"><b>Thêm user</b></button>
	<!-- Modal -->
	<div class="modal fade" id="phucModal" role="dialog" >
		<div class="modal-dialog" style="position: relative;top: 0px;left: 0px;width: 900px">
			<!-- Modal content-->
			<div class="modal-content" style="position: relative;top: 0px;left: 0px;width: 900px;background-color:DarkSeaGreen">
			<form action="admin_user_edit" method="get" id="insert">
				<div class="modal-header" style="position: relative;top: 0px;left: 0px;width: 900px">
					<button type="button" class="close" data-dismiss="modal" style="position: relative;top: 0px;left: 0px;width:15px;height: 15px;z-index: 9999">&times;</button>
					<h4 class="modal-title" style="position: relative;top: 0px;left: 0px"><span class="glyphicon glyphicon-pencil"></span><b style="margin-left:12px">Thêm user</b></h4>
				</div>
				
				<div class="modal-body" style="position: relative;top: 0px;left: 0px;width: 900px;height: 320px">
					<p>
						<label class="radio-inline"><input type="radio" name="optradio" id="themHocVien" checked="checked" value="3">Học viên</label>
        				<label class="radio-inline"><input type="radio" name="optradio" value="1">Người quản lý câu hỏi</label>
					    <label class="radio-inline"><input type="radio" name="optradio" value="2">Người quản lý đề thi</label>
					    <label class="radio-inline"><input type="radio" name="optradio" value="4">Admin</label>
						<br><br><br>
 						<b class="ThemNQL3">username:</b>
 						<input type="text" name="maNguoiDung" class="ThemNQL1">
 						<b class="ThemNQL4">Ngày sinh:</b>
 						<input type="date"  name="ngaySinh" class="ThemNQL2" style="border-radius: 5px;width:262px;height:37px;background-color:#DCDCDC;Border:solid #000 1px">
						
						<br><br><br>
						<b class="ThemNQL3">Password:</b>
 						<input type="text" name="password" class="ThemNQL1">
 						
						<b class="ThemNQL4">Giới tính:</b>
						<select name="gioiTinh" class="ThemNQL2" data-toggle="dropdown" style="border-radius: 5px;width:262px;height:37px;background-color:#DCDCDC;Border:solid #000 1px">
	 						<option value="Nam">Nam</option> 
	 						<option value="Nữ" >Nữ</option> 
						</select>
						<br><br><br>		
						<b class="ThemNQL3">Họ tên: </b>
 						<input type="text" name="hoTen"class="ThemNQL1">
						<b class="ThemNQL4">SĐT:</b>
 						<input type="text" name="sdt" class="ThemNQL2">
						<br><br><br>
						<b class="ThemNQL4" id="lopHocVien1">Lớp học:</b>
						<select name="lopHoc" class="ThemNQL2" id="lopHocVien" data-toggle="dropdown" style="border-radius: 5px;width:262px;height:37px;background-color:#DCDCDC;Border:solid #000 1px">
	 						<c:forEach var="lh" items="${requestScope.listLopHoc }">
	 						<option value="${lh.getMaLopHoc() }">${lh.getTenLopHoc() }</option>
	 						</c:forEach>
						</select>
					</p>
				</div>
				
				<div class="modal-footer" style="position: relative;top: 0px;left: 0px;width: 900px">
					<button type="button" class="btn" id="btnXoa" data-dismiss="modal" >Hủy</button>
					<button type="submit" class="btn" id="btnThem" value="insert" name="command">Thêm</button>
				</div>
			</form>
			</div>
		</div>
	</div>
</div>


<!-- Đổi hình ảnh đầu trang -->
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
<!-- function tìm kiếm -->
<script>
$("#search1").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung1 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
$("#search2").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung2 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
$("#search3").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung3 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
$("#search4").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung4 tr").filter(function() {
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
if(${not empty sessionScope.trung})
{
	if(${sessionScope.trung})
		{
			alert("Đã tồn tại môn học này ^^");
		}
	<c:remove var="trung" scope="session" />
}
</script>
<script>
if(${not empty sessionScope.dangDung})
{
	if(${sessionScope.dangDung})
		{
			alert("Tài khoản này của bạn mà ^^");
		}
	<c:remove var="dangDung" scope="session" />
}
</script>
<!-- validate -->
<script type="text/javascript">
	$("#btnThem").click(function() {
		$("#insert").validate(
				{
					rules : {
						maNguoiDung : "required",
						password : "required",
						hoTen : "required",
					},
					messages : {
						maNguoiDung : "Không bỏ trống tên đăng nhập ",
						password : "Không bỏ trống password ",
						hoTen : "Không bỏ trống họ tên người dùng ",
					}
				});
	});
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('input[type="radio"]').change(function(){
            if($("#themHocVien").is(":checked")){
            	$("#lopHocVien").show();
            	$("#lopHocVien1").show();
            }
            else if($("#themHocVien").is(":not(:checked)")){
            	$("#lopHocVien").hide();
            	$("#lopHocVien1").hide();
            }
        });
    });
</script>
</body>
</html>