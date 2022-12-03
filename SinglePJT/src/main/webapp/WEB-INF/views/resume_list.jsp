<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<style type="text/css">
		img {
		  width: 80px;
		  height: 95px;
		  object-fit: cover;
		}
	</style>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%@include file="header.jsp"%>

<div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm">
    
    <div class="lh-1">
      <h1 class="h6 mb-0 text-white lh-1">이력서 관리</h1>
    </div>
  </div>

   
     
   <div class="my-3 p-3 bg-body rounded shadow-sm container">
   <div class="row">
   		<h3 class="border-bottom pb-2 mb-0 col-12">내 이력서</h3>
   		
   	</div>
   <c:forEach var="list" items="${list }">
   <div class="row">
     <table>
        <tr>
	        <td class="col-1 pt-3 pb-3 " align="right" >
				<img src="/resources/assets/img/noimg.png" id="${list.resume_num }"/>
	   	    </td>
	        <c:forEach var="img_list" items="${img_list }">
	        	<c:choose>
		        	<c:when test="${img_list.resume_num eq list.resume_num }">	        	        
			            <script>
			            	console.log("${img_list.resume_num}")
			            	console.log("${img_list.img_uploadPath}")
			            	
			            	$("#${list.resume_num }").attr("src","/img/${img_list.img_uploadPath}/${img_list.img_uuid}_${img_list.img_fileName}");
			            </script>			    	    
			        </c:when>
		        </c:choose>
           </c:forEach>
           <td class="col-8 border-bottom pt-3 "style="padding-bottom: 1%;">
              <strong class="text-gray-dark" style="margin-left: 2%;">${list.resume_title }</strong>
           </td>
           <td class="col-1 border-bottom pt-3" align="center">
            <a href="/main/resume_detaile?resume_num=${list.resume_num }" style=" color: gray; padding-left: 25%;">상세보기</a>
           </td>
           <td class="col-1 border-bottom pt-3" align="center">
              <a href="javascript:;" onclick=";" style="">공고제의</a>
           </td>
        </tr>
     </table>
     </div>
     </c:forEach>
   </div>

<%@include file="footer.jsp"%>

<script>
   
   
   
</script>