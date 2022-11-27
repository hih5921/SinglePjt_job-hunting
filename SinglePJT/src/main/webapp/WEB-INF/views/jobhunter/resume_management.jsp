<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm">
    
    <div class="lh-1">
      <h1 class="h6 mb-0 text-white lh-1">이력서 관리</h1>
    </div>
  </div>

	<div class="my-3 p-3 bg-body rounded shadow-sm container">
	
	    <h6 class="border-bottom pb-2 mb-0">내 이력서</h6>
	    <c:forEach var="list" items="${resume_list }">
		    <div class="d-flex text-muted pt-3">
		      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"></rect><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
		      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
		        <div class="d-flex justify-content-between">
		          <strong class="text-gray-dark">${list.resume_title }</strong>
		          <a href="#" style="margin: 0 2% 0 79%; color: gray;">수정</a><a href="#" style="margin: 0 5% 0 0%;">삭제</a>
		        </div>
		      </div>
		    </div>
	    </c:forEach>
	  </div>


<%@include file="../footer.jsp"%>