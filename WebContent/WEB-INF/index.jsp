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
</style>
	
</head>
<body>
  	<jsp:include page="${path1 }/header.jsp" />
	<section>
        <div id="slider">
            <div class="card">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual07.jpg" alt="비쥬얼1" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <div class="is-size-5 box">
						시민의 행복을 추구하는
						인천관광공사
						INCHEON TOURISM ORGANIZATION
                    </div>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual09.jpg" alt="비쥬얼2" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class="is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque facere inventore voluptate
                        ad, ipsam, esse asperiores distinctio ipsum reprehenderit nostrum veniam debitis perferendis
                        vero repellat earum commodi quaerat qui excepturi.
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual08.jpg" alt="비쥬얼3" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam magni sint exercitationem
                        libero nesciunt quo saepe, voluptates eaque. Iure itaque quam facere sit praesentium minus
                        deserunt tenetur nemo assumenda asperiores?
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual01.jpg" alt="비쥬얼4" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam magni sint exercitationem
                        libero nesciunt quo saepe, voluptates eaque. Iure itaque quam facere sit praesentium minus
                        deserunt tenetur nemo assumenda asperiores?
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual02.jpg" alt="비쥬얼5" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam magni sint exercitationem
                        libero nesciunt quo saepe, voluptates eaque. Iure itaque quam facere sit praesentium minus
                        deserunt tenetur nemo assumenda asperiores?
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual03.jpg" alt="비쥬얼6" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam magni sint exercitationem
                        libero nesciunt quo saepe, voluptates eaque. Iure itaque quam facere sit praesentium minus
                        deserunt tenetur nemo assumenda asperiores?
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual05.jpg" alt="비쥬얼7" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam magni sint exercitationem
                        libero nesciunt quo saepe, voluptates eaque. Iure itaque quam facere sit praesentium minus
                        deserunt tenetur nemo assumenda asperiores?
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered">
                        <img src="https://www.ito.or.kr/main/img/main/visual06.jpg" alt="비쥬얼8" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam magni sint exercitationem
                        libero nesciunt quo saepe, voluptates eaque. Iure itaque quam facere sit praesentium minus
                        deserunt tenetur nemo assumenda asperiores?
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
	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>