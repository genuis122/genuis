package com.chinasoft.myweb.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

public class ImageUtil {
 private static int width=120;
 private static int height=40;
 private  static StringBuffer as;
 public static StringBuffer getAs() {
	return as;
}
private  static String str="abdiencoancnalk0123456789SIDAKNDENWINNFOEWNO";
 public static BufferedImage getImg(){
	 Random random= new Random();
	 BufferedImage img=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);//创建图片
	 Graphics2D g=img.createGraphics();//获取铅笔
	 g.fillRect(0, 0, width, height);//确定画布
	 as=new StringBuffer();
	 for(int i=0;i<4;i++){
		 
		 g.setColor(getRandamColor());
		 g.setFont(new Font("宋体", Font.BOLD, 18));
		 char ae=str.charAt(random.nextInt(str.length()));
		 g.drawString(ae+"", 20+i*20, 30);
		as.append(ae);
	 }
	return img;}
private static Color getRandamColor() {
	Random random= new Random();
	int red=random.nextInt(100);
	int green=random.nextInt(100);
	int blue=random.nextInt(100);
	return new Color(red, green, blue);
} 
}
