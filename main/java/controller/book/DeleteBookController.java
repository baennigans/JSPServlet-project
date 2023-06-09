package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class DeleteBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String isbn = request.getParameter("isbn");
		BookVO vo = new BookVO();
		vo.setIsbn(isbn);

		BookDAO dao = new BookDAO();
		dao.deleteBook(vo);

		return "getBookList.do";
	}
}