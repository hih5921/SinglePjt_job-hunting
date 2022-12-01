<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
   <br>
   <div contenteditable="true"><h2 align="center" id="jobsearch_title">${js.jobsearch_title }</h2></div>
   <div class="container " style="border-collapse:collapse; border: 1px solid #888; margin-bottom: 1%; padding-top: 1%; padding-bottom: 1%; ">
   <hr>
      <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">경력</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="career" id="career" readonly/>
            <label class="col-1" style="border: 2px solid #888;">급여</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="salary" id="salary" readonly />
        </div>
        <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center;  ">
            <label class="col-1" style="border: 2px solid #888;">학력</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="edu" id="edu" readonly/>
            <label class="col-1" style="border: 2px solid #888;">근무일시</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="work_date" id="work_date" readonly/>
        </div>
        <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">마감일</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="work_type" id="work_type" readonly/>
            <label class="col-1" style="border: 2px solid #888;">근무지역</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;" name="work_place" id="work_place" readonly/>
        </div>
        <hr>
        
       
         <div style="padding-left: 7%; padding-right: 7%;" >
             
            <div id="editor" contenteditable="false" class="p-5 mb-4 bg-light rounded-3 w-100" >


            </div>
           </div>
        <div class="row" style="padding-left: 10%;">
            <div class="col-md-2 mt-1" style="margin: 0 2% 0 24%;"><input type="button" class="form-control" value="돌아가기" onclick="location.href='job_search_list'"></div>
            <div class="col-md-2 mt-1" ><input type="button" name="addResume" class="form-control" id="log" value="지원하기" onclick="job_search()"></div>
        </div>   
   </div>
   
   

      
<%@include file="footer.jsp"%>

<script>
$(document).ready(function () {
	
	
	let data = Object.values(${js.jobsearch_main})[0]
	let main_data = Object.values(${js.jobsearch_main})[1]
	
	$('input[id=career]').attr('value',data.career);
	$('input[id=salary]').attr('value',data.salary);
	$('input[id=edu]').attr('value',data.edu);
	$('input[id=work_date]').attr('value',data.work_date);
	$('input[id=work_type]').attr('value',data.work_type);
	$('input[id=work_place]').attr('value',data.work_place);
	
	$('#editor').text("")
	$('#editor').append(main_data)
	})

</script>