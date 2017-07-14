import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

//public class ActionClass extends ActionSupport {// extend action support to send

public class ActionClass implements Action{

	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		System.out.println("string"+request.getParameter("id"));
		String string=request.getParameter("id");
		
		if(string!=null &&string.equals("Manager"))
		{
			return "manager";
		}
		else if(string!=null &&string.equals("Admin"))
		{
			return "admin";
		}
		return "admin";
	}

												


}
