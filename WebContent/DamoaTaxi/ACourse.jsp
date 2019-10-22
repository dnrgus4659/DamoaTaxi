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
        <p>숭례문의 의의<br>
        유교의 인의예지를 따서 동대문:흥인문,서대문:돈의문
        남대문:숭례문 북문:숙청문이라 지었으며
        북문인 숙청문은 감으로 물을 뜻하고 숭례문은 리로 불을 뜻한다
       인의예지에 예는 오행중 화에 해당하여 불이 타오르듯 그 모양을 본따 현판을 세워서 달았다고 한다
       그래서 지금 사진처럼 현판이 세로로 세워졌다.
        </p>
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
        <p>문화역서울284가 자리하고 있는 이 건물은 구 서울역사로 1925년 지어진 우리나라에서 가장 오래된 철도 건물이며 근대 문화 유산입니다.
		붉은 벽돌과 청동색 돔이 인상적인 르네상스 양식의 서양식 건축물로 웅장하고 기품있는 양식을 가지고 있습니다. 경성역과 서울역,
		문화역서울284에 이르기까지 문화와 역사가 공존하는 공간으로 시간 여행을 떠나보세요.</p>
        &nbsp;
      </div>
    </div>   

<div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header3">
          <h2>덕수궁 사진 촬영</h2>
        </div>
        <p>덕수궁의 순서 대한문->석조전->석조전 서관</p>
        <p>＊대한문의 설명<br>
        원래 궁궐의 정문은 남쪽으로 난 인화문이었는데, 환구단 건립 등으로 경운궁의 동쪽이
        새로운 도심이 되자 동문인 대안문을 정문으로삼았습니다.
        1906년에 대한문으로 이름이 바꾸었고, 1970년 태평로를 확장하면서 서쪽으로 물러 앉게 됩니다
        그후 현재의 위치로 자리 잡았습니다 TMI대한문을 지나면 금천교가 나오는데 그 금천교는 1986년에 발굴 복원된 것입니다.
        </p>
        <p>석조전의 설명<br>
        조선시대 궁중건물 중 대표적인 유럽풍의 석조 건축물로 영국인'하딩'이 설계하였고,
        1900년 기공되어 1910년에 준공되었다. 고종은 고관대신광 외국 사절들을 만나는 용도로 석조전을 사용하였다.
        </p>
        <p>석조전 서관<br>
        1936년 8월 기공하여 1938년 6월에 준공하였으며 이왕가 미술관으로
        사용되었다. 현재는 국립현대미술관 덕수궁관으로 사용하고 있다.
        </p>
        
    	<p>여러분도 이러한 역사 공부를 하면서 덕수궁안에 있는 석조전 앞에서 사진촬영을 하겠습니다</p>
      </div>
    </div>   

<div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInRight">
        <div class="timeline-img-header4">
          <h2>광화문 사진촬영</h2>
        </div>
        <p>
        광화문은 경복궁의 정문이다. 광화문은 조선의 법궁에 해당하는 궁궐의 정문으로서 다른 궁궐들의 정문과는 달리 돌로 높은 석축을 쌓고 그 위에 중층구조의 누각을 세워서 마치 성곽의 성문과 같은 격식으로 장대하게 지어졌다.
		광화문은 중층으로 된 문루를 받치는 기단석축이 세 개의 홍예문으로 이루어져 있는데, 중앙의 홍예문으로는 왕이, 좌우의 홍예문으로는 왕세자와 신하들이 출입하였다. 또한 문루(門樓)에는 종을 걸어 두어 시각을 알리는데 사용하였다.
		광화문은 일제강점기에 조선총독부 건물을 지으면서 건춘문 북쪽으로 옮겼다가 한국전쟁 때 폭격을 맞아 문루가 모두 소실되었다. 그 후 1968년에 경복궁 정문의 위치로 다시 옮겼으나 나무를 사용하지 않고 콘크리트 구조로 복원하는 과정에서 위치 또한 제자리를 찾지 못하였다. 현재의 광화문은 2010년에 원래의 모습으로 제자리를 찾아서 다시 복원한 것이다.
		또한, 광화문 홍예 개판에는 ‘사령(四靈)’ 인 기린, 봉황, 거북이가 그려져 있는데 이것은 1968년 광화문 복원시 그려진 것을 현황 모사한 것이다.</P>
        <P>관광객 여러분에 추억을 만들어 주기 위해 저희 다모아 택시는 숭례문에서 기념 촬영을 요청하신 관광객분만 사진을 찍어드립니다.</p>
      	&nbsp;
      </div>
    </div>   

    <div class="timeline-item">

      <div class="timeline-img"></div>

      <div class="timeline-content timeline-card js--fadeInLeft">
        <div class="timeline-img-header5">
          <h2>경복궁 고궁관람및 한복체험</h2>
        </div>
        <P>주요 코스<BR>
        광화문->흥례문->근정전->경회루<BR>
        ※경복궁 안에 들어가서는 코스에 상관없이 자유롭게 구경하셔도 됩니다.
        </P>
       	<P>주요코스중 경회루에 대한 설명<br>
       	경회루는 침전영역 서쪽에 위치한 연못 안에 조성된 누각이다.<br>
       	외국사신의 접대나 임금과 신하 사이에 벌어지는 연회장소로 사용할 목적으로 만들어졌다.<br>
       	경복궁 창건 당시는 작은 누각이었던 것을 태종 12년(1412)에 크게 연못을 파고 지금과 같은 규모로 만들었다.<br>
       	그 후 성종 때 건물이 기울어져 다시 고쳐 지었는데 돌기둥에 용과 꽃 장식을 하여 화려하게 치장하고,<br>
       	연산군 때에는 연못 안 인공섬에 만세산을 조성하고, 그 곳에 월궁을 꾸며 조화를 장식하였으나,<br>
		임진왜란 때 화재로 모두 소실되었다.<br>
       	경회루건물은 없어졌지만, 경복궁이 중건될 때까지 연못은 나라에 가뭄이 들 때마다 기우제를 지내는 곳으로 이용되었다.
       	
       	</P>
       	
        <p>
         ※단! 해설가는 저희가 미리 말씀안하시면 받아들일 수 없는점 부탁드립니다.
         </p>
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