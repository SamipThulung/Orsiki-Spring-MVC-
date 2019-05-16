package realProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idOrders")
	private int idOrders;
	
	@Column(name = "userName")
	private String userName;
	
	@Column(name = "productType")
	private String productType;
	
	@Column(name = "productId")
	private String productId;
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "quantity")
	private String quantity;
	
	@Column(name = "location")
	private String location;
	
	@Column(name = "contactNo")
	private String contactNo;
	
	@Column(name = "price")
	private String price;
	
	
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getIdOrders() {
		return idOrders;
	}
	public String getUserName() {
		return userName;
	}
	public String getProductType() {
		return productType;
	}
	public String getProductId() {
		return productId;
	}
	public String getDate() {
		return date;
	}
	public String getQuantity() {
		return quantity;
	}
	public String getLocation() {
		return location;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setIdOrders(int idOrders) {
		this.idOrders = idOrders;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	
}
