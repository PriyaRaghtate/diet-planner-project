package model;

public class User {
private int id;
private String name;
private String email;
private String pass;
private String role;

public User() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public User(int id, String name, String email, String pass, String role) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.pass = pass;
	this.role = role;
}
public User(String name, String email, String pass, String role) {
	super();
	this.name = name;
	this.email = email;
	this.pass = pass;
	this.role = role;
}

public User(String email, String pass, String role) {
	super();
	this.email = email;
	this.pass = pass;
	this.role = role;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", email=" + email + ", pass=" + pass + ", role=" + role + "]";
}

}
