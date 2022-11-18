<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>메인 페이지</title>
    <jsp:include page="${path1 }/head.jsp" />
<style>
.slider-text {
    position: absolute;
    right: 0;
    bottom: 0
  }
#slider .card-content{
    max-width: 50%;
  }
#slider{
    overflow: hidden;
    /* height : 588px; */
  }
@media screen and (max-width: 1023px) {
    #slider .card-content{
      display: none;
    }
  }
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  right: 0;
  top: 0;
}
.item-slide img {
  max-width: 1200px;
}
.caption-container {
  color: white;
}


.mBan span {
    display: block;
}
.mBan ul {
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    text-align: center;
    margin: 30px 0 55px;
}
.wrap {
    position: relative;
    max-width: 1280px;
    margin: 0 auto;
}

.quick {
    position: fixed;
    right: 5%;
    top: 247px;
    text-align: center;
    border-radius: 20px;
    background: #fff;
    box-shadow: 0 0 10px rgb(0 0 0 / 30%);
    z-index: 50;
    overflow: hidden;
}
.quick_toggle {
    padding: 15px 0;
    color: #fff;
    background: #002242;
}
.quick .top_btn {
    display: block;
    width: 51px;
    height: 51px;
    margin: 15px 20px;
    padding: 10px 5px !important;
    font-size: 1.2rem;
    border-top: 0;
    border-radius: 50%;
    background: #f5f5f5;
}	

.wrap>li {
    float: left;
    width: 48%;
}
.contact a {
    display: block;
    text-align: center;
    height: 75px;
    line-height: 75px;
    font-family: 'S-CoreDream-5Medium';
    color: #fff;
    font-size: 2.1rem;
    border-radius: 75px;
    max-width: 300px;
}
.contact a.l1{
    background: #0092a2;
}
.contact a.l2 {
    background: #003e67;
}
.contact a:hover span {
    padding-left: 60px;
}
.contact a span {
    display: inline-block;
    padding-left: 20px;
    transition: .5s;
}

*, *:before, *:after {
    box-sizing: border-box;
    word-wrap: break-word;
    word-break: keep-all;
}

.col_con {
    width: 100%;
}
.pzone2_list {
    display: flex;
    align-items: center;
    flex-direction: row;
}
.pzone2_list>li {
    width: 27%;
    display: flex;
    flex-direction: row;
    justify-content: flex-end;
}
.pzone2_list>li>a img {
    transition: .5s;
    border-radius: 20px;
    vertical-align: initial;
}
a {
    color: #000;
    text-decoration: none;
}

</style>
	
