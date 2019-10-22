<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sub</title>
<style>
section {
  padding: 100px 0;
}

html,
body {
  overflow-x: hidden;
}

body {
  font-family: "Roboto";
  font-size: 17px;
  font-weight: 400;
  background-color: #eee;
}

h1 {
  font-size: 400%;
  text-transform: uppercase;
  letter-spacing: 3px;
  font-weight: 400;
  text-align:center;
}

header {
  background: #3f51b5;
  color: #ffffff;
  padding: 150px 0;
}
header p {
  font-family: "Allura";
  color: rgba(255, 255, 255, 0.2);
  margin-bottom: 0;
  font-size: 15px;
  margin-top: -30px;
  text-align:center;
}

.timeline {
  position: relative;
}
.timeline::before {
  content: "";
  background: #c5cae9;
  width: 5px;
  height: 95%;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}

.timeline-item {
  width: 100%;
  margin-bottom: 70px;
}
.timeline-item:nth-child(even) .timeline-content {
  float: right;
  padding: 40px 30px 10px 30px;
}
.timeline-item:nth-child(even) .timeline-content .date {
  right: auto;
  left: 0;
}
.timeline-item:nth-child(even) .timeline-content::after {
  content: "";
  position: absolute;
  border-style: solid;
  width: 0;
  height: 0;
  top: 30px;
  left: -15px;
  border-width: 10px 15px 10px 0;
  border-color: transparent #f5f5f5 transparent transparent;
}
.timeline-item::after {
  content: "";
  display: block;
  clear: both;
}

.timeline-content {
  position: relative;
  width: 45%;
  padding: 10px 30px;
  border-radius: 4px;
  background: #f5f5f5;
  box-shadow: 0 20px 25px -15px rgba(0, 0, 0, 0.3);
}
.timeline-content::after {
  content: "";
  position: absolute;
  border-style: solid;
  width: 0;
  height: 0;
  top: 30px;
  right: -15px;
  border-width: 10px 0 10px 15px;
  border-color: transparent transparent transparent #f5f5f5;
}

.timeline-img {
  width: 30px;
  height: 30px;
  background: #3f51b5;
  border-radius: 50%;
  position: absolute;
  left: 50%;
  margin-top: 25px;
  margin-left: -15px;
}

a {
  background: #3f51b5;
  color: #ffffff;
  padding: 8px 20px;
  text-transform: uppercase;
  font-size: 14px;
  margin-bottom: 20px;
  margin-top: 10px;
  display: inline-block;
  border-radius: 2px;
  box-shadow: 0 1px 3px -1px rgba(0, 0, 0, 0.6);
}
a:hover, a:active, a:focus {
  background: #32408f;
  color: #ffffff;
  text-decoration: none;
}

.timeline-card {
  padding: 0 !important;
}
.timeline-card p {
  padding: 0 20px;
}
.timeline-card a {
  margin-left: 20px;
}

.timeline-item .timeline-img-header1 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Sungryemoon.jpg") center center no-repeat;
  background-size: cover;
}

.timeline-item .timeline-img-header2 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/MunwhaStation.jpg") center center no-repeat;
  background-size: cover;
}

.timeline-item .timeline-img-header3 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Deuksugung.jpg") center center no-repeat;
  background-size: cover;
}

.timeline-item .timeline-img-header4 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Gwanghwamun.jpg") center center no-repeat;
  background-size: cover;
}

.timeline-item .timeline-img-header5 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Gyeonghoeru.jpg") center center no-repeat;
  background-size: cover;
}

.timeline-item .timeline-img-header6 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Seoul.jpg") center center no-repeat;
  background-size: cover;
}
.timeline-img-header1 {
  height: 200px;
  position: relative;
  margin-bottom: 20px;
}
.timeline-img-header1 h2 {
  color: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 20px;
}

.timeline-img-header2 {
  height: 200px;
  position: relative;
  margin-bottom: 20px;
}
.timeline-img-header2 h2 {
  color: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 20px;
}

