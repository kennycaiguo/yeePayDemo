package com.yeepay.config;

/* *
 *类名：InteligentpayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2018-05-17
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付接口使用，只是提供一个参考。
 */
public class YeepayConfig {

	//请求地址
	public static String PAYURL = "http://39.106.34.237/yeePay.ashx";

	
	// 商户号
	public static String mch_id = "";
	
	//商户秘钥
	public static String merchant_private_key = "";


	// 服务器异步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/notify_url.jsp";
}
