package controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;
import controller.Controller;

public class OnlySearchBoardController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String writer = request.getParameter("writer");
		BoardVO vo = new BoardVO();
		vo.setWriter(writer);

		BoardDAO dao = new BoardDAO();
		List<BoardVO> boardList = dao.SearchBoardList(vo);

		request.setAttribute("boardList", boardList);
		
		return "onlyBoardList.jsp";
	}
}