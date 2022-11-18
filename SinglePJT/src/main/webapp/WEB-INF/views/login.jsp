<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
	<main id="main">
		<section id="breadcrumbs" class="breadcrumbs" >
     	 <div class="container" >
        	<div class="row" >


          <div class="col-lg-5" style="margin: 0 auto;">
            <form  method="post" action="login" id="login_form">

              	<div class="col-md-6 form-group" style="margin: 0 auto;">
	            	<input type="text" name="user_id" class="form-control" id="user_id" placeholder="아이디" >
	            </div>
	
		
                <div class="col-md-6 form-group mt-3" style="margin: 0 auto;">
                	<input type="password" class="form-control" name="user_pw" id="user_pw" placeholder="패스워드" >
                </div>

              <input type="radio" name="user_check"  class="mt-3" style="margin: 0% 2% 0 30%;" value="1">구직자
      		  <input type="radio" name="user_check"  class="mt-3" style="margin: 0 2% 0 10%;" value="2">구인자
              
              <div class="row">
              <div class="text-center col-md-3 mt-3" style="margin: 0 2% 0 24%;"><input type="button" name="reg" class="form-control" id="reg" value="회원가입" onclick="location.href='/main/register'"></div>
              <div class="text-center col-md-3 mt-3" ><input type="button" name="log" class="form-control" id="log" value="로그인" onclick="check()"></div>
              </div>
				
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  <script>
  	function check() {
  		let ch = $('input[name="user_check"]:checked').val();
  		console.log(ch)
  		if(typeof ch=="undefined"){
  			alert("회원타입(구직자 / 구인자)을 선택해주세요")
  		}else {
  			$("#login_form").submit();
		}
  			
  		
  	}
	
  </script>
<%@include file="footer.jsp"%>

<script>
	$(document).ready(function(){
		var msg = '${msg}'
		if(msg !=''){
			alert(msg)
		}
	});
</script>