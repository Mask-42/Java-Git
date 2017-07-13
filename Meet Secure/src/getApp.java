import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;
public class getApp extends ActionSupport {
 
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String manager ,name,phone,address,email,purpose;
 

 public String  getyourmanager() {
	 return manager;
 }
 public void setyourmanager(String manager) {
 this.manager=manager;
}
 
	 
 
 public String getName()
 {
	 return name;
 }
 public void setName(String name)
 {
	 this.name=name;
 }
 public String getPhone()
 {
	 return phone;
 }
 public void setPhone(String phone)
 {
	 this.phone=phone;
 }
 public String getAddress()
 {
	 return address;
 }
 public void setAddress(String address)
 {
	 this.address=address;
 }
 public String getEmail()
 {
	 return email;
 }
 public void setEmail(String email)
 {
	 this.email=email;
 }
 public String getPurpose()
 {
	 return purpose;
 }
 public void setPurpose(String purpose)
 {
	 this.purpose=purpose;
 }
 public String execute()
 {
	 
	 return "Success";
	 
 }
 public String display()
 {
	 
	 return NONE;
 }  
}
