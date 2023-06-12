package controller.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class OnlySearchBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String word = request.getParameter("word");

		BookVO vo = new BookVO();
		vo.setIsbn(word);
		vo.setTitle(word);
		vo.setWriter(word);
		vo.setPublisher(word);
		

		BookDAO dao = new BookDAO();
		List<BookVO> bookList1 = dao.SearchBookList1(vo);
		List<BookVO> bookList2 = dao.SearchBookList2(vo);
		List<BookVO> bookList3 = dao.SearchBookList3(vo);
		List<BookVO> bookList4 = dao.SearchBookList4(vo);
		
		bookList1.addAll(bookList2);
		bookList1.addAll(bookList3);
		bookList1.addAll(bookList4);

		request.setAttribute("bookList", bookList1);

		return "onlyBookList.jsp";
	}
}