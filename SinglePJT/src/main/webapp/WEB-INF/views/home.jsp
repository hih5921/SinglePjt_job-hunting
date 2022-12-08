<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp"%>
  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/slide/1.png)">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated fanimate__adeInDown">[넥슨]<span> 메이플스토리 유니버스</span></h2>
                <p class="animate__animated animate__fadeInUp">글로벌 블록체인 커뮤니티의 일원이 되겠다는 것을 목표로 합니다.</p>
                <a href="" class="btn-get-started animate__animated animate__fadeInUp">바로가기</a>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/slide/2.png)">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated fanimate__adeInDown">카카오 <span>기술 직군 모집</span></h2>
                <p class="animate__animated animate__fadeInUp">'새로운 연결, 더 나은 세상'을 만드는 카카오에서 <br>기술  분야 크루를 모집합니다.<br>세상의 문제를 새로운 시각과 방식으로 해결하고, 충분한 권한과 책임을 받아 신나게 일하고 싶은 인재를 기다립니다.</p>
                <a href="" class="btn-get-started animate__animated animate__fadeInUp">바로가기</a>
              </div>
            </div>
          </div>
          
          <!-- Slide 3 -->
          <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/slide/3.png)">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated fanimate__adeInDown">[LINE PLUS] <span>Corporate Culture</span></h2>
                <p class="animate__animated animate__fadeInUp">Culture Communications 팀은 LINE의 핵심 가치인 LINE STYLE을 모든 LINERs와 공유하고, 각자의 일하는 방식에 적용할 수 있도록 돕습니다.
또한, 변화하는 환경에 맞추어 LINERs에게 필요한 정보 전달, 콘텐츠 공유, 네트워크 확보 등을 위한 다양한 커뮤니케이션 채널을 기획하고 운영합니다.
이와 더불어, 글로벌 법인(일본, 태국, 대만, 인도네시아 등)간 연계가 필요한 Agenda의 Communication Hub 역할을 하며 LINE만의 문화를 주도해서 만들어 나갈 분을 찾습니다.</p>
                <a href="" class="btn-get-started animate__animated animate__fadeInUp">바로가기</a>
              </div>
            </div>
          </div>
          
          <!-- Slide 4 -->
          <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/slide/4.png)">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated fanimate__adeInDown">(HR, Finance, Legal, CES, CLS 등) <span>경영지원 대규모 채용</span></h2>
                <p class="animate__animated animate__fadeInUp">쿠팡의 모든 직원은 커머스의 미래를 만들겠다는 쿠팡의 미션에 진심입니다.<br>우리는 고객의 문제를 해결해 나가고, 전통적인 관념과 통념에 맞서며 <br>실현 가능한 한계를 뛰어넘고 있습니다.<br>고가용성과 최첨단의 앞선 기술, 초연결사회에서의<br>놀라운 업무 경험을 원하신다면 지금 바로 쿠팡에 합류하세요 !</p>
                <a href="" class="btn-get-started animate__animated animate__fadeInUp">바로가기</a>
              </div>
            </div>
          </div>
          
          <!-- Slide 5 -->
          <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/slide/5.png)">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated fanimate__adeInDown">[B-Robotics] <span> 각 부문별 인재영입</span></h2>
                <p class="animate__animated animate__fadeInUp">B-Robotics 에서<br>새로운 미래를 함께 만들어 갈 동료를 찾습니다!</p>
                <a href="" class="btn-get-started animate__animated animate__fadeInUp">바로가기</a>
              </div>
            </div>
          </div>
          
          
          

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">
<br><br><br><br><br><br><br>

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container">

        <div class="section-title">
          <h2>고객사</h2>
        </div>

        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="${pageContext.request.contextPath}/resources/assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Clients Section -->

  </main><!-- End #main -->
  <%@include file="footer.jsp"%>
