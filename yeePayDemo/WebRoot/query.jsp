<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单查询</title>
<script src="js/jquery-1.10.2.min.js"></script>
</head>
<body>


<h2>订单查询</h2>
<form action="queryOrder.jsp" method="post">
	订单号：<input type="text" name="tid"><br/>
	
	<input type="submit" value="查询">
</form>
</body>
</html>