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
.row-seat{
	margin : 0.5rem;
}
.new-seat {
	width : 4rem;
	height : 4rem;
	margin : 1px;
	padding : 1px;	
	font-size : 2rem;
	color: white;
	border : 2px blue solid;
	background-color:black;
	display : inline;
}
.new-seat:hover{
	border:0.1rem solid red;
	cursor: pointer; /* 커서를 댈경우 손모양으로 바뀜 */
}

</style>

</head>
<body>
<script>
$(document).ready(function(){
	var row;
	var col;
	var seatRow='<div class="row-seat"> </div>';
		
	// 클릭시 반응(리셋)
	$("#reset").click(function(){
		$('.new-seat').remove();
	});	
	
	// 클릭시 반응(좌석생성)
	$("#check").click(function(){	
		row = $("#row").val();
		col = $("#col").val();
		
		for(i=0;i<row;i++){
			$(".layout").append( seatRow );
			
			for(j=0;j<col;j++){						
					seat = '<div class="new-seat" id="col-seat">'+i+j+ '<input type="hidden" class="seat-value" name="'+ i +j +'" value="1"></div>';
					$(".row-seat:last").append( seat );																		
			}			
		}		
		// 좌석선택시 값 변경
		$(".new-seat").on("click", function(){			
			 //없는 좌석 선택시 normal 상태로 변경
			if( $(this).find(".seat-value").val()==0 ){
				$(this).find(".seat-value").val(1);
				$( this ).css("background-color", "black");
			//일반 좌석 선택시 s석으로 변경	
			}else if($(this).find(".seat-value").val()==1 ){
				$(this).find(".seat-value").val(2);
				$( this ).css("background-color", "blue");
			//s석 선택시 좌석 삭제(선택 못하게 바뀜)
			}else if($(this).find(".seat-value").val()==2 ){
				$(this).find(".seat-value").val(0);
				$( this ).css({
						"background-color":"gray",
						"color":"rgba(0,0,0,0.0)",
						"border":"none"
				});
			} 		
		});
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
		<input type="number" name="row" id="row" placeholder="가로" min="1" max="10" required>
		<input type="number" name="col" id="col" placeholder="세로" min="1" max="10" required>
		<button type="button" id="check" class="btn btn-info">입력</button>
		<button type="reset" id="reset" class="btn btn-warning">리셋</button>
		<button type="submit" formaction="seatResult(mh).jsp" class="btn btn-danger">좌석 선택완료</button>
		</div>	
	</div>
	<hr style="border: solid 0.1rem;">
	<div id="shell" style="padding:2rem;">
		<div class="layout"></div>
	</div>
</form>	
</div>
</body>
</html>