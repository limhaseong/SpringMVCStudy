/*==================================================================
 	MemberRecordController.java
 	- 사용자 정의 컨트롤러 클래스
 	
 	- 데이터베이스의 리스트를 읽어오는 액션 처리
 	- 『memberlist.action』 → 요청 → memberList() 처리
 	
 	- 데이터 입력(회원 등록)폼 요청 관련 액션 처리
 	- 『memberinsertform.action』 → 요청 → memberInsertForm() 처리
 	
 	- 데이터 입력(회원 등록) 액션 처리
 	- 『memberinsert.action』 → 요청 → memberInsert() 처리
==================================================================*/

package com.test.mvc;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberRecordController
{
	// ※ 액션 처리를 위한 메소드는 사용자 지정
	/*
	@RequestMapping("URL매핑주소")
	public String 메소드이름(매개변수)
	{
		// ※ 비즈니스 로직 처리(모델 활용)
		// ...
		
		return "뷰 이름.jsp";
	}
	*/
	
	/*
	// 데이터베이스의 리스트를 읽어오는 액션 처리 - ①
	@RequestMapping("/memberlist.action")
	public String memberList(Model model)
	{
		try
		{
			ArrayList<MemberDTO> result = new ArrayList<MemberDTO>();
			
			// 데이터 전달
			MemberDAO dao = new MemberDAO();
			
			dao.connection();
			
			result = dao.lists();
			
			model.addAttribute("result", result);
			
			dao.close();
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	
		return "/WEB-INF/view/MemberList.jsp";
	}
	*/
	
	// 데이터베이스의 리스트를 읽어오는 액션 처리 - ②(강사님 방법)
	@RequestMapping("/memberlist.action")
	public String memberList(Model model)
	{
		String result = "";
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		
		// 데이터 전달
		MemberDAO dao = new MemberDAO();
		
		try
		{
			dao.connection();
			
			list = dao.lists();
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		finally {
			try
			{
				dao.close();
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
		}
	
		model.addAttribute("list", list);
		
		result = "/WEB-INF/view/MemberList.jsp";
		
		return result;
	}
	
	/*
	// 데이터 입력(회원 등록)폼 요청 관련 액션 처리 - ①
	@RequestMapping("/memberinsertform.action")
	public String MemberInsertForm(Model model)
	{
		// 데이터 전달
		try
		{
			ArrayList<MemberDTO> result = new ArrayList<MemberDTO>();
			
			// 데이터 전달
			MemberDAO dao = new MemberDAO();
			
			dao.connection();
			
			result = dao.lists();
			
			model.addAttribute("result", result);
			
			dao.close();
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "/WEB-INF/view/MemberInsertForm.jsp";
	}
	*/
	
	// 데이터 입력(회원 등록)폼 요청 관련 액션 처리 - ②(강사님 방법)
	@RequestMapping("/memberinsertform.action")
	public String memberInsertForm()
	{
		String result = "";
		
		result = "/WEB-INF/view/MemberInsertForm.jsp";
		
		return result;
	}
	
	/*
	// 데이터 입력(회원 등록) 액션 처리 - ①
	@RequestMapping("/memberinsert.action")
	public String MemberInsert(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("name") String name, @RequestParam("tel") String tel, @RequestParam("email") String email)
	{
		// 데이터 전달
		
		try
		{
			MemberDAO dao = new MemberDAO();
			dao.connection();
			
			MemberDTO dto = new MemberDTO();
			
			dto.setId(id);
			dto.setPw(pw);
			dto.setName(name);
			dto.setTel(tel);
			dto.setEmail(email);
			
			dao.insertQuery(dto);
			
			dao.close();
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:memberlist.action";
	}
	*/
	

	
	//데이터 입력(회원 등록) 액션 처리 - ②(강사님 방법)
	@RequestMapping("/memberinsert.action")
	public String MemberInsert(MemberDTO dto)
	{
		String result = "";
		
		MemberDAO dao = new MemberDAO();
		
		try
		{
			dao.connection();
			
			dao.insertQuery(dto);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		finally {
			try
			{
				dao.close();
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
		}
		
		//result = "/WEB-INF/view/..."; --> X
		result = "redirect:memberlist.action";
		
		return result;
	}
}
