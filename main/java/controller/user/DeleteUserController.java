package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class DeleteUserController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		UserVO vo = new UserVO();
		vo.setId(id);

		UserDAO dao = new UserDAO();
		dao.deleteUser(vo);

		HttpSession session = request.getSession();
		session.invalidate();
		return "main.jsp";
	}

}
