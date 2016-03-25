package action;

import service.BookService;

import com.opensymphony.xwork2.ActionContext;

import dao.Action;

public class GetBooksAction implements Action{
	private String []books;
	
	public String[] getBooks() {
		return books;
	}

	public void setBooks(String[] books) {
		this.books = books;
	}

	@Override
	public String execute() {
		String user = (String)ActionContext.getContext().getSession().get("user");
		if(user != null &&user.equals("crazyit")){
			BookService bookService = new BookService();
			setBooks(bookService.getBookes());
			return SUCCESSED;
		}
		else
			return LOGIN;
	}

}
