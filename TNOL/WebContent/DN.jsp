<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Insert title here</title>
    <meta charset="UTF-8">
    <title>Thi trac nghiem online</title>
    <link rel="stylesheet" type="text/css" href="style3.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style>
	.table1{background-color:PaleTurquoise !important;text-color:red;color:DarkSlateGray;position:relative; left:7px;top:78px ;
 			font-size: 17px;width:250px; height: 380px;padding-top: 5px;padding-top: 5px;padding-left:13px;border-top-left-radius:7px;
 			border-top-right-radius:80px; border-bottom-left-radius:7px;border-bottom-right-radius:7px}
 	.table2{background-color:PaleTurquoise !important;position:relative; color:DarkSlateGray;top:145px ;font-size: 17px;width:1350px; height: 20px}
</style>
</head>

<body>
	<div class="container " id="BlockTitle">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid" >
					<div class="nav navbar-nav navbar-left">				      	
				      	<li class="dropdown">
				      		<a class="dropdown-toggle" data-toggle="dropdown"style="padding-left: 0">
				      			<span class="glyphicon glyphicon-th-list" style="padding-right: 2px"></span>MENU <span class="caret"></span></a>
					        <ul class="dropdown-menu">
					        	<li> <a href="loginController"><img src="Image/home-icon.png" style="width: 20px; height: 20px">Trang Chủ</a><hr width="100%" style="margin: 0"/></li>
					          	<li> <a href="userManagementSevlet"><img src="Image/examination-512.png" style="width: 20px; height: 20px">Quản lý User</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="personInfomationController?command=personAdmin"><img src="Image/user.png" style="width: 20px; height: 20px">Thông tin Admin</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="changePasswordController"><img src="Image/housing_contract.png" style="width: 20px; height: 20px">Đổi Mật Khẩu</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/question.jpg" style="width: 20px; height: 20px">Giải Đáp Thắc Mắc</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Hướng Dẫn Sử Dụng</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="logoutController"><img src="Image/logout.png" style="width: 20px; height: 20px;">Thoát</a></li>
					        </ul>					        
				     	</li>	
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D; padding-left: 500px" >QUẢN LÝ USER</p>     					      	
				   	 </div>
				     			    					
				    	<ul class="nav navbar-nav navbar-right">
					      	<li><a href="#"><span class="glyphicon glyphicon-user"></span> liên hệ </a></li>
					      	<li><a href="logoutController"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
				    	</ul>
				  
				 </div>			
			</nav>
	</div>

	<div class="container " id="BlockBody">	
		<div class="col-sm-2 " >
			<p style="font-style: inherit; font-size: 15px; color: #968354">xin chào ${fullNameSession }!</p>
			
	 		<hr width="100%" align="left" />
			<div style="border: 0.1px solid #E4DBCF;  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 1px 0 rgba(0, 0, 0, 0.1); margin-top: 30px; -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;
									-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px; margin-bottom: 20px">	 			
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-topleft:20px;	-webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none"> Trang Chủ</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0; background-color:#DAD5C8" class="hover_xam" style="text-decoration: none"><img src="Image/examination-512.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="userManagementSevlet" style="text-decoration: none"> Quản Lý User</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=personAdmin" style="text-decoration: none"> Thông Tin Admin</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="changePasswordController" style="text-decoration: none"> Đổi Mật Khẩu</a> </p>	
				<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/question.jpg" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Giải Đáp Thắc Mắc</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Hướng Dẫn Sử Dụng</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-bottomright:20px;-webkit-border-bottom-right-radius:20px" class="hover_xam"><img src="Image/logout.png" style="width: 20px; margin-right: 3px; margin-bottom: 0"><a href="logoutController" style="text-decoration: none"> Thoát</a> </p>					 				 
	 		</div>
	 	</div>
	 	 <div class="col-sm-10" >
	    	<hr width="100%" />
	    	<div class="row">
	    		<div class="col-md-3">
	    			<button type="button" class="btn btn-info btn-lg buttonHover button_properties" data-toggle="modal" data-target="#myCreationExam" ><span class="glyphicon glyphicon-plus"></span>Tạo User</button>
	    		</div>
	    		<div class="col-md-9"  style="background-color: #ad972b; color: black; 
	    		-moz-border-radius-topleft:40px;
