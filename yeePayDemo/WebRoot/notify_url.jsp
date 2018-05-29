<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
/* *
 * 功能：支付服务器异步通知页面
 * 日期：2018-05-17
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付接口使用，只是提供一个参考。


 *************************页面功能说明*************************
 * 创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。
 * 该页面不能在本机电脑测试，请到服务器上做测试。请确保外部可以访问该页面。 
 * 建议该页面只做支付成功的验签 和 业务逻辑处理。
 */
 
	//获取支付服务器POST过来反馈信息
	
	/* 实际验证过程建议商户务必添加以下校验：
	1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
	2、判断money是否确实为该订单的实际金额（即商户订单创建时的金额），
	3、校验通知中的account 是否为out_trade_no这笔单据的对应的操作方
	4、验证app_id是否为该商户本身。
	*/
		//商户账号
		String account = new String(request.getParameter("account").getBytes("ISO-8859-1"),"UTF-8");
	
		//商户订单号
		String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
	
		//支付平台交易流水号
		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

		//交易金额
		String money = new String(request.getParameter("money").getBytes("ISO-8859-1"),"UTF-8");
		
		//加签信息
		String sign = new String(request.getParameter("sign").getBytes("ISO-8859-1"),"UTF-8");
		
		//交易状态
		String status = new String(request.getParameter("status").getBytes("ISO-8859-1"),"UTF-8");
	
		if(status.equals("TRADE_SUCCESS")){
			out.print("{'code':'8000','msg':'确认收到支付消息'}");//此处不允许删除用于商户确认收到支付消息
			
			//——请在这里编写您的程序——begin
			
			//如更新订单状态,记录支付平台交易流程等
			
			
			//——请在这里编写您的程序——end
		}
	
	
	//——（以上代码仅作参考）——
	
%>