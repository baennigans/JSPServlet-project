package biz.book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import biz.common.JDBCUtil;

public class BookDAO {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;

	private static String BOOK_INSERT = "insert into book(seq, isbn, title, writer, publisher, count) values"
			+ "((select nvl(max(seq),0)+1, from book), ?, ?, ?, ?, ?)";
	private static String BOOK_GET = "select * from book where seq=?";
	private static String BOOK_LIST = "select * from book";
	private static String BOOK_UPDATE = "update book set isbn=?, title=?, writer=?, publisher=?, count=? where seq=?";
	private static String BOOK_DELETE = "delete book where isbn=?";
	private static String BOOK_SEARCH = "select * from book where title=?";

	public void insertBook(BookVO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOOK_INSERT);
			stmt.setString(1, vo.getIsbn());
			stmt.setString(2, vo.getTitle());
			stmt.setString(3, vo.getWriter());
			stmt.setString(4, vo.getPublisher());
			stmt.setInt(5, vo.getCount());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public List<BookVO> getBookList(BookVO vo) {
		List<BookVO> bookList = new ArrayList<BookVO>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOOK_LIST);
			rs = stmt.executeQuery();
			while (rs.next()) {
				BookVO book = new BookVO();
				book.setSeq(rs.getInt("SEQ"));
				book.setIsbn(rs.getString("ISBN"));
				book.setTitle(rs.getString("TITLE"));
				book.setWriter(rs.getString("WRITER"));
				book.setPublisher(rs.getString("PUBLISHER"));
				book.setCount(rs.getInt("COUNT"));
				bookList.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return bookList;
	}

	public void updateBook(BookVO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOOK_UPDATE);
			stmt.setString(1, vo.getIsbn());
			stmt.setString(2, vo.getTitle());
			stmt.setString(3, vo.getWriter());
			stmt.setString(4, vo.getPublisher());
			stmt.setInt(5, vo.getCount());
			stmt.setInt(6, vo.getSeq());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public void deleteBook(BookVO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOOK_DELETE);
			stmt.setString(1, vo.getIsbn());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public BookVO getBook(BookVO vo) {
		BookVO book = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOOK_GET);
			stmt.setInt(1, vo.getSeq());
			rs = stmt.executeQuery();
			if (rs.next()) {
				book = new BookVO();
				book.setSeq(rs.getInt("SEQ"));
				book.setIsbn(rs.getString("ISBN"));
				book.setTitle(rs.getString("TITLE"));
				book.setWriter(rs.getString("WRITER"));
				book.setPublisher(rs.getString("PUBLISHER"));
				book.setCount(rs.getInt("COUNT"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		updateBook(book);
		return book;
	}

	public List<BookVO> SearchBookList(BookVO vo) {
		List<BookVO> bookList = new ArrayList<BookVO>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOOK_SEARCH);
			stmt.setString(1, vo.getTitle());
			rs = stmt.executeQuery();
			while (rs.next()) {
				BookVO book = new BookVO();
				book.setSeq(rs.getInt("SEQ"));
				book.setIsbn(rs.getString("ISBN"));
				book.setTitle(rs.getString("Title"));
				book.setWriter(rs.getString("WRITER"));
				book.setPublisher(rs.getString("PUBLISHER"));
				book.setCount(rs.getInt("COUNT"));
				bookList.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return bookList;
	}
}