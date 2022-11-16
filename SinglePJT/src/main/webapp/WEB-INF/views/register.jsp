<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<main id="main">
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="container">
			<div class="row">

				<div class="col-lg-5" style="margin: 0 auto;" id="reg_form">
					<form action="forms/contact.php" method="post" >
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name" placeholder="아이디">
							</div>
							<div class="col-md-3 form-group">
								<input type="button" name="check" class="form-control" id="check" value="중복확인">
							</div>
						</div>

						<div class="col-md-6 form-group mt-3" style="justify-content: center;">
							<input type="password" class="form-control" name="password" id="pw" placeholder="패스워드">
						</div>
						<div class="col-md-6 form-group mt-3">
							<input type="password" class="form-control" name="password_ch" id="pw_ch" placeholder="패스워드 확인">

						</div>
						<div class="col-md-6 form-group mt-3">
							<input type="email" class="form-control" name="email" id="email" placeholder="Email">
						</div>


						<div class="text-center col-md-3 mt-3" style="margin: 0 auto;">
							<input type="button" name="name" class="form-control" id="name" value="회원가입" onclick="Check()">
						</div>
					</form>
				</div>

			</div>

		</div>
	</section>
	<!-- End Contact Section -->

</main>
<!-- End #main -->

<script>
function Check(){
	if(!$("#id").attr("readonly")){
		alert("아이디 중복체크를 해야합니다.");
	}else if($("#pw").val().length <1){
		alert("비밀번호를 입력해 주세요");
	}else if($("#pw").val() != $("#pw_ch").val()){
		alert("비밀번호 확인란을 확인하세요");
		$("#pw_ch").focus(); 
	}else if($("#email").val().length <1){
		alert("email을 입력해 주세요");
	}else if(confirm("회원가입 하시겠습니까?")){
		$("#reg_form").submit();
	}
}
</script>
<%@include file="footer.jsp"%>