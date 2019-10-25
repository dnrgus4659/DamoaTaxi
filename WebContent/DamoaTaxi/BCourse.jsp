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
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Gwangjangmarket.jpg") center center no-repeat;
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
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Gobchang.jpg") center center no-repeat;
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
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Tteok.jpg") center center no-repeat;
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

.timeline-item .timeline-img-header4 {
  background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)), url("./images/Nogal.jpg") center center no-repeat;
  background-size: cover;
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
    <h1>B 관광코스</h1>
  </div>
</header>

<section class="timeline">
  <div class="container">
     <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header1">
          <h2>광장시장에서 마약 김밥 시식</h2>
        </div>
        <p>
        광장시장에 가면 꼭먹어야하는 것! 마약김밥!~<br>
        먹는게 이보다 더즐거울 수 있을까? 싶도록 맛난 먹거리가 지천으로 널린 서울 종로5가역 광장시장
	그중에서도 sbs 런닝맨 멤버들도 출연하여서 먹었다던 ○○김밥집 마약처럼 중독성이 강하다며 손님들이 붙인 이름 마약 김밥
 	40여년 굉장시장을 지키는 꼬마마약김밥  ○○○할머니꼐서 시작해 딸까지 이어진 전통 마약김밥집!
 	가격은 3000원이며 편히 앉아서 먹고 가세요~
        </p>
        <p>광장시장에 유명한 맛집! 바로 마약김밥 여러분도 한번 드셔보세여</p>
        &nbsp;
      </div>
    </div>   

<div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header2">
          <h2>종로5가에서 곱창 시식</h2>
        </div>
        <p>유명한 연예인은 웬만하면 갔다가 왔다는 유명 곱창집인 ○○○곱창집!<br>
      	 외국 손님들은 완전 먹기 힘들다고 하지만 그래도 단체 관광객들이 많이 찾는다고 한다.
       	 곱창을 맛있게 먹는 방법
       	 이곳 ○○○곱창은 기본반찬인 부추와 함께 먹으면 더욱더 감칠맛이 난다고 한다.
                 가격은 1인분에 18,000원 이다 
         </p>
        <p>곱창의 곱을 제대로 느끼며 풍미까지 완전좋은 곱창! 종로5가 ○○○곱창집 으로 가봅시다</p>
        &nbsp;
      </div>
    </div>   

	 <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header3">
          <h2>신당동 떡볶이 먹방</h2>
        </div>
        <p>신당동 떡볶이 타운골목 바로 들어가면 있다는  ○○○ 떡볶이<br>
        신당동 사람들이라면 모두 이곳을 추천할 정도로 유명한 맛집 ! 신당동 원조집이며 
        이 맛집의 비결은 과연 무엇일까?
        그것은 바로 일반 떡볶이와는 다르게 계란,당면, 쫄면,라면사리는 기본이며 물오징어,새우, 치즈 등등 여러가지의 재료들이 추가 된다고 한다.
        떡볶이의 영업시간은 평일 09:00~24:00이며 주말과 공휴일은  01:00시 까지 시간을 연장하고 있습니다.
        </p>
        <p>맵돈까스는 에이 당연히 더 맵고 맛있는 신당동 떡볶이! 신당동 떡볶이골목으로 가보자~</p>
        &nbsp;
      </div>
    </div>   
	

    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header4">
          <h2>을지로 노가리 </h2>
        </div>
        <p>한국의 진정한 맥주+안주를 즐기고 싶은가?</p>
        <p>을지로3가역 3번과4번출구 사이에는 유명한 호프집들이 있는데 이곳은 을지로 노가리 골목으로 불린다.<br>
            <p>먹어본 관광객들의 후기</p>
        	<p>ⓐ씨:"씹어먹는 포 안주와 맥주 안주로 완전 찰떡궁합"!<br>
			ⓑ씨:"생맥주 500cc가격도 3500원이라서 맥주의 가격도 싸고<br>
			1000원짜리 노가리라서 별기개안하고 먹었는데..존맛탱!!"<br>
			ⓒ씨:그냥 맥주먹고 입이 심심할때 도와주는 역할정도인줄 알았는데 고추장의 제법 잘어울리는 이맛!<br>      
        </p>
        &nbsp;
      </div>
    </div>   

  </div>
</section>

</body>
<script src="./js/Coursesub.js"></script>
</html>