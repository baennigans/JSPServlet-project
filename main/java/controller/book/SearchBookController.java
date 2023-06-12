package controller.book;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class SearchBookController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String paraword = request.getParameter("word");
		String word = null;
		
		try {
            word = new String(paraword.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
		
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

		return "getBookList.jsp";
	}
}