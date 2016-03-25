package dao;

public interface Action {
	public final static String SUCCESSED = "success";
	public final static String FAIL = "fail";
	public final static String INPUT = "input";
	public final static String NONE = "none";
	public final static String LOGIN = "login";
	
	public String execute();
	
}
