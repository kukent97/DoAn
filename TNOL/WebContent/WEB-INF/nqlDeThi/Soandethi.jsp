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
        #modal{position: absolute;top:0%;left: 0%;  -moz-transform: translate(0%,0%);transform: translate(0%,0%);
            z-index: 999;background-color:transparent;width:90%;height: 260%}
        .input {margin: 0px;padding: 0px 16px}
        .modal-header{background-color:PaleTurquoise;padding: 5px 20px;color: white;width:1349px}
        .modal-header:after{content:"";clear: both;display: table}
        .modal-content{padding: 8px 5px}
        .modal-content button{font-size: 15px; text-align: center;
            margin-left: 78%;margin-top:0px;width:10%;height: 30%}
        .modal-footer{position:absolute;background-color:#50c1e9;padding: 5px 10px;bottom: 0px;left: 0px;width: 100%}
        .modal-footer hh{margin-right: 200px;float: right;color:red;text-decoration: none}
        .modal-content input[type=radio] {display: inline-block;}
	.table1{background-color:PaleTurquoise !important;text-aglign="left";text-color:red;color:DarkSlateGray;position:relative; left:7px;top:155px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1349px; height: 20px}
	ul{padding:0px;list-style:none}
 	.hh{width:400px;overflow:hidden}
	.nhaptimkiem:hover{color: red}
	.btn{ color:DarkSlateGray; background-color:LightSlateGray; padding:5px 20px; font-size:15px}
	.btn:hover{background-color:DarkSlateGray ;color:Cyan}
	.HienThongTin{background-color:#e0e0e0; border: 0px solid DarkSlateGray;padding-left:40px; padding-top:45px;color: red ; font-size: 20px; 
	width:1050px; height: 1100px;position:relative; left:285px;top:-288px;border-radius: 10px}
	a:hover{color:DarkBlue}
	body{background-color:DarkCyan}
	.tb2:hover{color:DarkBlue;align :center}
	.Anh{text-decoration: none}
	.Anh:hover{color:red; background:#000;border-radius: 8px;}
	}
	.ChuChay{text-decoration:underline }
	.tbl1{padding-left:15px;padding-top:20px;padding-bottom:20px;border-bottom: DarkCyan solid 4px}
	.xoa{width: 90px;height:34px; font-size:21px;background-color: FireBrick;color:#fff;position: fixed;left: 850px;border-radius: 10px}
	.soLuongCauHoi{position:fixed;left:550px;width:250px;border-radius: 5px;color:#000}
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
<div id="modal">
    	<div class ="modal-header">
	<IMG src="image/logo.png" style="margin-left:100px; width:800px">
	<label for="ttt" style="display: block; margin-left: 500px" class="ha"><span></span> <b>THI TRẮC NGHIỆM ONLINE</b></label>
	</div><br>

	<div class="w3-content w3-section" style="max-width:1350px; max-height:100px;position:relative;top:-25px">
	  <img class="mySlides" src="image/hh3.png" style="width:1350px">
	  <img class="mySlides" src="image/hh2.png" style="width:1350px">
	  <img class="mySlides" src="image/hh1.png" style="width:1350px">
	</div>

 	<div style="width:100%;height:1600px;position:fixed;top:400px">

	 <table class="table2" style="border-top: #ff0000 solid 2px;border-bottom: #ff0000 solid 2px">
	<tr>
			<th><b class="ADMIN" style="padding-left:10px;font-size:23px ;margin-right:220px" >NGƯỜI QUẢN LÝ ĐỀ THI</b></th>
	<th><a href="logout"><span class="tb2" >ĐĂNG XUẤT</span></a></th>
	</tr>      
	</table> 
			<table class="table1">
		    	<tr><th align ="left" class="tbl1"><a href="nqldt_trangChuList" ><span class="glyphicon glyphicon-home"></span>TRANG CHỦ</a></th></tr>
		        <tr><th align ="left" class="tbl1"><a href="nqldt_deThiList">DANH SÁCH ĐỀ THI</a></th></tr>
		        <tr><th align ="left" class="tbl1"><a href="nqldt_soanDeThi" style="color:DarkBlue">SOẠN ĐỀ THI</a></th></tr>
		        <tr><th align ="left" class="tbl1"><a href="nqldt_kyThiList">DANH SÁCH KỲ THI</a></th></tr>
		    	<tr><th align ="left" class="tbl1"><a href="nqldt_userInfo">THÔNG TIN CÁ NHÂN</a></th></tr>
		    	<tr><th align ="left" class="tbl1" style="border-bottom: DarkCyan solid 0px"><a href="">HƯỚNG DẪN</a></th></tr>
			</table><br><br>
				
 		<div class="HienThongTin">
 			<form action="nqldt_themDeThi" method="get">
	 		<span class="glyphicon glyphicon-pencil" style="color:#000"></span><b style="margin-left:12px; color:#000">SOẠN ĐỀ THI</b><br/><br/>
			<b style="color:#000">Tên đề thi:</b> 
			<input id="TieuDe" type="text" class="form-control" name="tenDeThi" placeholder="Tên đề thi" style="color:#000;background-color:#F7F8E0;width: 600px;font-size:20px"><br/>
			<b style="color:#000">Thời gian thi:</b> 
			<input id="TieuDe" type="text" class="form-control" name="thoiGianThi" placeholder="Thời gian thi" style="color:#000;background-color:#F7F8E0;width: 600px;font-size:20px"><br/>
			<b style="color:#000">Người tạo đề thi:</b> 
			<input id="TieuDe" type="text" class="form-control" name="nguoiTaoDeThi" value="${requestScope.nguoiDung.getFullname() }" readonly style="color:#000;background-color:#F7F8E0;width: 600px;font-size:20px"/><br/>
			
			<b style="color:#000">Môn học: </b>
			<select data-toggle="dropdown" style="background-color:#F7F8E0;color:#000;width:250px;height:37px;border-radius:5px" id="monHocChose">
				<c:forEach var="mh" items="${requestScope.listMonHoc }">
			 		<option value="${mh.getSubjectId() }">${mh.getSubjectName() }</option> 
			 	</c:forEach>
			</select>
			<b style="color:#000">Nhóm câu hỏi:</b> 
			<select data-toggle="dropdown" style="background-color:#F7F8E0;color:#000;width:250px;height:37px;border-radius: 5px" id="nhomCauHoiChose">
			</select>
			<input id="themNhomCauHoi" type="button" class="button" name="them" value="Thêm nhóm câu hỏi" style="width: 170px;height:45px; font-size:20px;background-color: LightBlue;color:Black;position: relative;;left: 0px;top:0px;border-radius: 8px"/>
			<br/><br/>
			<div id="themNCH"></div>
			<br/><br/><br/><input id="themDeThi" type="submit" class="button" name="them" value="Thêm đề thi" style="width: 150px;height:45px; font-size:20px;background-color: LightBlue;color:Black;position: relative;;left: 650px;top:-45px;border-radius: 8px"/>
			</form>	
   			 <br/><br/>
  			  <br/>
    
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
	var shownhomCauHoi =function(){
		<c:forEach items = "${requestScope.listMonHoc }" var="monHocChose" >
		if($("#monHocChose").val()==${monHocChose.getSubjectId()})
		{
			$("#nhomCauHoiChose").html(function(){
				var rs="";
				<c:forEach items="${nchDal.listNhomCauHoiTheoMaMonHoc(monHocChose.getSubjectId())}" var="themeFollowSubject">
					rs+="<option value='${themeFollowSubject.getMaNhomCauHoi()}'>${themeFollowSubject.getTenNhomCauHoi()}</option>";
				</c:forEach>
				return rs;
			});
		}
		</c:forEach>
	};
	$("#monHocChose").change(shownhomCauHoi);
	shownhomCauHoi();
</script>

<script>
	$("#themNhomCauHoi").click(function(){
		var nhomCH = $("#nhomCauHoiChose").find("option:selected");
		var div = "<div id ='"+ nhomCH.val()+"'>" ;
		var TNCH=nhomCH.text();
		var spans = $("span").get();
		for(var sp in spans){
			var span = spans[sp];
			if(TNCH===$(span).text())
				return;
		}
		var f=parseInt(nhomCH.val());
		<c:forEach var="k" items="${requestScope.listNhomCauHoi}">
			if(f==${k.getMaNhomCauHoi()}){
				var soLuongCauHoi="<input type='number' min='0' max='${chDal.soLuongCauHoiTheoMaNhomCauHoi(k.getMaNhomCauHoi())}' name='soLuongCauHoi_"+nhomCH.val()+"'class='soLuongCauHoi' placeholder='Nhập số lượng câu hỏi'/>";
				var xoa="<input type='button' onclick='deleteNCH("+nhomCH.val()+")' class='button xoa' name='xoaNhomCauHoi' value='xoa'><br><br>";
				var tenNhomCauHoi="<span style='color:#000'>"+TNCH+"</span>";
			}
		</c:forEach>
		$("#themNCH").append(div + tenNhomCauHoi+":"+soLuongCauHoi+xoa + "</div>");
		
	});
	function deleteNCH(id){
		$("#"+id).remove();
		var xoa=$(".xoa").get();
		if(xoa.lenght==undefined)
			$("#monHocChose").prop("disabled",false);
	}
</script>
<script>
	$("#themNhomCauHoi").click(function(){
		$("#monHocChose").prop("disabled",true);
	})
</script>
<script>
	$("#themDeThi").click(function(){
		$("#monHocChose").prop("disabled",false);
	})
</script>
<!-- bắt thông báo thêm sửa xóa-->
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
</body>
</html>