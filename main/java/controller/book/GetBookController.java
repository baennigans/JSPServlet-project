package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class GetBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String seq = request.getParameter("seq");
		BookVO vo = new BookVO();
		vo.setSeq(Integer.parseInt(seq));

		BookDAO dao = new BookDAO();
		BookVO book = dao.getBook(vo);

		request.setAttribute("book", book);
		return "getBook.jsp";
	}
}