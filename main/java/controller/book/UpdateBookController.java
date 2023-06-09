package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class UpdateBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String isbn = request.getParameter("isbn");
		String seq = request.getParameter("seq");
		String writer = request.getParameter("writer");
		String count = request.getParameter("count");

		BookVO vo = new BookVO();
		vo.setIsbn(isbn);
		vo.setWriter(writer);
		vo.setSeq(Integer.parseInt(seq));
		vo.setCount(Integer.parseInt(count));

		BookDAO dao = new BookDAO();
		dao.updateBook(vo);

		return "getBookList.do";
	}
}