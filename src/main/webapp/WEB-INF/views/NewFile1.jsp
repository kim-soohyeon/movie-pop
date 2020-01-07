<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$.get({
	type : "POST",
	url  : "http://www.kobis.or.kr/kobis/business/main/searchMainDailyBoxOffice.do",			
	dataType : "json",
	success : function(data){ 
		debugger
		d_box = data;
		var date="";
		var strArg="";
		var strArg2="";
		$("#dailyBoxOffice").remove("table");
		if(data.length>0)
			drawMainTop("dailyBoxOffice",data);	
	}
});
</script>

</body>
</html>