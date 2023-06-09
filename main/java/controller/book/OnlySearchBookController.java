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
		String title = request.getParameter("title");
		BookVO vo = new BookVO();
		vo.setTitle(title);

		BookDAO dao = new BookDAO();
		List<BookVO> bookList = dao.SearchBookList(vo);

		request.setAttribute("bookList", bookList);
		
		return "onlyBookList.jsp";
	}
}