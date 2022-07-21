package co.yedam.puppy.petList.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.comm.Command;
import co.yedam.puppy.files.service.FilesService;
import co.yedam.puppy.files.service.FilesServiceImpl;
import co.yedam.puppy.petList.service.PetListService;
import co.yedam.puppy.petList.service.PetListServiceImpl;
import co.yedam.puppy.vo.FilesVO;
import co.yedam.puppy.vo.PetListVO;

public class PetListUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//입양동물 소개게시판 수정폼으로 이동
		//단건조회해서 값을 넘겨줘야함(파일이 있으면 같이 넘겨줘야한다.)
		PetListService dao = new PetListServiceImpl();
		FilesService fdao = new FilesServiceImpl();
		
		PetListVO vo = new PetListVO();
		int petListNo = Integer.parseInt(request.getParameter("petListNo"));
		vo.setPetListNo(petListNo);
		vo = dao.petListSelectOne(vo);
		
		List<FilesVO> list = fdao.fileNoSelect(petListNo);
		
		request.setAttribute("vo", vo);
		request.setAttribute("filesList", list);
		
		return "petList/petListUpdateForm";
	}

}
