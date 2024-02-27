/*==============================
	#60. DepListController.java
		- 사용자 정의 컨트롤러 클래스
		- 부서 리스트 페이지 요청에 대한 액션 처리
		  (일반 직원 전용)
		- DAO 객체에 대한 의존성 주입(DI)을 위한 준비
		  → 인터페이스 형태의 자료형을 속성으로 구성
		  → setter 메소드 준비
==============================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

//※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//사용자 정의 컨트롤러 클래스를 구성한다.
//cf. Controller Annotation 활용
public class DepListController implements Controller
{
	// 인터페이스 형태의 자료형을 속성으로 구성
	private IDepartmentDAO dao;
	
	// setter 구성
	public void setDao(IDepartmentDAO dao)
	{
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드

		ModelAndView mav = new ModelAndView();
		
		// 로그인 여부만 확인 → 관리자인지 일반 직원인지 확인할 필요 없음.
		// 세션 처리과정 추가 --------------------------------------------------------------------------------------
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)					//-- 로그인이 되어있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		// -------------------------------------------------------------------------------------- 세션 처리과정 추가
		
		ArrayList<Department> departmentList = new ArrayList<Department>();
		
		try
		{
			departmentList = dao.list();
			
			mav.addObject("departmentList", departmentList);
			
			mav.setViewName("WEB-INF/view/DepList.jsp");
		
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}
}
