/*========================
 	GradeController.java
 	- 사용자 정의 컨트롤러
========================*/

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GradeController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;
	
	// 전체 성적 조회
	@RequestMapping(value = "/gradelist.action", method = RequestMethod.GET)
	public String gradeList(ModelMap model)
	{
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		model.addAttribute("list", dao.list());
		
		return "/WEB-INF/view/GradeList.jsp";
	}
	
	// 성적 입력 폼 페이지 요청에 대한 액션 처리
	@RequestMapping(value = "/gradeinsertform.action", method = RequestMethod.GET)
	public String gradeInsertForm(ModelMap model, int sid)
	{
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		GradeDTO gdto = dao.searchId(sid);
		
		model.addAttribute("gdto", gdto);
		
		return "/WEB-INF/view/GradeInsertForm.jsp";
	}
	
	// 성적 입력
	@RequestMapping(value = "/gradeinsert.action", method = RequestMethod.POST)
	public String gradeInsert(GradeDTO gdto)
	{
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		dao.insert(gdto);
		
		return "redirect:gradelist.action";
	}
	
	// 성적 삭제
	@RequestMapping(value = "/gradedelete.action", method = RequestMethod.GET)
	public String gradeDelete(int sid)
	{		
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		dao.remove(sid);
		
		return "redirect:gradelist.action";
	}
	
	// 성적 수정 폼 페이지 요청에 대한 액션 처리
	@RequestMapping(value = "/gradeupdateform.action")
	public String gradeUpdateForm(int sid, ModelMap model)
	{
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		GradeDTO gdto = new GradeDTO();
		
		gdto = dao.searchId(sid);
		
		model.addAttribute("gdto", gdto);
		
		return "/WEB-INF/view/GradeUpdateForm.jsp";
	}
	
	// 성적 수정
	@RequestMapping(value = "/gradeupdate.action")
	public String gradeUpdate(GradeDTO gdto)
	{
		IGradeDAO dao = sqlSession.getMapper(IGradeDAO.class);
		
		dao.modify(gdto);
		
		return "redirect:gradelist.action";
	}
}
