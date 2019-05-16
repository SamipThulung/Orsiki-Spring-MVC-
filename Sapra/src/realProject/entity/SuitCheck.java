package realProject.entity;


import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class  SuitCheck{
	
	
	private int id;
	
	@NotNull
	@Size(min=2,message="Khali chodu vayo yeslai")
	private String username;

	@NotNull
	@Size(min=2,message="Khali chodu vayo yeslai")
	private String contactNumber;

	@NotNull
	@Size(min=2,message="Khali chodu vayo yeslai")
	private String date;
	
	@NotNull
	@Size(min=2,message="Khali chodu vayo yeslai")
	private String Location;

	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int blazzerLength;

	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int chestLength;

	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int shoulderLength;

	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int sleeveLength;

	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int pantLength;

	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int waistLength;
	
	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int hipLength;
	
	@NotNull
	@Min(value=1,message="Please enter value greater than 1")
	@Max(value=200,message="Please enter value smaller than 200")
	private int thighToKneeLength;

	
	private String productid;

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
