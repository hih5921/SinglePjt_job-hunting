<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
   <br>
   <div contenteditable="true"><h2 align="center" id="jobsearch_title">공고제목</h2></div>
   <div class="container " style="border-collapse:collapse; border: 1px solid #888; margin-bottom: 1%; padding-top: 1%; padding-bottom: 1%; ">
   <hr>
      <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">경력</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="career" id="career"/>
            <label class="col-1" style="border: 2px solid #888;">급여</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="salary" id="salary" />
        </div>
        <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center;  ">
            <label class="col-1" style="border: 2px solid #888;">학력</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="edu" id="edu"/>
            <label class="col-1" style="border: 2px solid #888;">근무일시</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="work_date" id="work_date"/>
        </div>
        <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">마감일</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="work_type" id="work_type"/>
            <label class="col-1" style="border: 2px solid #888;">근무지역</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="work_place" id="work_place"/>
        </div>
        <hr>
        
       
         <div style="padding-left: 7%; padding-right: 7%;" >
             <div class="editor-menu">
               <button type="button" id="btn-bold">
                  <b>B</b>
               </button>
               <button type="button" id="btn-italic">
                  <i>I</i>
               </button>
               <button type="button" id="btn-underline">
                  <u>U</u>
               </button>
               <button type="button" id="btn-strike">
                  <s>S</s>
               </button>
               <button type="button" id="btn-ordered-list">OL</button>
               <button type="button" id="btn-unordered-list">UL</button>
               <label class="input-file-button" for="input-file">이미지 첨부<input
               type="file" id="input-file" style="display: none" name="uploadFile" /></label>
            </div>
            <div id="editor" contenteditable="true" class="p-5 mb-4 bg-light rounded-3 w-100" >
            <br>
               <table>
                  <tr>
                     <th><label >모집부문</label></th>
                     <th><label>담당업무</label></th>
                     <th><label>자격요건 및 우대사항</label></th>
                  </tr>
                  
               </table>
               <br><br><br>
               <label><h3>접수기간 및 방법</h3></label><br>
               <label>접수기간 : </label><br>
               <label>접수방법 : </label><br>
               
               <br><br>
               <label><h3>기타 안내사항</h3></label><br>
               <label>●</label>
               
            </div>
           </div>
        <div class="row" style="padding-left: 10%;">
            <div class="col-md-2 mt-1" style="margin: 0 2% 0 24%;"><input type="button" class="form-control" value="취소" onclick="location.href='mypage'"></div>
            <div class="col-md-2 mt-1" ><input type="button" name="addResume" class="form-control" id="log" value="등록" onclick="job_search()"></div>
        </div>   
   </div>
   
   

      
<%@include file="../footer.jsp"%>

<script>
   function job_search() {
      let job_search= {
            title_info:{
               career:$('input[name="career"]').val(),
               salary:$('input[name="salary"]').val(),
               edu:$('input[name="edu"]').val(),
               work_date:$('input[name="work_date"]').val(),
               work_type:$('input[name="work_type"]').val(),
               work_place:$('input[name="work_place"]').val()
            },
            main_info:document.getElementById("editor").innerHTML
      }
      console.log(job_search)
      let jobsearch_title = $('h2[id="jobsearch_title"]').html()
      $.ajax({
           url: "/recruiter/job_search/?&user_id=${sessionScope.user_id}&jobsearch_title="+jobsearch_title,
           type:"post",
           data: JSON.stringify( job_search ),
           contentType : "application/json; charset=UTF-8"
           
         }).done(function(data) {
        	 console.log("실행1")
			location.href="/recruiter/mypage/";  
        	 console.log("실행2")
         });   

   }
   
   // 에디터 버튼     
    const editor = document.getElementById('editor');
    const btnBold = document.getElementById('btn-bold');
    const btnItalic = document.getElementById('btn-italic');
    const btnUnderline = document.getElementById('btn-underline');
    const btnStrike = document.getElementById('btn-strike');
    const btnOrderedList = document.getElementById('btn-ordered-list');
    const btnUnorderedList = document.getElementById('btn-unordered-list');

    btnBold.addEventListener('click', function () {
        setStyle('bold');
    });

    btnItalic.addEventListener('click', function () {
        setStyle('italic');
    });

    btnUnderline.addEventListener('click', function () {
        setStyle('underline');
    });

    btnStrike.addEventListener('click', function () {
        setStyle('strikeThrough')
    });

    btnOrderedList.addEventListener('click', function () {
        setStyle('insertOrderedList');
    });

    btnUnorderedList.addEventListener('click', function () {
        setStyle('insertUnorderedList');
    });

    function setStyle(style) {
        document.execCommand(style);
        focusEditor();
    }

    // 버튼 클릭 시 에디터가 포커스를 잃기 때문에 다시 에디터에 포커스를 해줌
    function focusEditor() {
        editor.focus({preventScroll: true});
    }
    
    /* 이미지 업로드 */
    $("input[type='file']").on("change", function(e) {
    	let formData = new FormData();
    	let fileInput = $('input[name="uploadFile"]');
    	let fileList = fileInput[0].files;
    	let fileObj = fileList[0];

    	if (!fileCheck(fileObj.name, fileObj.size)) {
    		return false;
    	}

    	formData.append("uploadFile", fileObj);

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
    	
    	let uploadResult = $("#editor");
    	let obj = uploadResultArr[0];
    	let str = "";
    	let fileCallPath = obj.img_uploadPath.replace(/\\/g, '/') + "/s_" + obj.img_uuid + "_" + obj.img_fileName;
    	
    	
    	str += "<img src='/jobhunter/display?filename=" + fileCallPath +"'>";
    	str += "<input type='hidden' name='imageList[0].img_fileName' value='"+ obj.img_fileName +"'>";
    	str += "<input type='hidden' name='imageList[0].img_uuid' value='"+ obj.img_uuid +"'>";
    	str += "<input type='hidden' name='imageList[0].img_uploadPath' value='"+ obj.img_uploadPath +"'>";		
    	
    	uploadResult.append(str);   
    }
</script>