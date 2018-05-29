<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.o
rg/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>付款界面</title>
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery.qrcode.min.js"></script>
</head>
<body>
<h2>充值</h2>
<form action="order.jsp" method="post">
	金额：<input type="text" name="money" value="0.01"><br/>
	支付方式:
	<input type="radio" name="payway" value="支付宝" checked="checked">支付宝
	<input type="radio" name="payway" value="微信" >微信
	<br/>
	<input type="submit" value="充值">
</form>
</script>
</body>
</html>