.timeline-img-header3 {
  height: 200px;
  position: relative;
  margin-bottom: 20px;
}
.timeline-img-header3 h2 {
  color: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 20px;
}

.timeline-img-header4 {
  height: 200px;
  position: relative;
  margin-bottom: 20px;
}
.timeline-img-header4 h2 {
  color: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 20px;
}

.timeline-img-header5 {
  height: 200px;
  position: relative;
  margin-bottom: 20px;
}
.timeline-img-header5 h2 {
  color: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 20px;
}

.timeline-img-header6 {
  height: 200px;
  position: relative;
  margin-bottom: 20px;
}
.timeline-img-header6 h2 {
  color: #ffffff;
  position: absolute;
  bottom: 5px;
  left: 20px;
}

blockquote {
  margin-top: 30px;
  color: #757575;
  border-left-color: #3f51b5;
  padding: 0 20px;
}

.date {
  background: #ff4081;
  display: inline-block;
  color: #ffffff;
  padding: 10px;
  position: absolute;
  top: 0;
  right: 0;
}

@media screen and (max-width: 768px) {
  .timeline::before {
    left: 50px;
  }
  .timeline .timeline-img {
    left: 50px;
  }
  .timeline .timeline-content {
    max-width: 100%;
    width: auto;
    margin-left: 70px;
  }
  .timeline .timeline-item:nth-child(even) .timeline-content {
    float: none;
  }
  .timeline .timeline-item:nth-child(odd) .timeline-content::after {
    content: "";
    position: absolute;
    border-style: solid;
    width: 0;
    height: 0;
    top: 30px;
    left: -15px;
    border-width: 10px 15px 10px 0;
    border-color: transparent #f5f5f5 transparent transparent;
  }
}


</style>
</head>
<body>
<header>
  <div class="container text-center">
    <h1>A 관광코스</h1>
  </div>
</header>

<section class="timeline">
  <div class="container">
<div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header1">
          <h2>숭례문 기념 촬영</h2>
          &nbsp;
        </div>
        <p>관광객 여러분에 추억을 만들어 주기 위해 저희 다모아 택시는 숭례문에서 기념 촬영을 요청하신 관광객분만 사진을 찍어드립니다</p>
      	&nbsp;
      </div>
    </div>   

    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header2">
          <h2>문화역 284에서 박물관 전시 관람</h2>
          &nbsp;
        </div>
        <p>박물관 전시 관람을 하는데 전시관람의 규칙을 지켜 주시기 바랍니다.</p>
        &nbsp;
      </div>
    </div>   

<div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header3">
          <h2>덕수궁 사진 촬영</h2>
        </div>
        <p>조선시대의 근대시대의 왕인 고종에 대한 역사를 알아봅시다</p>
      	&nbsp;
      </div>
    </div>   

<div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header4">
          <h2>광화문 사진촬영</h2>
        </div>
        <p>관광객 여러분에 추억을 만들어 주기 위해 저희 다모아 택시는 숭례문에서 기념 촬영을 요청하신 관광객분만 사진을 찍어드립니다.</p>
      	&nbsp;
      </div>
    </div>   

    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header5">
          <h2>경복궁 고궁관람</h2>
        </div>
        <p>조선시대의 궁은? 경복궁의 대한 역사와 왕들의 이야기를 세세하게 들을 수 있는 경험  ※단! 해설가는 저희가 미리 말씀안하시면 받아들일 수 없는점 부탁드립니다.</p>
      	&nbsp;
      </div>
    </div>   

    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header6">
          <h2>서울광장 문화행사</h2>
        </div>
        <p>※서울 광장에서 진행하는 문화행사 없을 경우에는 관광택시 운행을 종료합니다 .이 점 양해 부탁드립니다.</p>
      	&nbsp;
      </div>
    </div>  

  </div>
</section>

</body>
<script src="./js/Coursesub.js"></script>
</html>