<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<style type="text/css">
	img {
	  width: 120px;
	  height: 150px;
	  object-fit: cover;
	}
	</style>
</head>
<%@include file="../header.jsp"%>
   <br>
   <div contenteditable="true" ><h1 align="center" id="resume_title">이력서 제목</h1></div>
   <div class="container" style="border-collapse:collapse; border: 1px solid #888;  padding-left: 7%; margin-bottom: 1%;">
   <br>
   <p style="margin-bottom: 0px;">□ 인적사항</p>
       <div  style="width:120px; height:150px; border:1px solid black; float:left; align-items: center;  margin-right: 3%; ; " id="img">
	         	
	   </div>
	   

         <div class="row " style="height: 40px; ">
            <label  style="border: 2px solid #888; width: 10%;">이름</label>
            <input type="text" class=" bg-light" style="border: 2px solid #888; width: 30%;" id="name" name="name"/>
            <label  style="border: 2px solid #888; width: 10%;">영문</label> 
            <input type="text" class=" bg-light" style="border: 2px solid #888; width: 30%;" id="name_eng" name="name_eng"/>
         </div>
         <div class="row" style="height: 40px; ">
            <label class="col-1" style="border: 2px solid #888; width: 10%;">생년월일</label>
            <input type="text" class="col-7 bg-light" style="border: 2px solid #888; width:70%;"id="birth" name="birth"/>
         </div>
         <div class="row" style="height: 40px; ">
            <label class="col-1" style="border: 2px solid #888; width:10%;">휴대전화</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888; width:30%;"id="phon" name="phon"/>
            <label class="col-1" style="border: 2px solid #888; width:10%;">이메일</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888; width:30%;"id="email" name="email"/>
         </div>
         <div class="row" style="height: 40px; ">
            <label class="col-1" style="border: 2px solid #888; width:10%;">주소</label>
            <input type="text" class="col-7 bg-light" style="border: 2px solid #888; width:70%;"id="address" name="address"/>
         </div>
         
         <div  style="  float:left; align-items: center;  padding-left: 8px;">
	       	<label class="input-file-button small" for="input-file">사진첨부<input type="file" id="input-file" style="display: none" name="uploadFile" /></label>
	    </div>
	    
         <br><br>
         <p style="margin-bottom: 0px; margin-left: 10px;">□ 병역사항(해당자기재)</p>
         <div class="row" style="height: 40px;margin-left: 10px; " >
            <label class="col-2" style="border: 2px solid #888;">군필여부</label>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="m_check" name="m_check"/>
            <label class="col-1" style="border: 2px solid #888;">군별/병과</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="m_depa" name="m_depa"/>
            <label class="col-1" style="border: 2px solid #888;">복무기간</label> 
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"id="m_period" name="m_period"/>
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
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="s_period1" name="s_period1"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"id="s_name1" name="s_name1"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="s_major1" name="s_major1"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="s_credit1" name="s_credit1"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="s_check1" name="s_check1"/>
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="s_period2" name="s_period2"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;"id="s_name2" name="s_name2"/>
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="s_major2" name="s_major2"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="s_credit2" name="s_credit2"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="s_check2" name="s_check2"/>
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
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="c_period1" name="c_period1"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" id="c_name1" name="c_name1"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"id="c_position1" name="c_position1" />
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;"id="c_task1" name="c_task1" />
         </div>
         <div class="row" style="height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="c_period2" name="c_period2"/>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" id="c_name2" name="c_name2"/>
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;"id="c_position2" name="c_position2" />
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;"id="c_task2" name="c_task2" />
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
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="certi_date1" name="certi_date1" />
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;" id="certi_name1" name="certi_name1" />
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="certi_rating1" name="certi_rating1" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" id="certi_place1" name="certi_place1"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="certi_date2" name="certi_date2" />
            <input type="text" class="col-4 bg-light" style="border: 2px solid #888;" id="certi_name2" name="certi_name2" />
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="certi_rating2" name="certi_rating2" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" id="certi_place2" name="certi_place2"/>
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
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="edu_date1" name="edu_date1" />
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="edu_course1" name="edu_course1" />
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="edu_place1" name="edu_place1" />
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;" id="edu_content1" name="edu_content1"  />
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="edu_date2" name="edu_date2" />
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="edu_course2" name="edu_course2" />
            <input type="text" class="col-1 bg-light" style="border: 2px solid #888;" id="edu_place2" name="edu_place2" />
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;" id="edu_content2" name="edu_content2"  />>
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
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" id="word" name="word" />
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="ppt" name="ppt" />
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="excel" name="excel" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" id="web" name="web" />
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
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="skill_field1" name="skill_field1" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="skill_content1" name="skill_content1"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"id="skill_detaile1" name="skill_detaile1"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="skill_field2" name="skill_field2" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="skill_content2" name="skill_content2"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"id="skill_detaile2" name="skill_detaile2"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="skill_field3" name="skill_field3" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="skill_content3" name="skill_content3"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"id="skill_detaile3" name="skill_detaile3"/>
         </div>
         <div class="row" style=" height: 40px;margin-left: 10px; ">
            <input type="text" class="col-2 bg-light" style="border: 2px solid #888;" id="skill_field4" name="skill_field4" />
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"id="skill_content4" name="skill_content4"/>
            <input type="text" class="col-5 bg-light" style="border: 2px solid #888;"id="skill_detaile4" name="skill_detaile4"/>
         </div>
         <br><br><br>
         <div class="row">
	         <div class="col-md-2 mt-1" style="margin: 0 2% 0 24%;"><input type="button" class="form-control" value="취소" onclick="location.href='mypage'"></div>
	         <div class="col-md-2 mt-1" ><input type="button" name="addResume" class="form-control" id="log" value="등록" onclick="test()"></div>
         </div>
         <br>
      </div>
