package realProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Repairs")
public class Repair {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idRepairs")
	private int idOrders;
	
	@Column(name = "username")
	private String username;
	@Column(name = "userid")
	private String userid;
	@Column(name = "phoneNumber")
	private String phoneNumber;
	@Column(name = "location")
	private String location;
	@Column(name = "brand")
	private String brand;
	@Column(name = "modelNumber")
	private String modelNumber;
	@Column(name = "description")
	private String description;
	public int getIdOrders() {
		return idOrders;
	}
	public String getUsername() {
		return username;
	}
	public String getUserid() {
		return userid;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public String getLocation() {
		return location;
	}
	public String getBrand() {
		return brand;
	}
	public String getModelNumber() {
		return modelNumber;
	}
	public String getDescription() {
		return description;
	}
	public void setIdOrders(int idOrders) {
		this.idOrders = idOrders;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	

}
