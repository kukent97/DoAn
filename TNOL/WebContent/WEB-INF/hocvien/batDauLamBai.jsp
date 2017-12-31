<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.username}">
<c:redirect url="login"/>
</c:if>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

	.tbl1{position:fixed; top:250px; left:1100px; width:250px; height:200px}
	.dongho{border-radius: 7px; font-size:28px}
	.selected11{background-color: red}
	</style>
		<title>Đồng hồ đếm ngược bằng JS</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            span{border: solid 1px #ACACAC; padding: 2px;}
        </style>
        <script language="javascript">
 
            var h = null; // Giờ
            var m = null; // Phút
            var s = null; // Giây
             
            var timeout = null; // Timeout
             
            function start()
            {
		          if (h === null)
		          {
		        	  
		              h = <fmt:formatNumber value="${requestScope.thoiGianLamBai/60}" maxFractionDigits="0"/>;
		              m = ${requestScope.thoiGianLamBai%60};
		              s = 00;
		          }
		
		          /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
		          // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
		          //  - giảm số phút xuống 1 đơn vị
		          //  - thiết lập số giây lại 59
		          if (s === -1){
		              m -= 1;
		              s = 59;
		          }
		
		          // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
		          //  - giảm số giờ xuống 1 đơn vị
		          //  - thiết lập số phút lại 59
		          if (m === -1){
		              h -= 1;
		              m = 59;
		          }
		
		          // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
		          //  - Dừng chương trình
		          if (h == -1){
		              clearTimeout(timeout);
		              alert('Hết giờ');
		              $("#btn_nopBai").click();
		              return false;
		          }
		
		          /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
		          document.getElementById('h').innerText = h.toString();
		          document.getElementById('m').innerText = m.toString();
		          document.getElementById('s').innerText = s.toString();
		
		          /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
		          timeout = setTimeout(function(){
		              s--;
		              start();
		          }, 1000);
        	}
         </script>
         
        <script>
        $(document).ready(function(){
            $("#formCH").hide();
            $("#batdau").click(function(){
                $("#formCH").show();
                $("#formBD").hide();
                $("#batdau").hide();
            });
           
        });
        </script>
		<script type="text/javascript">
		function getBack() {
			history.back();
		}		
	</script>		
</head>
<body>
	<div id="model" style="background-color: DarkGrey;width: 1349px;height:1900px">
		<form action="hocVien_nopBai" id="formCH" style="position:relative; top:50px; left:50px;width:1000px;height:1700px; background-color: #fff; border-radius:20px">
			<div style="position:relative;top:50px; left:60px; font-size:25px">
			<input name="maDeThi" type="hidden" style="font-size:20px" value="${requestScope.maDeThi }"/>
			<input type="hidden" name="maKyThi" value="${requestScope.maKyThi }"/>
					<u style="font-size:20px"></u>Mã đề thi: ${requestScope.maDeThi } <br><br>
			</div>
			<div class="table table-striped" style="width:600px;position:relative;top:50px; left:60px" id="anCauHoi">
			      	<c:set var="i" value="0"></c:set>
				    <c:forEach var="ch" items="${requestScope.listCauHoiTheoMaDeThi}">
					    <c:set var="list11" value="${requestScope.text_questionDal.listDapAnTheoMaCauHoi(ch.getMaCauHoi())}"></c:set>
					    <c:set var="i" value="${i+1}"></c:set>
					    <tr>
							<td>
							<div id="${i-1}" style="display: none">
								Câu <c:out value="${i}"></c:out>: ${ch.getNoiDungCauHoi()}<br>
								<c:forEach items="${list11}" var="da">
									<input type="radio"name="dapAn_${i-1}"value="${da.getMaDapAn()}">${da.getTenDapAn()}</label> <br>
								</c:forEach>
							</div>
							</td>
					    </tr> 
				    </c:forEach>
		    
	    	</div>
	    	<div style="position:fixed;top:180px;left:770px;width:300px" id="haha">
	    	<c:set var="dem" value="0"></c:set>
	    		<c:forEach var="ch" items="${requestScope.listCauHoiTheoMaDeThi}">
	    			<input onclick="hienCauHoi(${dem})" id="btn_${dem}" type="button" class="btn" style="width:80px;background-color:DarkCyan;color:#fff;margin-top:7px;margin-left:7px" value="Câu ${dem+1}"/>
	    			<c:set var="dem" value="${dem+1}"></c:set>
	    		</c:forEach>
	    	</div>
		    <div class="tbl1">   
			    <button id="btn_nopBai" type="submit"class="btn" style="position:relative;top:150px;left:25px;border-radius:10px; font-size:35px;background-color: FireBrick;color:DarkSeaGreen"><b>Nộp bài</b></button>
				<br/>
		        <div style="background-color: #000;width:200px; text-align:center; padding-top:10px;padding-bottom:10px;color:#fff;border-radius:10px">
		            <span id="h" class="dongho">Giờ</span> :
		            <span id="m" class="dongho">Phút</span> :
		            <span id="s" class="dongho">Giây</span>
		        </div>
   			</div>
		</form>
		
		<div id="formBD1">
			<form action="hocVien_lichThi" id="formBD" style="position:fixed;top:200px;left:400px;width:500px;background-color: #fff;height:300px;border-radius:10px">
				<b style="position:relative;top:110px;left:250px;font-size:25px">Làm bài thi</b>
				<button type="submit" class="btn" style="position:relative;top:200px;left:220px;font-size:15px">Trở về</button>
			</form>
		</div>
		<button id="batdau" value="Start" onclick="start()" style="position:fixed;top:300px;left:500px;font-size:30px; color:Aquamarine; background-color: Crimson; border-radius:8px">Bắt đầu</button> 
		
	</div>

<script>
	var i=0;
	function hienCauHoi(id) {
		$("#"+i).hide();
		$("#"+id).show();
		
		var k=$("input[name='dapAn_"+i+"']:checked").val();
		if(k==undefined)
		{
			$("#btn_"+i).css('background','DarkCyan');
		}
		$("#btn_"+id).css('background','DarkGray');
		i=id;
	}
	hienCauHoi(i);
</script>

</body>
</html>