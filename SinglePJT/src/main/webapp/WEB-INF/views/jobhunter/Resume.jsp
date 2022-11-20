<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../header.jsp"%>
   <br>
   <h1 align="center">이력서</h1>
   <div class="container" style="border-collapse:collapse; border: 1px solid #888;  padding-left: 7%; margin-bottom: 1%;">
   <br>
   <p style="margin-bottom: 0px;">□ 인적사항</p>
   	
       <div  style="width:120px; height:150px; border:1px solid black; float:left; align-items: center;  margin-right: 3%;">
	         	<img  alt="" src="" >이미지
	      	</div>

         <div class="row " style="height: 40px; ">
            <label  style="border: 2px solid #888; width: 10%;">이름</label>
            <input type="text" class=" bg-light" style="border: 2px solid #888; width: 30%;"/>
            <label  style="border: 2px solid #888; width: 10%;">영문</label> 
            <input type="text" class=" bg-light" style="border: 2px solid #888; width: 30%;"/>
         </div>
         <div class="row" style="height: 40px; ">
            <label class="col-1" style="border: 2px solid #888; width: 10%;">생년월일</label>
            <input type="text" class="col-7 bg-light" style="border: 2px solid #888; width:70%;"/>
         </div>
         <div class="row" style="height: 40px; ">
            <label class="col-1" style="border: 2px solid #888; width:10%;">휴대전화</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888; width:30%;"/>
            <label class="col-1" style="border: 2px solid #888; width:10%;">이메일</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888; width:30%;"/>
         </div>
         <div class="row" style="height: 40px; ">
            <label class="col-1" style="border: 2px solid #888; width:10%;">주소</label>
            <input type="text" class="col-7 bg-light" style="border: 2px solid #888; width:70%;"/>
         </div>
         <br><br>
         <p style="margin-bottom: 0px; margin-left: 10px;">□ 병역사항(해당자기재)</p>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-2" style="border: 2px solid #888;">군필여부</label>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <label class="col-1" style="border: 2px solid #888;">군별/병과</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <label class="col-1" style="border: 2px solid #888;">복무기간</label> 
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
         </div>
         <br>
         <p style="margin-bottom: 0px; margin-left: 10px;">□ 학력사항</p>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-2" style="border: 2px solid #888;">재학기간</label>
            <label class="col-2" style="border: 2px solid #888;">학교명</label>
            <label class="col-2" style="border: 2px solid #888;">전공</label>
            <label class="col-1" style="border: 2px solid #888;">학점</label>
            <label class="col-3" style="border: 2px solid #888;">구분</label>
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
         </div>
         
         <br>
         
         <p style="margin-bottom: 0px; margin-left: 10px;">□ 경험/경력사항</p>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-2" style="border: 2px solid #888;">근무기간</label>
            <label class="col-3" style="border: 2px solid #888;">회사명/부서</label>
            <label class="col-1" style="border: 2px solid #888;">직위</label>
            <label class="col-4" style="border: 2px solid #888;">담당 업무</label>
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;"/>
         </div>
         
         <br>
         
         <p style="margin-bottom: 0px; margin-left: 10px;">□ 자격증/어학 취득 사항</p>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-2" style="border: 2px solid #888;">취득일</label>
            <label class="col-4" style="border: 2px solid #888;">자격증명</label>
            <label class="col-1" style="border: 2px solid #888;">등급</label>
            <label class="col-3" style="border: 2px solid #888;">발행처</label>
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
         </div>
         
         <br>
         <p style="margin-bottom: 0px; margin-left: 10px;">□ 교육 및 연수사항(해외연수 포함)</p>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-2" style="border: 2px solid #888;">기간</label>
            <label class="col-2" style="border: 2px solid #888;">교육과정</label>
            <label class="col-1" style="border: 2px solid #888;">교육기관</label>
            <label class="col-5" style="border: 2px solid #888;">교육내용</label>
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"/>
         </div>
         
         <br>
         <p style="margin-bottom: 0px; margin-left: 10px;">□ OA 능력 및 보유기술</p>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-3" style="border: 2px solid #888;">한글/MS 워드</label>
            <label class="col-2" style="border: 2px solid #888;">파워포인트</label>
            <label class="col-2" style="border: 2px solid #888;">엑셀</label>
            <label class="col-3" style="border: 2px solid #888;">인터넷</label>
         </div>
         
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
         </div>
         <br>
         
         
         <div class="row" style=" height: 40px;margin-left: 10px; ">
         	<label class="col-10" style="border: 2px solid #888;" >상세 보유 기술</label>
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <label class="col-2" style="border: 2px solid #888;">분야</label>
            <label class="col-3" style="border: 2px solid #888;">기술내역</label>
            <label class="col-5" style="border: 2px solid #888;">설명</label>
         </div>
          <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"/>
         </div>
         <br><br><br>
         <div class="row">
	         <div class="col-md-2 mt-1" style="margin: 0 2% 0 24%;"><input type="button" class="form-control" value="취소" onclick="location.href='mypage'"></div>
	         <div class="col-md-2 mt-1" ><input type="button" name="addResume" class="form-control" id="log" value="등록" onclick=""></div>
         </div>
         <br>
      </div>
         
         
         
   

<%@include file="../footer.jsp"%>