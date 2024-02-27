/*==============================
	#46. RegionUpdateController.java
	- 사용자 정의 컨트롤러 클래스
	- 지역 데이터 수정 액션 처리
	- 액션 처리 후 regionlist.action 을 다시 요청할 수 있도록 안내
	- DAO 객체에 대한 의존성 주입(DI)을 위한 준비
	  → 인터페이스 형태의 자료형을 속성으로 구성
	  → setter 메소드 준비
==============================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

//※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//사용자 정의 컨트롤러 클래스를 구성한다.
//cf. Controller Annotation 활용
public class RegionUpdateController implements Controller
{
	// 인터페이스 형태의 자료형을 속성으로 구성
	private IRegionDAO dao;
	
	// setter 구성
	public void setDao(IRegionDAO dao)
	{
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드

		ModelAndView mav = new ModelAndView();
		
		// 세션 처리과정 추가 --------------------------------------------------------------------------------------
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)			//-- 로그인이 되어있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if (session.getAttribute("admin")==null)	//-- 로그인은 되었지만 관리자가 아닌 상황
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
		// -------------------------------------------------------------------------------------- 세션 처리과정 추가
		
		// 이전 페이지(RegionUpdateForm.jsp)로부터 넘어온 데이터 수신
		//-- regionId + regionName
		String regionId = request.getParameter("regionId");
		String regionName = request.getParameter("regionName");
		
		try
		{
			Region region = new Region();
			
			region.setRegionId(regionId);
			region.setRegionName(regionName);
			
			dao.modify(region);
			
			mav.setViewName("redirect:regionlist.action");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}
}
