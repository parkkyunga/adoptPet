package co.yedam.puppy.qnaBoard.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.puppy.board.service.BoardService;
import co.yedam.puppy.board.service.BoardServiceImpl;
import co.yedam.puppy.comm.Command;
import co.yedam.puppy.vo.BoardVO;

public class QnaBoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 문의게시판 글 삭제
		BoardService boardDao = new BoardServiceImpl();
		String boardNo = request.getParameter("boardNo");
		int n = boardDao.qnaBoardDelete(Integer.parseInt(boardNo));
		String json = "0";
		if(n>0) {
			json ="1";
		}
		return "ajax:"+json;
	}

}
