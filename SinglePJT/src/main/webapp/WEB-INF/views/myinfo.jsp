<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<main id="main">
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="container">
			<div class="row">

				<div class="col-lg-5" style="margin: 0 auto;" >
					<form action="/main/register" method="post" id="reg_form">
						<div class="row">
						<div class="col-md-3 form-group" ></div>
							<div class="col-md-6 form-group" >
								<input type="text" name="user_id" class="form-control" id="user_id" placeholder="아이디" value="${info.user_id }" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 form-group" ></div>
							<div class="col-md-6 form-group mt-3" >
								<input type="password" class="form-control" name="user_pw" id="user_pw" placeholder="기존 패스워드">
							</div>
						</div>

						<div class="row">
							<div class="col-md-3 form-group" ></div><div class="col-md-6 form-group mt-3">	<input type="password" class="form-control"  id="pw_ch" placeholder="신규 패스워드">	</div>
						</div>
						
						<div class="row">
							<div class="col-md-3 form-group" ></div>
							<div class="col-md-6 form-group mt-3">
								<input type="text" class="form-control" name="user_name" id="user_name" placeholder="이름"value="${info.user_name }" >
							</div>
						</div>
						<div class="row">
							<div class="col-md-3 form-group" ></div>
							<div class="col-md-6 form-group mt-3">
								<input type="email" class="form-control" name="user_email" id="user_email" placeholder="Email" value="${info.user_email }" >
							</div>
						</div>
						<div class="row">
							<div class="text-center col-md-4 mt-3" style="margin: 0 auto;">
								<input type="button"  class="form-control"  value="정보수정" onclick="Check()">
							</div>
							<div class="text-center col-md-4 mt-3" style="margin: 0 auto;">
								<input type="button"  class="form-control"  value="패스워드 변경" onclick="pwcheck()">
							</div>
							<div class="text-center col-md-4 mt-3" style="margin: 0 auto;">
								<input type="button"  class="form-control"  value="회원탈퇴" onclick="deluser()">
							</div>
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
	if($("#user_email").val().length <1){
		alert("email을 입력해 주세요");
	}else if($("#user_name").val().length <1){
		alert("이름을 입력해주세요")
	}else if(confirm("정보를 변경하시겠습니까? ")){
		let user_name=$("#user_name").val();
		let user_email = $("#user_email").val()
		$.ajax({
			type:"post",
			data:{"user_id":"${sessionScope.user_id}","user_name":user_name,"user_email":user_email},
			datatype:"json",
			url:"/main/updateinfo",
			success: function(res){
				alert("정보가 변경되었습니다.")
				history.back();
			}
		})
	}
}

function pwcheck() {
	user_pw = $("#user_pw").val()
	pw_ch = $("#pw_ch").val()
	if($("#user_pw").val().length <1){
		alert("기존 패스워드를 입력해 주세요");
	}else if($("#pw_ch").val().length <1){
		alert("신규 패스워드를 입력해 주세요");
	}else if(confirm("패스워드를 변경하시겠습니까?")){
	$.ajax({
		type:"post",
		data:{"user_pw":user_pw,"user_id":"${sessionScope.user_id}"},
		datatype:"json",
		url:"/main/pwcheck",
		success : function(result){
			if(result=="1"){
				$.ajax({
					type:"post",
					data:{"user_id":"${sessionScope.user_id}","user_pw":pw_ch},
					datatype:"json",
					url:"/main/updatepw",
					success: function (res) {
						alert("패스워드가 변경되었습니다.")
						history.back()
					}
				});
			}else{
				alert("패스워드를 확인해주세요")
			}
		}
	});
	}
}


function deluser() {
	user_pw = $("#user_pw").val()
	if($("#user_pw").val().length <1){
		alert("패스워드를 입력해 주세요");
	}else if(confirm("계정을 삭제하시겠습니까?")){
	$.ajax({
		type:"post",
		data:{"user_pw":user_pw,"user_id":"${sessionScope.user_id}"},
		datatype:"json",
		url:"/main/pwcheck",
		success : function(result){
			if(result=="1"){
				$.ajax({
					type:"post",
					data:{"user_id":"${sessionScope.user_id}"},
					datatype:"json",
					url:"/main/deleteUser",
					success: function (res) {
						alert("계정이 삭제되었습니다.")
						location.href="/main/logout"
					}
				});
			}else{
				alert("패스워드를 확인해주세요")
			}
		}
	});
	}
}

</script>
<%@include file="footer.jsp"%>