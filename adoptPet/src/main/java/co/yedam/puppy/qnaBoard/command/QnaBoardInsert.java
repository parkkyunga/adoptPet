package co.yedam.puppy.qnaBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.puppy.board.service.BoardService;
import co.yedam.puppy.board.service.BoardServiceImpl;
import co.yedam.puppy.comm.Command;
import co.yedam.puppy.vo.BoardVO;

public class QnaBoardInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 문의게시판 글 쓰기
		BoardService Dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardWriter(request.getParameter("boardWriter"));
		vo.setBoardContent(request.getParameter("boardContent"));
		System.out.println(request.getParameter("boardTitle"));
		System.out.println(request.getParameter("boardWriter"));
		System.out.println(request.getParameter("boardContent"));
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);
		
		int r = Dao.qnaBoardInsert(vo); // int 타입 0건입력 1건입력
		
		if(r > 0) {
			request.setAttribute("message", "등록처리가 되었습니다.");
		} else {
			request.setAttribute("message", "등록처리가 실패했습니다.");
		}
		return "qna/qnaBoardList.do"; 
	}
		

}