<%@include file="../footer.jsp"%>         
<script>
/*json 만들기*/
 
 
function test() {
	let resume_info = {
			p_info :{
				name:$('input[name="name"]').val(),
				name_eng:$('input[name="name_eng"]').val(),
				birth:$('input[name="birth"]').val(),
				phon:$('input[name="phon"]').val(),
				email:$('input[name="email"]').val(),
				address:$('input[name="address"]').val()
			},
			m_info:{
				m_check:$('input[name="m_check"]').val(),
				m_depa:$('input[name="m_depa"]').val(),
				m_period:$('input[name="m_period"]').val()
			},
			
			s_info:[
				{
					s_period:$('input[name="s_period1"]').val(),
					s_name:$('input[name="s_name1"]').val(),
					s_major:$('input[name="s_major1"]').val(),
					s_check:$('input[name="s_check1"]').val()
				},
				{
					s_period:$('input[name="s_period2"]').val(),
					s_name:$('input[name="s_name2"]').val(),
					s_major:$('input[name="s_major2"]').val(),
					s_check:$('input[name="s_check2"]').val()
				}
			],
			
			c_info:[
				{
					c_period:$('input[name="c_period1"]').val(),
					c_name:$('input[name="c_name1"]').val(),
					c_position:$('input[name="c_position1"]').val(),
					c_task:$('input[name="c_task1"]').val()
					
				},
				{
					c_period:$('input[name="c_period2"]').val(),
					c_name:$('input[name="c_name2"]').val(),
					c_position:$('input[name="c_position2"]').val(),
					c_task:$('input[name="c_task2"]').val()
				}
			],
			
			certi_info:[
				{
					certi_date:$('input[name="certi_date1"]').val(),
					certi_name:$('input[name="certi_name1"]').val(),
					certi_rating:$('input[name="certi_rating1"]').val(),
					certi_place:$('input[name="certi_place1"]').val()
				},
				{
					certi_date:$('input[name="certi_date2"]').val(),
					certi_name:$('input[name="certi_name2"]').val(),
					certi_rating:$('input[name="certi_rating2"]').val(),
					certi_place:$('input[name="certi_place2"]').val()
				}
			],
			edu_info:[
				{
					edu_date:$('input[name="edu_date1"]').val(),
					edu_course:$('input[name="edu_course1"]').val(),
					edu_place:$('input[name="edu_place1"]').val(),
					edu_content:$('input[name="edu_content1"]').val()
				},
				{
					edu_date:$('input[name="edu_date2"]').val(),
					edu_course:$('input[name="edu_course2"]').val(),
					edu_place:$('input[name="edu_place2"]').val(),
					edu_content:$('input[name="edu_content2"]').val()
				}
			],
			oa_info:{
				word:$('input[name="word"]').val(),
				ppt:$('input[name="ppt"]').val(),
				excel:$('input[name="excel"]').val(),
				web:$('input[name="web"]').val()
			},
			skill_info:[
				{
					skill_field:$('input[name="skill_field1"]').val(),
					skill_content:$('input[name="skill_content1"]').val(),
					skill_detaile:$('input[name="skill_detaile1"]').val()
				},
				{
					skill_field:$('input[name="skill_field2"]').val(),
					skill_content:$('input[name="skill_content2"]').val(),
					skill_detaile:$('input[name="skill_detaile2"]').val()
				},
				{
					skill_field:$('input[name="skill_field3"]').val(),
					skill_content:$('input[name="skill_content3"]').val(),
					skill_detaile:$('input[name="skill_detaile3"]').val()
				},
				{
					skill_field:$('input[name="skill_field4"]').val(),
					skill_content:$('input[name="skill_content4"]').val(),
					skill_detaile:$('input[name="skill_detaile4"]').val()
				}
			]
			
			
	}
	let resume_title = $('h1[id="resume_title"]').html()
	let user_id = "test1"
	var img_fileName = $('input[name="imageList[0].img_fileName"]').val()
	var img_uuid = $('input[name="imageList[0].img_uuid"]').val()
	var img_uploadPath = $('input[name="imageList[0].img_uploadPath"]').val()
	console.log(img_fileName)
	console.log(img_uuid)
	console.log(img_uploadPath)
	$.ajax({
        url: "/jobhunter/resume?&resume_title="+resume_title
        +"&user_id="+user_id
        +"&imageList[0].img_fileName="+img_fileName
        +"&imageList[0].img_uuid="+img_uuid
        +"&imageList[0].img_uploadPath="+img_uploadPath,
        type:"post",
        data:JSON.stringify( resume_info ),
        contentType : "application/json; charset=UTF-8"
	 }).done(function(data) {
    	 
		location.href="/jobhunter/mypage/";  
    	 
        
      });   
	console.log(resume_info)
}



