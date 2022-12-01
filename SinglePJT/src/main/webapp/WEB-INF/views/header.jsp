<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Workaholic</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/assets/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
  <style type="text/css">
	   label {
	     text-align: center;
	     padding-top: 6px;
	   }
	   
	   .input-file-button{
  padding: 6px 25px;
  background-color:silver;
  border-radius: 4px;
  color: white;
  cursor: pointer;

  </style>
</head>

<body class="d-flex flex-column min-vh-100 min-vh-100 pt-5">

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">jihnge11@gmail.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>010-8770-5921</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1><a href="/main/home">Workaholic</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active" href="/main/home">Home</a></li>
          <li><a href="/main/job_search_list">채용정보</a></li>
          <li><a href="/main/resume_list">구인정보</a></li>
          
          
          <c:choose>
	          <c:when test="${sessionScope.user_check eq '1' }">
		          <li class="dropdown"><a href="/jobhunter/mypage"><span>마이페이지</span> <i class="bi bi-chevron-down"></i></a>
		            <ul>
		              <li><a href="/jobhunter/j_info">내정보</a></li>
		              <li><a href="/jobhunter/resume_management">이력서 관리</a></li>
		              <li><a href="#">즐겨찾기</a></li>
		            </ul>
		          </li>
	          </c:when>
	          
	           <c:when test="${sessionScope.user_check eq '2' }">
		          <li class="dropdown"><a href="/recruiter/mypage"><span>마이페이지</span> <i class="bi bi-chevron-down"></i></a>
		            <ul>
		              <li><a href="/recruiter/r_info">내정보</a></li>
		              <li><a href="/recruiter/jobsearch_management">업체정보</a></li>
		              <li><a href="#">즐겨찾기</a></li>
		            </ul>
		          </li>
	          </c:when>
          
          </c:choose>
          <c:if test="${empty sessionScope.user_id }">
          	<li><a href="/main/login">Login</a></li>
          </c:if>
          <c:if test="${!empty sessionScope.user_id }">
          	<li><a href="/main/logout">Logout</a></li>
          </c:if>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
