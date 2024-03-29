/*==================================
 	GradeDTO.java
 	- 데이터 저장 및 전송 전용 객체
==================================*/

package com.test.mybatis;

public class GradeDTO
{
	// 주요 속성 구성
	private int sid, sub1, sub2, sub3, tot;
	private double avg;
	private String ch, name;
	
	// getter / setter 구성
	public int getSid()
	{
		return sid;
	}
	public void setSid(int sid)
	{
		this.sid = sid;
	}
	public int getSub1()
	{
		return sub1;
	}
	public void setSub1(int sub1)
	{
		this.sub1 = sub1;
	}
	public int getSub2()
	{
		return sub2;
	}
	public void setSub2(int sub2)
	{
		this.sub2 = sub2;
	}
	public int getSub3()
	{
		return sub3;
	}
	public void setSub3(int sub3)
	{
		this.sub3 = sub3;
	}
	public int getTot()
	{
		return tot;
	}
	public void setTot(int tot)
	{
		this.tot = tot;
	}
	public double getAvg()
	{
		return avg;
	}
	public void setAvg(double avg)
	{
		this.avg = avg;
	}
	public String getCh()
	{
		return ch;
	}
	public void setCh(String ch)
	{
		this.ch = ch;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
}
