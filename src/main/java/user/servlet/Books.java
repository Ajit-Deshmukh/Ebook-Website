package user.servlet;

public class Books {
private int book_id;
private String book_name;
private String auther_name;
private int price;
private String photo;
public int getBook_id() {
	return book_id;
}
public void setBook_id(int book_id) {
	this.book_id = book_id;
}
public String getBook_name() {
	return book_name;
}
public void setBook_name(String book_name) {
	this.book_name = book_name;
}
public String getAuther_name() {
	return auther_name;
}
public void setAuther_name(String auther_name) {
	this.auther_name = auther_name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}
public Books(int book_id, String book_name, String auther_name, int price, String photo) {
	super();
	this.book_id = book_id;
	this.book_name = book_name;
	this.auther_name = auther_name;
	this.price = price;
	this.photo = photo;
}
public Books() {
	
}
}
