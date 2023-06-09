package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class DeleteBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String seq = request.getParameter("seq");
		BookVO vo = new BookVO();
		vo.setSeq(Integer.parseInt(seq));

		BookDAO dao = new BookDAO();
		dao.deleteBook(vo);

		return "getBookList.do";
	}
}