package controller;

import java.util.HashMap;
import java.util.Map;

import controller.book.DeleteBookController;
import controller.book.GetBookController;
import controller.book.GetBookListController;
import controller.book.InsertBookController;
import controller.book.OnlySearchBookController;
import controller.book.SearchBookController;
import controller.book.UpdateBookController;
import controller.user.DeleteUserController;
import controller.user.GetUserListController;
import controller.user.InsertUserController;
import controller.user.LoginController;
import controller.user.LogoutController;
import controller.user.MyInfoController;
import controller.user.UpdateUserController;
import pagemove.HomeController;
import pagemove.InsertBookPageController;
import pagemove.LoginPageController;
import pagemove.MainController;
import pagemove.MyPageController;

public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/insertUser.do", new InsertUserController());
		mappings.put("/login.do", new LoginController());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/insertBook.do", new InsertBookController());
		mappings.put("/getBookList.do", new GetBookListController());
		mappings.put("/getBook.do", new GetBookController());
		mappings.put("/updateBook.do", new UpdateBookController());
		mappings.put("/deleteBook.do", new DeleteBookController());
		mappings.put("/searchBook.do", new SearchBookController());

		mappings.put("/main.do", new MainController());
		mappings.put("/home.do", new HomeController());
		mappings.put("/onlyBookList.do", new OnlySearchBookController());
		mappings.put("/loginpage.do", new LoginPageController());
		mappings.put("/insertBookPage.do", new InsertBookPageController());
		mappings.put("/myPage.do", new MyPageController());
		mappings.put("/updateUser.do", new UpdateUserController());
		mappings.put("/deleteBook.do", new DeleteBookController());
		mappings.put("/getUserList.do", new GetUserListController());
		mappings.put("/deleteUser.do", new DeleteUserController());
		mappings.put("/myInfo.do", new MyInfoController());

	}

	public Controller getController(String path) {
		return mappings.get(path);
	}

}