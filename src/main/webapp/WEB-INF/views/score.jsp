<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<html>
	<head>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<meta charset="utf-8">
		<title>Home</title>
		
	</head>
	
	<body>
		<div>
			국어 : <input type="text" id="kor"/><br />
	    	영어 : <input type="text" id="eng"/><br />
	    	수학 : <input type="text" id="math"/><br />
	    	<input type="submit" value="계산" id="getTotal"/>
	
			<script type="text/javascript">
			
				$("#getTotal").click(function () {
				/* 	var strkor = $('#kor').val();
					var streng = $('#eng').val();
					var strmath = $('#math').val();
					var kor=parseInt(strkor);
					var eng=parseInt(streng);
					var math=parseInt(strmath); */
					
					 
					var shape = {
						'kor':$('#kor').val(),
						'eng':$('#eng').val(),
						'math':$('#math').val()
					};
					
					console.log(shape.kor);
					console.log(shape.eng);
					console.log(shape.math);
					
					var total = kor + eng + math;
					console.log("console.log Total : "+ total);
					
					$.ajax({
			            type : "GET", //전송방식을 지정한다 (POST,GET)
			            url : "${pageContext.request.contextPath}/getTotal.json",//호출 URL을 설정한다. GET방식일경우 뒤에 파라미터를 붙여서 사용해도된다.\
			            data : shape,
			            cache : false,
			            dataType:"json",
			            success : function(result){
			            	console.log("success : function --> " + result);
			            	console.log(result);
							$("#result").text(result);
							
							if(result>=90){
								$("#results").text("수");
							}else if(result>=80){
								$("#results").text("우");
							}else if(result>=70){
								$("#results").text("미");
							}else if(result>=60){
								$("#results").text("양");
							}else{
								$("#results").text("가");
							}
			            },
			            error : function(request,status,error){
			                alert("통신실패");
			                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			            },
			        }); 
				});
			
			
			</script>
			
			<div id="result"></div>
			<div id="results"></div>
			
		</div>
	</body>
</html>
