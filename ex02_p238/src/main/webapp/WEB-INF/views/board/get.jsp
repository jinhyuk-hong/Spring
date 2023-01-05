<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<%@include file = "../includes/header.jsp" %>

 <div class="row">
     <div class="col-lg-12">
         <h1 class="page-header">Board Read</h1>
     </div>
     <!-- /.col-lg-12 -->
 </div>
 <!-- /.row -->
 <div class="row">
     <div class="col-lg-12">
     	
         <div class="panel panel-default">
         
             <div class="panel-heading">Board Read Page</div>
             <!-- /.panel-heading -->
             <div class="panel-body">
                	<div class="form-group">
                		<label>번호</label>
                		<input class="form-control" name="bno"
                		value = '<c:out value="${board.bno }"/>' readonly="readonly">
                	</div>
                	<div class="form-group">
                		<label>제목</label>
                		<input class="form-control" name="title"
                		value = '<c:out value="${board.title }"/>' readonly="readonly">
                	</div>
                	<div class="form-group">
                		<label>내용</label>
                		<textarea class="form-control" rows="3" name='content' readonly="readonly"><c:out value="${board.content }"/></textarea>
                	</div>
                	<div class="form-group">
                		<label>작성자</label>
                		<input class="form-control" name="writer"
       value = '<c:out value="${board.writer }"/>' readonly="readonly">
                	</div>
                	<button data-oper='list' class="btn btn-default" onclick ="location.href='/board/modify?bno=<c:out value="${board.bno }"/>'">수정</button>
                   <button data-oper='list' class="btn btn-info" onclick ="location.href='/board/list'">목록</button>
                   <form id ='operForm' action="/board/modify" method="get">
                   	<input type = 'hidden' id='bno' name='bno' value='<c:out value="${board.bno }"/>'>
                   </form>
                
             </div>
             <!-- end panel-body -->
         </div>
         <!-- end panel -->
     </div>
 </div>
 <!-- /.row -->
 <script type="text/javascript">
 	$(document).ready(function(){
 		var operForm = $("#operForm");
 		
 	$("button[data-oper='modify']").on("click",function(e){
 		operForm.attr("action","/board/modify").submit();	
 	});
 	$("button[data-oper='lest']").on("click",function(e){
 		operForm.find("#bno").remove();
 		operForm.attr("action","/board/list")
 		operForm.submit();
 	});
 	
 	
 	});

</script>

<%@include file = "../includes/footer.jsp" %>            