</head>
<body>
  	<jsp:include page="${path1 }/header.jsp" />
	<section>
		<!-- <span style="position:absolute; font-size:40px; color:white; z-index:1;">
							시민의 행복을 추구하는<br>
							인천관광공사<br>
							INCHEON TOURISM ORGANIZATION
		</span> -->
        <div id="slider">
            <div class="card">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered" >
                        <img src="https://www.ito.or.kr/main/img/main/visual07.jpg" alt="비쥬얼1" />
                    </figure>
                </div>
                <div class="card-content slider-text " >
                    <p class="is-size-5 box">
                       	 왕산 마리나
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual09.jpg" alt="비쥬얼2" />
                    </figure>
                </div>
                <div class="card-content slider-text " >
                    <p class="is-size-5 box">
                       	 왕산 마리나
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual08.jpg" alt="비쥬얼3" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                  	            강화도 고려산
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual01.jpg" alt="비쥬얼4" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                     	옹진군 두무진
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual02.jpg" alt="비쥬얼5" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                	          옹진군 선재도 목섬 야경
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual03.jpg" alt="비쥬얼6" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                                                                연수구 송도컨벤시아
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual05.jpg" alt="비쥬얼7" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                                                                강화군 고인돌
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual06.jpg" alt="비쥬얼8" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                                                                옹진군 굴업도
                    </p>
                </div>
            </div>
        </div>
    </section>
     <script>
		bulmaCarousel.attach('#slider', {
		    slidesToScroll: 1,
		    slidesToShow: 1,
		    infinite: true,
		    autoplay: true,
		});
		var slideIndex = 1;
		showSlides(slideIndex);
		
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("item-slide");
		  var captionText = document.getElementById("caption");
		  if (n > slides.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";
		  }
		}
    </script>
    <script>
            function sel_link(sel){
                location.href = sel.value;
            }
    </script>
    <div class="wrap">
		<div class="mBan">
			<ul>
				<li><a href="http://itour.incheon.go.kr/" target="_blank">
					<img src="https://www.ito.or.kr/main/img/main/ban01.gif" alt="새창열림 : itour 인천투어" />
					<span>인천관광</span></a>
				</li>
				
				<li><a href="https://citytour.ito.or.kr" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban02.gif" alt="새창열림 : Incheon City Tour" />
					<span>시티투어</span></a>
				</li>
				<li><a href="http://songdoconvensia.visitincheon.or.kr/" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban03.gif" alt="새창열림 : songdo CONVENSIA" />
					<span>송도컨벤시아</span></a>
				</li>
				<li><a href="http://cvb.visitincheon.or.kr/" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban04.gif" alt="새창열림 : 인천 세계에서 가장 가까운 스마트 마이스 도시" />
					<span>인천컨벤션뷰로</span></a>
				</li>
				<li><a href="https://www.harborparkhotel.com/" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban05.gif" alt="새창열림 : BW Best Western Harbor Park Hotel" />
					<span>하버파크호텔</span></a>
				</li>
				<li><a href="http://mtisicn.com/" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban06.gif" alt="새창열림 : MTIS" />
					<span>인천의료관광</span></a>
				</li>
				<li><a href="https://incheon.tourbiz.or.kr/" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban07.gif" alt="새창열림 : 인천관광기업지원센터" />
					<span>인천관광기업지원센터</span></a>
				</li>
				<li><a href="http://www.iisland.or.kr" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban08.gif" alt="새창열림 : 섬발전지원센터" />
					<span>섬발전지원센터</span></a>
				</li>
				<li><a href="https://m.incheoneasy.com/" target="_blank" >
					<img src="https://www.ito.or.kr/main/img/main/ban09.gif" alt="새창열림 : 인천e지" />
					<span>섬발전지원센터</span></a>
				</li>
			</ul>
		</div>
    </div>
    
    <table class="table" style="margin-left:300px;">
      <section>
	      <!-- Facebook -->
	      <a class="btn btn-outline-light btn-floating m-1" href="https://mmcf.co.kr/index.html" target="_blank" role="button">
	      <img src="https://www.ito.or.kr/images/popupzone/pop_221103.png" alt="" style="float:right; margin-right:300px;" ></a>
	  </section>	
	  <thead>
	    <tr>
	      <th>No</th>
	      <th>Title</th>
	    </tr>
	  </thead>
	   <tbody>
	    <tr>
	     <td>1</td>
	     <td><a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=16">2022 인천의료뷰티관광 상품개발 공모 결과 발표</a></td>
	    </tr>
	    <tr>
	     <td>2</td>
	     <td><a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=15">2022 인천 마이스마켓 & 커리어페어 참여기업 및 구직자 모집</a></td>
	    </tr>
	    <tr>
	     <td>3</td>
	     <td><a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=14">인천광역시 시민안전보험 운영 설문조사 참여</a></td>
	    </tr>
	    <tr>
	     <td>4</td>
	     <td><a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=13">「2022 인천 스마트관광 데이터 아이디어 공모전」 공고</a></td>
	    </tr>
	    <tr>
	     <td>5</td>
	     <td><a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=12">인천 웰니스관광 원데이클래스 참가자 모집</a></td>
	    </tr>
	  </tbody>
	  
	</table>
	
	<ul class="contact" style="margin-top: 80px; margin-bottom:100px;">
		<li style="margin-left:300px;"><a class="l1" href="https://www.ito.or.kr/main/introduce/organization.jsp">
		<img  src="https://www.ito.or.kr/main/img/main/contact01.gif" alt=""><span>부서안내</span></a></li>
		<li style="float:right; margin-right:100px; margin-top:-75px; width: 300px;"><a class="l2" href="https://www.ito.or.kr/main/customer/inquiry.jsp" style=" margin-left:20px;">
		<img src="https://www.ito.or.kr/main/img/main/contact02.gif" alt=""><span>고객소리</span></a></li>
	</ul>
	
	
	<div class="quick">
	<h2 class="quick_toggle">SNS</h2>
		
		<section class="bg-white mb-4">
	      <!-- NaverBlog -->
	      <a  class="btn btn-outline-light btn-floating m-1" href="https://blog.naver.com/discoverincheon" target="_blank" role="button">
	      <img style="margin-top:15px;" src="https://www.ito.or.kr/main/img/main/sns_blog.gif" alt=""><i class="fab fa-facebook-f" ></i></a>
	    </section>
		<section class="bg-white mb-4">
	      <!-- Facebook -->
	      <a class="btn btn-outline-light btn-floating m-1" href="https://www.facebook.com/discoverincheon/" target="_blank" role="button">
	      <img src="https://www.ito.or.kr/main/img/main/sns_facebook.gif" alt=""><i class="fab fa-facebook-f"></i></a>
	    </section>
	    <section class="bg-white mb-4">
	      <!-- Instagram -->
	      <a class="btn btn-outline-light btn-floating m-1" href="https://www.instagram.com/discoverIncheon/" target="_blank" role="button">
	      <img src="	https://www.ito.or.kr/main/img/main/sns_insta.gif" alt=""><i class="fab fa-instagram"></i></a>
	    </section>
	    <section class="bg-white mb-4">
	      <!-- Youtube -->
	      <a class="btn btn-outline-light btn-floating m-1" href="https://www.youtube.com/discoverIncheon/" target="_blank" role="button">
	      <img src="https://www.ito.or.kr/main/img/main/sns_yutube.gif" alt=""><i class="fab fa-github"></i></a>
	    </section>
	    <section class="bg-white mb-4">
	      <!-- TOP -->
	      <a class="quick_link top_btn" href="#" role="button">TOP</a>
	    </section>
    </div>
    
    <div class="col_con">
			<div class="tab_con">
				<ul id="pzone_list0" class="pzone2_list">
					<li><a href="https://www.instagram.com/discoverIncheon/" target="_blank">
						<img src="https://www.ito.or.kr/images/popupzone/pz_s1.jpg" alt="새창열림 : 인스타그램" />
						</a></li>
					<li><a href="https://www.facebook.com/discoverincheon/" target="_blank">
						<img src="https://www.ito.or.kr/images/popupzone/pz_s2.jpg" alt="새창열림 : 페이스북" />
						</a></li>
					<li><a href="https://www.youtube.com/discoverIncheon/" target="_blank">
						<img src="https://www.ito.or.kr/images/popupzone/pz_s3.jpg" alt="새창열림 : 유튜브" />
						</a></li>
				</ul>
			</div>
		</div>
    
	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>