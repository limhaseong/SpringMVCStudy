/*=================
 	IGradeDAO.java
 	- 인터페이스
=================*/


package com.test.mybatis;

import java.util.ArrayList;

public interface IGradeDAO
{
	// 전체 성적 조회
	public ArrayList<GradeDTO> list();
	
	// 성적 입력
	public int insert(GradeDTO gdto);
	
	// 성적 삭제
	public int remove(int sid);
	
	// 성적 수정
	public int modify(GradeDTO gdto);
	
	// 번호로 성적 조회(수정 시 사용)
	public GradeDTO searchId(int sid);
}
