<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm">
    
    <div class="lh-1">
      <h1 class="h6 mb-0 text-white lh-1">구인공고 관리</h1>
    </div>
  </div>

   
     
   <div class="my-3 p-3 bg-body rounded shadow-sm container">
   <div class="row">
   		<h3 class="border-bottom pb-2 mb-0 col-11">내 구인공고</h3>
   		<a class="col-1 border-bottom" href="/recruiter/job_search" style="color: black;">공고 작성</a>
   	</div>
   	<div class="row">
     <table>
   
   
     	 <tr style="font-size: 15pt; font: bold;">
           <td class="col-4 border-bottom pt-3 "style="padding-bottom: 1%; padding-left: 3%">
              <strong class="text-gray-dark" style="margin-left: 2%;">제목</strong>
           </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label>경력</label>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label>급여</label>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label>학력</label>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label>마감일</label>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label>근무지역</label>
	       </td>
           <td class="col-1 border-bottom pt-3" align="center">
            	<label>공개여부</label>
           </td>
           <td class="col-1 border-bottom pt-3" align="center">
              
           </td>
        </tr>
     <c:forEach var="list" items="${list }">
        <tr>
           <td class="col-4 border-bottom pt-3 "style="padding-bottom: 1%; padding-left: 3%">
              <strong class="text-gray-dark" style="margin-left: 2%;">${list.jobsearch_title}</strong>
           </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label id="${list.jobsearch_num }1">변경전</label>
              <script>
              	var data = Object.values(${list.jobsearch_main})[0]
              	$('label[id=${list.jobsearch_num }1]').text(data.career)
              </script>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label id="${list.jobsearch_num }2">변경전</label>
              <script>
              	var data = Object.values(${list.jobsearch_main})[0]
              	$('label[id=${list.jobsearch_num }2]').text(data.salary)
              </script>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label id="${list.jobsearch_num }3">변경전</label>
              <script>
              	var data = Object.values(${list.jobsearch_main})[0]
              	$('label[id=${list.jobsearch_num }3]').text(data.edu)
              </script>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label id="${list.jobsearch_num }4">변경전</label>
              <script>
              	var data = Object.values(${list.jobsearch_main})[0]
              	$('label[id=${list.jobsearch_num }4]').text(data.work_type)
              </script>
	       </td>
	       <td class="col-1 border-bottom pt-3" align="center">
              <label id="${list.jobsearch_num }5">변경전</label>
              <script>
              	var data = Object.values(${list.jobsearch_main})[0]
              	$('label[id=${list.jobsearch_num }5]').text(data.work_place)
              </script>
	       </td>
	       <c:choose>
	       	<c:when test="${list.jobsearch_check eq '1' }">
		       	 <td class="col-1 border-bottom pt-3" align="center">
	             	<a href="javascript:;"  onclick="jobsearch_public(${list.jobsearch_num});" style=" color: gray; padding-left: 25%;">공개</a>
	          	 </td>
	       	</c:when> 
	       	<c:otherwise>
	       		<td class="col-1 border-bottom pt-3" align="center">
	             	<a href="javascript:;"  onclick="jobsearch_public(${list.jobsearch_num});" style=" color: gray; padding-left: 25%;">비공개</a>
	          	</td>
	       	</c:otherwise> 
	       </c:choose>
           <td class="col-1 border-bottom pt-3" align="center">
            <a href="/recruiter/job_search_select?jobsearch_num=${list.jobsearch_num }" style=" color: gray; padding-left: 25%;">수정</a>
           </td>
           <td class="col-1 border-bottom pt-3" align="center">
              <a href="javascript:;" onclick="jobsearch_delete(${list.jobsearch_num});" style="">삭제</a>
           </td>
        </tr>
        </c:forEach>
     </table>
     </div>
     
   </div>

<%@include file="../footer.jsp"%>
<script>
	function jobsearch_delete(js_num) {
		
		$.ajax({
			url:"/recruiter/jobsearch_delete",
			data : {"jobsearch_num":js_num},
			type : 'POST',
			dataType : 'json',
			success: function(result) {
				if(result==1){
					alert("삭제되었습니다.")
					location.reload()
				}
				
			}
			
		});
	}
	
	function jobsearch_public(js_num) {
		console.log("실행")
		$.ajax({
			url:"/recruiter/jobsearch_public",
			data : {"jobsearch_num":js_num},
			type : 'POST',
			dataType : 'json',
			success: function(result) {
				if(result==1){
					alert("변경되었습니다.")
					location.reload()
				}
			}
			
		});
	}
	
</script>