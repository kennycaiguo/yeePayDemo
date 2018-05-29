<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
    <%@ page import="com.yeepay.config.YeepayConfig"%>
    <%@ page import="com.yeepay.utils.*"%>
    <%@ page import="com.alibaba.fastjson.JSONObject"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单查询</title>
</head>
<body>

<h2>订单查询</h2>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

String method="querypay";
String account=YeepayConfig.mch_id;
String appkey=YeepayConfig.merchant_private_key;

String tid=request.getParameter("tid");

String sign=Signature.encryptAndSign(method+tid+ account+appkey);

Map<String, String> map = new HashMap<>();

map.put("method", "querypay");
map.put("account", account);
map.put("tid", tid);
map.put("appkey", appkey);
map.put("sign", sign);


String returnResponse=HttpClientUtil.doPost(YeepayConfig.PAYURL, map);

out.write(returnResponse.toString());
%>


</body>
</html>