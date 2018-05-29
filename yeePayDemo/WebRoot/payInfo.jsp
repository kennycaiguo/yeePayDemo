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
<h2>返回信息</h2>
${qrcode}<br/>
${code}<br/>
${msg}<br/>
<c:if test="${ code eq '1000' }">
	<div id="qrcode"></div>
</c:if>


<br/>
用户扫码支付成功后结果异步通知,建议3秒轮询本系统订单交易情况完成支付判断跳转.
<script>
    jQuery(function(){
    jQuery('#qrcode').qrcode("${qrcode}");
})
</script>
</body>
</html>