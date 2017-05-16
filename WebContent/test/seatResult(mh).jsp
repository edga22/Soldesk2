<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
.noSeat{
	width : 4rem;
	height : 4rem;
	margin : 1px;
	background-color:gray;
}
.eSeat{
	width : 4rem;
	height : 4rem;
	margin : 1px;
	background-color:black;
}
.sSeat{
	width : 4rem;
	height : 4rem;
	margin : 1px;
	background-color:blue;	
}
</style>
</head>
<body>
<%
int row = Integer.parseInt(request.getParameter("row"));
int col = Integer.parseInt(request.getParameter("col"));
String title = request.getParameter("title");
%>

	<div class="container"><br><br><br><br><br><br><br>
<%		
		int tmp = 0;
		for(int i=0;i<row;i++){
			for(int j=0;j<col;j++){
				String seatCode=request.getParameter(i+""+j);
				if(tmp != i) {%><br><%tmp=i;}
				switch(seatCode){
				case "0":%><input type="button" class="noSeat btn btn-default"><%break;
				case "1":%><input type="button" class="eSeat btn btn-default"><%break;
				case "2":%><input type="button" class="sSeat btn btn-default"><%break;
				}
			}	
		}
%>
	</div>
</body>
</html>