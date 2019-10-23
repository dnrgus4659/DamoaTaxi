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
  text-align:Center;
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
  font-size: 60px;
  margin-top: -30px;
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
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/NationalMuseum.jpg") center center no-repeat;
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

.timeline-item .timeline-img-header2 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/SeoulMuseum.jpg") center center no-repeat;
  background-size: cover;
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

.timeline-item .timeline-img-header3 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Ujeong.jpg") center center no-repeat;
  background-size: cover;
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
    <h1>C 관광코스</h1>
  </div>
</header>

<section class="timeline">
  <div class="container">
    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header1">
          <h2>덕수궁 옆 국립 현대 미술관</h2>
        </div>
        <p>
        국립현대미술관은 1969년 개관 이래 한국 현대미술의 역사와 자취를 함께하며 대한민국을 대표하는 문화공간으로 자리 잡아 왔습니다</p>
    <P>국립 현대 미술관은 1986년 과천, 1998년 덕수궁, 2013년 서울에 이어 2018년 청주 개관으로 4관 체계를 만들었으며, 유기적이면서도 각각의 색깔을 지니고 있습니다.<br>
        건축,디자인,공예 등 다양한 시각예술 장를 아우르며 자연 속에서 휴식을 제공하는 과천, 역사의 숨결 속에서 국내 외의 근대미슬을 조망하는 덕수궁, 동시대미술을 소개하는 도심 속 서울, 그리고 작품 수집과<br>
        보존의 산실인청주에서 수집,보존,연구,전시와 교육와 같은 본연의 활동을 더욱 활발히 펼치며 복합예술, 과학, 인문학을 비롯한 다양한 학문이 현대미술과 소통할 수 있는 문화의 산실로 거듭날 것입니다.<br>
       특히 올해는 미술관 개관한지 50주년을 맞이하는 해입니다.<br>50년 축적된 국립현대미술관의 역사를 바탕으로 미술계의 의견을 두루모아서, 전문가 눈높이에서 미술계 담론 생산하는 본거지 역할을 하는 동시에<br>
국민들에게는 미술사를 바탕으로 체계화된 전시와 교육의 역할을 하는곳으로 만들고 싶습니다.<br>        
        </p>
        <p>국립 현대 미술관 어머 이런 역사가! 신기방기 경험을 하러 갑시다</p>
        &nbsp;
      </div>
    </div>   

    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header2">
          <h2>서울시립미술관</h2>
        </div>
        <p>서울시립미술관은 '여럿이 만드는 미래,모두가 연결된 미술관을'을 지향하며 세계적인 미술관으로 도약하고 있습니다.</p>
        <p>
        아시아의 중심도시인 대한민국 수도 서울의 대표 미술관으로서 세계성과 지역성, 전문성과 대중성을 아우르는 다양한 기획전과특별전을 개최하고,맞춤형 교육 및<br>
        국제교류 프로그램 등을 운영합니다.
        </p>
        <p>상대방을 배려하는 관람 문화를 만들기 규칙</p>
        <p>미술관 내 정숙, 핸드폰 사용 금지, 미술관 내 애완동물 반입금지, 미술관 내 모든 지역은 금연구역입니다<br>
                      미술관 내에서 뛰거나 구두 굽 소리 또는 핸드폰 소리, 잡담 등으로 다른 관람객들에게 불쾌함을 주지 않도록 상대방을 배려하여 다 함께 즐길 수 있는 쾌적한 관람환경을 만들어 주시기 바랍니다.<br>
      	<p>※기본적으로 관람시 사진촬영을 금합니다!</p>
        <p>	전시 작품의 저작권 보호를 위하여 허락 없이 작품을 촬영할 수 없습니다.
      		특히 전시장에서 터지는 플래시는 다른 관람객들의 관람에 방해를 줄 수 있으며, 작품 보존에도 나쁜 여향을 미칠 수 있습니다
        </p>
        <P>※음식물 반입을 금지합니다!</P>
        <p>쾌적한 관람과 작품의 보호를 위하여 드시고 남은 음식물을 가지고 들어오실 수 없습니다.<br>
       	       음식물은 카페테리아를 이용해 주시기 바랍니다
        </p>
        <p>※작품보호선을 지켜주세요</p>
        <p>작품을 자세히 보기 위하여 작품에 바싹 다가서면 다른 관람객에게 불쾌감을 줄 수 있으며,<br>
       	작품에 치명적인 손상을 줄 수 있습니다. 작품 앞 보호대가 설치된 경우 보호선 밖에서 관람해 주시기 바랍니다.
        </p>
        <p>다양한 전시회가 가득한 서울시립미술관! 그 중 가장 인상 깊게 될 작품은?</p>
        &nbsp;
      </div>
    </div>   

       <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header3">
          <h2>대림 미술관</h2>
        </div>
        <h3>일상이 예술이 되는 미술관</h3>
        <p>유서 깊은 경복궁과 인접한 통의통 주택가에 위치하고 있는 대림 미술관은 한국 최초의 사진 전문 미술관으로 출발하여<br>
        	현재에는 사진뿐만 아니라 디자인을 포함한 다양한 분야의 전시를 소개하며 그 경계를 확장해 나가고 있습니다<br>
     		대림미술관은 '일상이 예술이 되는 미술관'이라는 비전 아래,우리 주변에서 쉽게 발견할 수 있는 사물의 가치를 새롭게 조명함으로써<br>
     		대중들이 일상 속에서 예술을 즐길 수 있도록 새로운 라이프 스타일을 제안하는 전시 컨텐츠를 만들어내고자 노력하고 있습니다.</p>
     	<P>＊국/내외 아티스트들과의 지속적인 네트워크를 구축하며, 국제적 문화교류를 통해 수준 높은 현대 미술과 디자인 분야를 소개합니다.<br>
     	ⓐ대중과의 활발한 소통을 지향합니다.<br>
     	ⓑ지역연계 프로젝트를 통해 지역 사회와 함계하는 문화를 만들어가는 친근한 미술관을 지향합니다.</P>
        &nbsp;
      </div>
    </div>   

  </div>
</section>

</body>
<script src="./js/Coursesub.js"></script>
</html>