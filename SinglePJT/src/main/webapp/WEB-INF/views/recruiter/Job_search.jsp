<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
	<br>
	<h2 align="center">기업정보</h2>
	<div class="container " style="border-collapse:collapse; border: 1px solid #888; margin-bottom: 1%; padding-top: 1%; padding-bottom: 1%; ">
	<hr>
		<div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">경력</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <label class="col-1" style="border: 2px solid #888;">급여</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
        </div>
        <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">학력</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <label class="col-1" style="border: 2px solid #888;">근무일시</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
        </div>
        <div class="row  " style="height: 40px;margin-left: 10px;justify-content: center; ">
            <label class="col-1" style="border: 2px solid #888;">근무형태</label>
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
            <label class="col-1" style="border: 2px solid #888;">근무지역</label> 
            <input type="text" class="col-3 bg-light" style="border: 2px solid #888;"/>
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
						<tr>
							<td >
								<textarea rows="5" cols="20"></textarea>
							</td>

							<td>
								<textarea rows="5" cols="30"></textarea>
							</td>

							<td>
								<textarea rows="5" cols="30"></textarea>
							</td>
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
	     	
	</div>
	
	


<%@include file="../footer.jsp"%>