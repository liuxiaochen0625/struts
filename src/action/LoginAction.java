package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Action;

public class LoginAction extends ActionSupport implements Action,ServletResponseAware{
	private HttpServletResponse response;
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute(){
		if(getUsername().equals("crazyit")&&getPassword().equals("leegang")){
			ActionContext.getContext().getSession().put("user", username);
		Cookie cookie = new Cookie("user", username);
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
			return SUCCESSED;
		}
		else
			return FAIL;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
}
