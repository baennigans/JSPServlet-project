package controller.rent;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class BorrowController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		int seq = Integer.parseInt(request.getParameter("no"));
		
		BookVO vo = new BookVO();
		vo.setSeq(seq);
		
		BookDAO dao = new BookDAO();
		dao.borrowBook(vo);
		
		return "myRent.jsp";
	}
}
