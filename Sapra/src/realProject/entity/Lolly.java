package realProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Lolly")
public class Lolly {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idLolly")
	private int id;
	
	@Column(name = "lollyType")
	private String lollyType;
	@Column(name = "date")
	private String date;
	@Column(name = "userId")
	private String userId;
	@Column(name = "username")
	private String username;
	@Column(name = "contactnumber")
	private String contactnumber;
	@Column(name = "location")
	private String location;
	@Column(name = "productid")
	private String productid;
	@Column(name = "producttype")
	private String producttype;
	public int getId() {
		return id;
	}
	public String getLollyType() {
		return lollyType;
	}
	public String getDate() {
		return date;
	}
	public String getUserId() {
		return userId;
	}
	public String getUsername() {
		return username;
	}
	public String getContactnumber() {
		return contactnumber;
	}
	public String getLocation() {
		return location;
	}
	public String getProductid() {
		return productid;
	}
	public String getProducttype() {
		return producttype;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setLollyType(String lollyType) {
		this.lollyType = lollyType;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}
	
	

}
