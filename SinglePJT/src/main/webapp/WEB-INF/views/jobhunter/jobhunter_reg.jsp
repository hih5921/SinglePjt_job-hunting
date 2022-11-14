<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
	<main id="main">
		<section id="breadcrumbs" class="breadcrumbs" >
     	 <div class="container">
        	<div class="row" >


          <div class="col-lg-5" style="margin: 0 auto;">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form" >
              <div class="row">
               	 	<div class="col-md-6 form-group">
	                  <input type="text" name="name" class="form-control" id="name" placeholder="아이디" >
	                </div>
	                <div class="col-md-3 form-group">
	                  <input type="button" name="name" class="form-control" id="name" value="중복확인">
	                </div>
                </div>
                <div class="col-md-6 form-group mt-3">
                  <input type="password" class="form-control" name="password" id="password" placeholder="패스워드" >
                  
                </div>
                <div class="col-md-6 form-group mt-3">
                  <input type="password" class="form-control" name="password_ch" id="password_ch" placeholder="패스워드 확인" >
                  
                </div>
              <div class="col-md-6 form-group mt-3">
                <input type="email" class="form-control" name="email" id="email" placeholder="Email" >
              </div>
             
              
              <div class="text-center col-md-3 mt-3" style="margin: 0 auto;"><input type="submit" name="name" class="form-control" id="name" value="회원가입"></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
<%@include file="../footer.jsp"%>