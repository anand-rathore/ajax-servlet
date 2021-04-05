<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<form>
<input type="text" id="name">
<button id="demo">Submit</button>
<div id = "output"></div>
</form>
<script>
$('#demo').click(function(e){
	e.preventDefault();
	var name = $("#name").val();
	$.get('demo',{user: name}, function(data){
		$("#output").text(data);
	})
})
</script>
</body>
</html>