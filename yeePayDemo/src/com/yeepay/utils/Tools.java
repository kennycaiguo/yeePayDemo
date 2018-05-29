package com.yeepay.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {

	/**获取当前时间
	 * @return
	 */
	public static String getCurrentTime(){
		String time="";
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
		time=sdf.format(date);
		return time;
		
	}
	/**生成订单号
	 * @return
	 */
	public static String createOrderNo(){
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyMMddHHmmss");
		String str=sdf.format(date);
		int a[] = new int[10];
	      String num="";
	      for(int i=0;i<a.length;i++) {
	          a[i] = (int)(10*(Math.random()));
	          num=num+a[i];
	      }
	      str+=num;
		return str;
		
	}
public static void main(String[] args) {
	System.out.println(Tools.createOrderNo());
}
}
