package com.Bean;

public class User {
int userId;
String Username;
String password;
String	name;
String address;
long phoneNumber;
String	dateOfJoin;
String email;
String Userroles;
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
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
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public long getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(long phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getDateOfJoin() {
	return dateOfJoin;
}
public void setDateOfJoin(String dateOfJoin) {
	this.dateOfJoin = dateOfJoin;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUserroles() {
	return Userroles;
}
public void setUserroles(String userroles) {
	Userroles = userroles;
}
@Override
public String toString() {
	return "User [userId=" + userId + ", Username=" + Username + ", password=" + password + ", name=" + name
			+ ", address=" + address + ", phoneNumber=" + phoneNumber + ", dateOfJoin=" + dateOfJoin + ", email="
			+ email + ", Userroles=" + Userroles + "]";
}

}