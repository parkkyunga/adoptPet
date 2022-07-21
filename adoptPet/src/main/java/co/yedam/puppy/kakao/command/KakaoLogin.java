package co.yedam.puppy.kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.puppy.comm.Command;
import co.yedam.puppy.member.service.MemberService;
import co.yedam.puppy.member.service.MemberServiceImpl;
import co.yedam.puppy.vo.MemberVO;

public class KakaoLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 카카오로그인 폼 
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(email);
		int check = dao.kakaoJoinCheck(vo); //1이면 가입한 이력이 있음.
		if(check == 0) {
			vo = new MemberVO();
			vo.setMemberId(email);
			vo.setMemberPassword(" ");
			vo.setMemberName(name);
			vo.setMemberTel(" ");
			vo.setMemberEmail(email);
			vo.setMemberJob(" ");
			vo.setMemberGender(" ");
			vo.setMemberAuthor("USER");
			dao.memberInsert(vo);
		}
		
			vo = new MemberVO();
			vo.setMemberId(email);
			HttpSession session = request.getSession();
			vo = dao.memberSelectOne(vo);
			if(vo.getMemberName() != null) {
				session.setAttribute("id", vo.getMemberId());
				session.setAttribute("author", vo.getMemberAuthor());
				session.setAttribute("name", vo.getMemberName());
				return "main/main";
			}else {
				request.setAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다.");
				return "member/memberLoginForm";
		}
		
	}

}
