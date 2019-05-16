package realProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SuitsOrder")
public class SuitsOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idSuitsOrder")
	private int id;

	@Column(name = "username")
	private String username;
	@Column(name = "contactNumber")
	private String contactNumber;
	@Column(name = "date")
	private String date;
	@Column(name = "Location")
	private String Location;
	@Column(name = "blazzerLength")
	private int blazzerLength;
	@Column(name = "chestLength")
	private int chestLength;
	@Column(name = "shoulderLength")
	private int shoulderLength;
	@Column(name = "sleeveLength")
	private int sleeveLength;
	@Column(name = "pantLength")
	private int pantLength;
	@Column(name = "waistLength")
	private int waistLength;
	@Column(name = "hipLength")
	private int hipLength;
	@Column(name = "thighToKneeLength")
	private int thighToKneeLength;
	@Column(name = "productid")
	private String productid;
	@Column(name = "producttype")
	private String producttype;
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public String getDate() {
		return date;
	}
	public String getLocation() {
		return Location;
	}
	public int getBlazzerLength() {
		return blazzerLength;
	}
	public int getChestLength() {
		return chestLength;
	}
	public int getShoulderLength() {
		return shoulderLength;
	}
	public int getSleeveLength() {
		return sleeveLength;
	}
	public int getPantLength() {
		return pantLength;
	}
	public int getWaistLength() {
		return waistLength;
	}
	public int getHipLength() {
		return hipLength;
	}
	public int getThighToKneeLength() {
		return thighToKneeLength;
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
	public void setUsername(String username) {
		this.username = username;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public void setBlazzerLength(int blazzerLength) {
		this.blazzerLength = blazzerLength;
	}
	public void setChestLength(int chestLength) {
		this.chestLength = chestLength;
	}
	public void setShoulderLength(int shoulderLength) {
		this.shoulderLength = shoulderLength;
	}
	public void setSleeveLength(int sleeveLength) {
		this.sleeveLength = sleeveLength;
	}
	public void setPantLength(int pantLength) {
		this.pantLength = pantLength;
	}
	public void setWaistLength(int waistLength) {
		this.waistLength = waistLength;
	}
	public void setHipLength(int hipLength) {
		this.hipLength = hipLength;
	}
	public void setThighToKneeLength(int thighToKneeLength) {
		this.thighToKneeLength = thighToKneeLength;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}
	
	
}
