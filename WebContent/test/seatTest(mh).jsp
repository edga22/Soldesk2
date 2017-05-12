<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>좌석 설정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
#shell {
	width: 50rem;
	height: 50rem;
	background-color:black;
}
.new-seat {
	background-color:#A4A4A4;
	border:none;
	padding:0.5rem;
	margin: 0.5rem;
	width: 6rem;
	height: 6rem;	
	display : inline;
}
.new-seat:hover{
	border:0.5rem solid white;
	cursor: pointer; /* 커서를 댈경우 손모양으로 바뀜 */
}
#row-seat{
	display :block;
}
</style>

</head>
<body>
<script>
$(document).ready(function(){
	var row;
	var col;
	var seat;
	
/* 	// 글자 입력시 반응
	$("#row").keyup(function () {
		row = $(this).val();
		}).keyup();
	$("#col").keyup(function () {
		col = $(this).val();
		}).keyup(); */
		
	// 클릭시 반응(리셋)
	$("#reset").click(function(){
		$('.seat').remove();
	});	
	
	// 클릭시 반응(좌석생성)
	$("#check").click(function(){	
		var tmp = 0;
		row = $("#row").val();
		col = $("#col").val();
		
		for(i=0;i<row;i++){		
			for(j=0;j<col;j++){			
				if(tmp==i){
					seat = '<div class="new-seat" name="'+ i+j+'" value="1"></div>';
					$(".layout").append( seat );
					console.log(seat);
				}else{
					tmp=i;
					seat = '<div class="new-seat" id="row-seat" name="'+ i +j +'" value="1"></div>';
					$(".layout").append( seat );
					console.log(seat);					
				}										
			}			
		}
	});
	// 좌석 클릭시 좌석 변경 
	$(".seat").click(function(){
		//없는 좌석 선택시 normal 상태로 변경
		if( $(this).val()==0 ){
			$(this).val(1);
			$( this ).css("background-color", "#A4A4A4");
		//일반 좌석 선택시 s석으로 변경	
		}else if($(this).val()==1 ){
			$(this).val(2);
			$( this ).css("background-color", "blue");
		//s석 선택시 좌석 삭제(선택 못하게 바뀜)
		}else if($(this).val()==2 ){
			$(this).val(0);
			$( this ).css("background-color", "rgb(0,0,0,0.0)");
		}
		
	});
	
});
</script>
	
<div class="container">
	<form>
	<div class="row">
		<div class="col-lg-6" style="background-color:#8324FF; height:5rem;"></div>
		<div class="col-lg-6" style="background-color:#FF36FF;  height:5rem;"></div>
	</div>
	<div class="row">
		<div class="col-lg-12" style="background-color:#282828;  height:5rem;">
		<input type="text" name="title" placeholder="제목" required>
		<input type="number" name="row" id="row" placeholder="가로" min="1" max="5" required>
		<input type="number" name="col" id="col" placeholder="세로" min="1" max="5" required>
		<button type="button" id="check" class="btn btn-info">입력</button>
		<button type="reset" id="reset" class="btn btn-warning">리셋</button>
		<button type="submit" formaction="#" class="btn btn-danger">좌석 선택완료</button>
		</div>	
	</div>
	<hr style="border: solid 0.1rem;">
	<div id="shell" style="padding:2rem;">
		<div data-toggle="buttons">
			<div class="layout"></div>
		</div>
	</div>
</form>	
</div>
</body>
</html>