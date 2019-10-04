<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	  <a href="#about" data-toggle="modal" data-target="#ID_modi_Modal">기사등록</a>
	  <a href="#services">기사삭제</a>
	</div>
	<!-- Modal -->
	<div id="ID_modi_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
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
								<td><input type="text" class="form-control" name="sex" placeholder="성별"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">경력</td>
								<td><input type="text" class="form-control" name="career" placeholder="경력"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">카테고리</td>
								<td><input type="text" class="form-control" name="category" placeholder="카테고리"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle; width:104px;">휴대폰번호</td>
								<td><input type="text" class="form-control" name="phone_num" placeholder="000-0000-0000"></td>
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
	<!-- end Modal -->
    <section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">장애인 택시 기사</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">관광 택시 기사</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Project Tab 3</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Project Name</th>
                                            <th>Employer</th>
                                            <th>Awards</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Project Name</th>
                                            <th>Employer</th>
                                            <th>Time</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Contest Name</th>
                                            <th>Date</th>
                                            <th>Award Position</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
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