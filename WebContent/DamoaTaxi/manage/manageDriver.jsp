<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="manage.driverDAO" %>
<%@ page import="manage.driverDTO" %>
<%@ page import="java.util.ArrayList" %>
<%
	driverDAO dbPro = driverDAO.getInstance();

    ArrayList<driverDTO> driverIList = new driverDAO().getIList();
    ArrayList<driverDTO> driverTList = new driverDAO().getTList();
%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- <meta name="description" content="">
  <meta name="author" content=""> -->

  <title>관리페이지</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  
  <link href="css/driver.css?ver=1" rel="stylesheet">

</head>

<body>

  <div id="wrapper">
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
      <div class="container-fluid d-flex align-items-center">
        <h1 class="mt-4">기사 관리페이지</h1>
      </div>
    </div>
    <div class="sidenav">
	  <a href="#" data-toggle="modal" data-target="#driverInsert_Modal">기사등록</a>
	  <a href="#services" data-toggle="modal" data-target="#driverDelete_Modal">기사삭제</a>
	</div>
	<!-- Modal -->
	<div id="driverInsert_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<h4 class="modal-title">기사 등록하기</h4>
						<button type="button" class="close" data-dismiss="modal">
							<span class="sr-only">Close</span>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>	
					<form action="../../driverInsert" method="post" enctype="multipart/form-data" name="driverForm">
					<div class="modal-body">
						<div class="input-group mt-2">
						<table class="table table-borderless" style="vertical-align: middle;">
							<tr>
								<td style="vertical-align: middle; width:104px;">이름</td>
								<td><input type="text" class="form-control" name="name" placeholder="이름"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">나이</td>
								<td><input type="text" class="form-control" name="age" placeholder="나이"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">성별</td>
								<td>
									<select class="custom-select" name="sex">
										<option value="" disabled selected>성별 선택</option>
										<option value="남">남자</option>
										<option value="여">여자</option>
									</select>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">경력</td>
								<td><input type="text" class="form-control" name="career" placeholder="경력(년차만 입력)"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">카테고리</td>
								<td>
									<select class="custom-select" name="category">
										<option value="" disabled selected>기사 종류 선택</option>
										<option value="Idriver">장애인 택시 기사</option>
										<option value="Tdriver">관광 택시 기사</option>
									</select>
								</td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">휴대폰번호</td>
								<td><input type="text" class="form-control" name="phone_num" placeholder="-없이 입력"></td>
							</tr>
							<tr>
				  				<td style="vertical-align: middle; width:104px;">프로필사진</td>
				  				<td>					  
	                                <div class="input-group">
									  <div class="custom-file">
									    <input type="file" class="custom-file-input" name="file" id="inputGroupFile01">
									    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
									  </div>
									</div>
				  				</td>
			  				</tr>
						</table>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary" value="등록">
					</div>
					</form>		
				</div>
			</div>
		</div>
	</div>
	<div id="driverDelete_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<h4 class="modal-title">기사 삭제</h4>
						<button type="button" class="close" data-dismiss="modal">
							<span class="sr-only">Close</span>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>	
					<form action="../../driverDelete" method="post" name="driverDeleteForm">
					<div class="modal-body">
						<div class="input-group mt-2">
						<table class="table table-borderless" style="vertical-align: middle;">
							<tr>
								<td style="vertical-align: middle; width:104px;">등록번호</td>
								<td><input type="text" class="form-control" name="num" placeholder="번호"></td>
							</tr>
						</table>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary" value="삭제" onclick="return confirm('정말로 삭제하시겠습니까?')">
					</div>
					</form>		
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal -->
    <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">장애인 택시 기사</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">관광 택시 기사</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table table-hover" cellspacing="0" style="text-align: center;">
                                    <thead>
                                        <tr>
                                            <th>등록번호</th>
                                            <th>이름</th>
                                            <th>나이</th>
                                            <th>성별</th>
                                            <th>경력</th>
                                            <th>전화번호</th>
                                            <th>프로필사진</th>
                                            <th>예약 여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
										for(int i = 0; i<driverIList.size(); i++){
										  				driverDTO Idriver = driverIList.get(i);
									%>
                                    
                                        <tr>
                                            <td><%=Idriver.getNum() %></td>
                                            <td><%=Idriver.getName() %></td>
                                            <td><%=Idriver.getAge() %>세</td>
                                            <td><%=Idriver.getSex() %></td>
                                            <td><%=Idriver.getCareer() %>년차</td>
                                            <td><%=Idriver.getPhone_num() %></td>
                                            <td><%=Idriver.getFile() %></td>
                                            <td><%=Idriver.getStatus() %></td>
                                        </tr>
                                    <%
										}
                                    %>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <table class="table" cellspacing="0" style="text-align: center;">
                                    <thead>
                                        <tr>
                                            <th>등록번호</th>
                                            <th>이름</th>
                                            <th>나이</th>
                                            <th>성별</th>
                                            <th>경력</th>
                                            <th>전화번호</th>
                                            <th>프로필사진</th>
                                            <th>예약 여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
											for(int i = 0; i<driverTList.size(); i++){
										  				driverDTO Tdriver = driverTList.get(i);
										%>
	                                    
	                                        <tr>
	                                            <td><%=Tdriver.getNum() %></td>
	                                            <td><%=Tdriver.getName() %></td>
	                                            <td><%=Tdriver.getAge() %>세</td>
	                                            <td><%=Tdriver.getSex() %></td>
	                                            <td><%=Tdriver.getCareer() %>년차</td>
	                                            <td><%=Tdriver.getPhone_num() %></td>
	                                            <td><%=Tdriver.getFile() %></td>
	                                            <td><%=Tdriver.getStatus() %></td>
	                                        </tr>
	                                    <%
											}
	                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->
  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	$('.custom-file-input').on('change', function() {
		let fileName = $(this).val().split('\\').pop(); 
		$(this).next('.custom-file-label').addClass("selected").html(fileName);
	});
  </script>
</body>

</html>