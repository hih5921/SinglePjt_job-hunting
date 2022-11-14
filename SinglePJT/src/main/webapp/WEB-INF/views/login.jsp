<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
	<main id="main">
		<section id="breadcrumbs" class="breadcrumbs" >
     	 <div class="container" >
        	<div class="row" >


          <div class="col-lg-5" style="margin: 0 auto;">
            <form  method="post" role="form" class="php-email-form" >

              	<div class="col-md-6 form-group" style="margin: 0 auto;">
	                  <input type="text" name="id" class="form-control" id="id" placeholder="아이디" >
	            </div>
	
		
                <div class="col-md-6 form-group mt-3" style="margin: 0 auto;">
                  <input type="password" class="form-control" name="password" id="password" placeholder="패스워드" >
                </div>

              <input type="radio" name="select" id="jobhunter" class="mt-3" style="margin: 0% 2% 0 30%;" value="1">구직자
              <input type="radio" name="select" id="recruiter" class="mt-3" style="margin: 0 2% 0 10%;" value="2">구인자
              
              <div class="row">
              <div class="text-center col-md-3 mt-3" style="margin: 0 2% 0 24%;"><input type="button" name="reg" class="form-control" id="reg" value="회원가입" onclick="ch_reg()"></div>
              <div class="text-center col-md-3 mt-3" ><input type="submit" name="log" class="form-control" id="log" value="로그인"></div>
              </div>

            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  <script>
  	function ch_reg() {
  		let ch = $('input[name=select]:checked').val();
  		if(ch=="1"){
  			location.href='/jobhunter/register'
  		}else if(ch=="2"){
  			location.href='/recruiter/register'  			  			
  		}
	}
  </script>
<%@include file="footer.jsp"%>