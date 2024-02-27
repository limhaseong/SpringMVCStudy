/*========================
 	StudentController.java
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
public class StudentController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;
	
	// 전체 학생 조회
	@RequestMapping(value = "/studentlist.action", method = RequestMethod.GET)
	public String studentList(ModelMap model)
	{
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		return "/WEB-INF/view/StudentList.jsp";
	}
	
	// 학생 입력 폼 페이지 요청에 대한 액션 처리
	@RequestMapping(value = "/studentinsertform.action")
	public String studentInsertForm()
	{
		return "/WEB-INF/view/StudentInsertForm.jsp";
	}
	
	// 학생 입력
	@RequestMapping(value = "/studentinsert.action", method = RequestMethod.POST)
	public String studentInsert(StudentDTO sdto)
	{
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		dao.insert(sdto);
		
		return "redirect:studentlist.action";
	}
	
	// 학생 삭제
	@RequestMapping(value = "/studentdelete.action", method = RequestMethod.GET)
	public String studentDelete(int sid)
	{		
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		dao.remove(sid);
		
		return "redirect:studentlist.action";
	}
	
	// 학생 수정 폼 페이지 요청에 대한 액션 처리
	@RequestMapping(value = "/studentupdateform.action")
	public String studentUpdateForm(int sid, ModelMap model)
	{
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		StudentDTO sdto = new StudentDTO();
		
		sdto = dao.searchId(sid);
		
		model.addAttribute("sdto", sdto);
		
		return "/WEB-INF/view/StudentUpdateForm.jsp";
	}
	
	// 학생 수정
	@RequestMapping(value = "/studentupdate.action")
	public String studentUpdate(StudentDTO sdto)
	{
		IStudentDAO dao = sqlSession.getMapper(IStudentDAO.class);
		
		dao.modify(sdto);
		
		return "redirect:studentlist.action";
	}
	
}
