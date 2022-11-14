<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
	<br>
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
										
				</div>
	     	</div>
	     	
	</div>
	
	


<%@include file="../footer.jsp"%>