package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class InsertBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String publisher = request.getParameter("publisher");
		int count = Integer.parseInt(request.getParameter("count"));

		BookVO vo = new BookVO();
		vo.setIsbn(isbn);
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setPublisher(publisher);
		vo.setCount(count);
		
		BookDAO dao = new BookDAO();
		dao.insertBook(vo);

		return "getBookList.do";
	}
}