/* 이미지 업로드 */
$("input[type='file']").on("change", function(e) {
	var formData = new FormData()
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	
	if (!fileCheck(fileObj.name, fileObj.size)) {
		console.log("리턴")
		return false;
	}

	
	formData.append('uploadFile', fileObj);
	console.log(fileInput)
	console.log(fileObj)
	console.log(fileList)
	console.log(formData.keys())
	console.log(formData.values())
	console.log(formData.get('uploadFile'))
	$.ajax({
		url : '/jobhunter/uploadFile',
		processData : false,
		contentType : false,
		data : formData,
		type : 'POST',
		dataType : 'json',
		success: function(result) {
			showUploadImage(result)
		},
		error : function(result) {
			alert("이미지 파일이 아닙니다.");
		}
	});

});

/* var, method related with attachFile */
let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 1048576; //1MB	

function fileCheck(fileName, fileSize) {

	if(!regex.test(fileName)){
		console.log(fileName)
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}

	if (fileSize >= maxSize) {
		alert("파일 사이즈 초과");
		return false;
	}

	return true;

}
//이미지 출력
function showUploadImage(uploadResultArr){
	/* 전달받은 데이터 검증 */
	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	let uploadResult = $("#img");
	let obj = uploadResultArr[0];
	let str = "";
	let fileCallPath = obj.img_uploadPath.replace(/\\/g, '/') + "/s_" + obj.img_uuid + "_" + obj.img_fileName;
	
	
	str += "<img src='/jobhunter/display?filename=" + fileCallPath +"'>";
	str += "<input type='hidden' name='imageList[0].img_fileName' value='"+ obj.img_fileName +"'>";
	str += "<input type='hidden' name='imageList[0].img_uuid' value='"+ obj.img_uuid +"'>";
	str += "<input type='hidden' name='imageList[0].img_uploadPath' value='"+ obj.img_uploadPath +"'>";		
	uploadResult.text("")
	uploadResult.append(str);   
}
</script>
         
   

