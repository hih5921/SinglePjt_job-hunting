<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
   <br>
   <h2 align="center">기업정보</h2>
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
            <label class="col-1" style="border: 2px solid #888;">근무형태</label>
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


            </div>
           </div>
        <div class="row" style="padding-left: 10%;">
            <div class="col-md-2 mt-1" style="margin: 0 2% 0 24%;"><input type="button" class="form-control" value="취소" onclick="location.href='mypage'"></div>
            <div class="col-md-2 mt-1" ><input type="button" name="addResume" class="form-control" id="log" value="등록" onclick="job_search()"></div>
        </div>   
   </div>
   
   

      
<%@include file="../footer.jsp"%>

<script>
$(document).ready(function () {
	
	let test = ${js.jobsearch_main}
	let test1 = Object.values(${js.jobsearch_main})[1]

	})

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
      $.ajax({
           url: "/recruiter/job_search/",
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
</script>