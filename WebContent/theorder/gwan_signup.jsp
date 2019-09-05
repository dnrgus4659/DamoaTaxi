<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>회원가입</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="css/signup_main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">관광 택시 회원가입</h2>
                </div>
                <div class="card-body">
                    <form name="form" method="POST" action="Travel_insert.jsp" onsubmit="return checkAll()">
                        <div class="form-row">
                            <div class="name">아이디</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="travel_ID">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">비밀번호</div>
                            <div class="value">
                                <input type="password" class="input--style-6" type="text" name="travel_Password">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">비밀번호 확인</div>
                            <div class="value">
                                <input type="password" class="input--style-6" type="text" name="travel_Password_check">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">이름</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="travel_name">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">휴대폰번호</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="travel_phone_number" placeholder="000-0000-0000">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">이메일</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="email" name="travel_email" placeholder="example@email.com">
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style='display:none;'>
                            <div class="name">포인트</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="travel_point" value="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">우편번호</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="travel_zipcode">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">주소</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="travel_address">
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style='display:none;'>
                            <div class="name">포인트</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="travel_category" value="T">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                    		<button class="btn btn--radius-2 btn--blue-2" type="submit">회원가입</button>
                		</div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>
    <script src="js/Travel_validation.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
