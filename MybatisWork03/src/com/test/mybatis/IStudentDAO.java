/*=================
 	IStudentDAO.java
 	- 인터페이스
=================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IStudentDAO
{
	// 전체 학생 조회
	public ArrayList<StudentDTO> list();
	
	// 전체 학생 인원수 조회
	public int count();
	
	// 학생 추가 입력
	public int insert(StudentDTO sdto);
	
	// 학생 삭제
	public int remove(int sid);
	
	// 학생 수정
	public int modify(StudentDTO sdto);
	
	// 번호로 학생 조회 메소드(수정 시 활용)
	public StudentDTO searchId(int sid);
}