-webkit-border-top-left-radius:40px;-moz-border-radius-bottomright:40px;
-webkit-border-bottom-right-radius:40px; ">
	    		<div class="form-group">

						    <label class="control-label col-sm-4" for="SearchExam" style="padding-top: 12px; padding-left: 100px; font-size:20px">Tìm Kiếm User: </label>
						    <div class="col-sm-6">
							  	<form class="navbar-form visible-lg" role="search">
						        <div class="input-group-btn">
						            <input type="text" class="form-control" placeholder="Tìm kiếm ..." name="search" id="search"><i class="glyphicon glyphicon-search"></i>
						        </div>
						         
						    	</form>
						    	
							</div>
					</div>
	    		</div>	    		   	
	    		</div>
	    		<hr width="100%" align="left"/>
	    		<div style="overflow: auto;width: 100%; height: 400px">
	 			<table class="table table-hover table-bordered" style="margin-auto: 10px; text-align: center;">
	 				<thead>
						<tr>						 
		       				<th  style="text-align: center;">UserName</th>       			
		        			<th  style="text-align: center;">FullName</th>
		        			<th  style="text-align: center;">Role</th>
		        			<th  style="text-align: center;">Gener</th>
		        			<th  style="text-align: center;">Phone</th>
		        			<th  style="text-align: center;">Avatar</th>
		        			<th  style="text-align: center;">Sửa</th>
		        			<th  style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody id="noidung">
						
						<c:forEach var="user" items="${requestScope.userList}">
						<tr>
							<td>${user.getUserName() }</td>
		        			<td>${user.getFullName() }</td>
		        			<td><c:forEach var="role" items="${requestScope.roleList }">
		        				<c:if test="${user.getRoleID()==role.getRoleID() }">
		        					${role.getRoleName() }
		        					<%-- ${userList.get(user.getRoleID()).getroleName()} --%>
		        				</c:if>
		        			</c:forEach>
		        			</td>
		        			<td>${user.getGener() }</td>
		        			<td>${user.getPhone() }</td>
		        			<td>${user.getAvatar() }</td>
		        			
							<td  style="text-align: center"><a href="updateController?command=updateUser&userName=${user.getUserName() }" class="icon_edit"><i class="fa fa-gear" style="font-size:24px"></i></a></td>
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="color: red; padding: 0; background-color: white; border: 0"><i class="fa fa-close" style="font-size:30px"></i></button></td>
							   <!-- Modal Delete -->
							 	<div class="modal fade" id="myModal" role="dialog">
								    <div class="modal-dialog">	    
								      	<!-- Modal content-->
								        <div class="modal-content">
								        	<div class="modal-header">
								          		<button type="button" class="close" data-dismiss="modal">&times;</button>
								          		<h4 class="modal-title" style="color: red;text-align: center">THÔNG BÁO</h4>
								          	</div>
								        	
								        	
								          		<p style="color: #440000; font-size: 30px; text-align: center; padding-top: 10px">Bạn có chắc chắn xóa User đó không !!!</p>
								          		
								        
								        	<div class="modal-footer">
								         		<button type="button" class="btn btn-default" ><a href="deleteController?command=deleteUser&userName=${user.getUserName() }" style="text-decoration-line: none; color: red">Có</a></button>
								         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>
								        	</div>
								      	</div>      
								    </div>
								</div> 
							</tr>	
						</c:forEach>						
					</tbody>
	 			</table>
	 		</div>
	    </div>
	 </div>
	 
</body>
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
</html>