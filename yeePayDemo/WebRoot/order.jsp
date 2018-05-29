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
<title>支付</title>
</head>
<body>

<h2>支付页面</h2>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

String method="payInfo";
String account=YeepayConfig.mch_id;
String appkey=YeepayConfig.merchant_private_key;
String callbackaddr=YeepayConfig.notify_url;

String money=request.getParameter("money");

String payway=request.getParameter("payway");

String tid=Tools.createOrderNo();
String timestamp=Tools.getCurrentTime();

String sign=Signature.encryptAndSign(method+timestamp+ money+tid+callbackaddr+payway+account+appkey);

Map<String, String> map = new HashMap<>();

map.put("method", "payInfo");
map.put("account", account);
map.put("appkey", appkey);
map.put("callbackaddr", callbackaddr);
map.put("payway", payway);
map.put("tid", tid);
map.put("timestamp", timestamp);
map.put("money", money);
map.put("sign", sign);


String returnResponse=HttpClientUtil.doPost(YeepayConfig.PAYURL, map);
JSONObject jsStr = JSONObject.parseObject(returnResponse);

request.setAttribute("qrcode", jsStr.getString("qrcode"));
request.setAttribute("code", jsStr.getString("code"));
request.setAttribute("msg", jsStr.getString("msg"));
//{"qrcode":wxp://f2f1Xmq3agE5Ltl6_tIudxqiBy9rMDN9VvW0,"code":1000,"msg":"成功"}
request.getRequestDispatcher("/payInfo.jsp").forward(request, response);

%>

</body>
</html>