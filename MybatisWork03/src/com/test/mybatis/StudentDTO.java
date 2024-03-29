/*==================================
 	StudentDTO.java
 	- 데이터 저장 및 전송 전용 객체
==================================*/

package com.test.mybatis;

public class StudentDTO
{
	// 주요 속성 구성
	private int sid, sub;
	private String name, tel;
	
	// getter / setter 구성
	public int getSid()
	{
		return sid;
	}
	public void setSid(int sid)
	{
		this.sid = sid;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getTel()
	{
		return tel;
	}
	public void setTel(String tel)
	{
		this.tel = tel;
	}
	public int getSub()
	{
		return sub;
	}
	public void setSub(int sub)
	{
		this.sub = sub;
	}
}
