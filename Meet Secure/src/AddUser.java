import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.bind.v2.runtime.Name;

public class AddUser extends ActionSupport {
private  String name,address,phone,username,password,role;

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}
public String execute() throws Exception {
return "Success";
}
}

