package realProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Product")
public class Products implements MainObject{

	private final static String type="Product";
	private final static String cate="Product";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idProduct")
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "description")
	private String description;
	
	@Column(name="image1")
	private String image1;
	
	@Column(name="image2")
	private String image2;
	
	@Column(name="image3")
	private String image3;
	
	@Column(name="image4")
	private String image4;
	
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="price")
	private Integer price;
	
	@Column(name="productType")
	private String productType;
	
	@Column(name="subtype")
	private String subtype;
	
	@Column(name="cp")
	private String cp;
	
	

	public String getCp() {
		return cp;
	}

	public void setCp(String cp) {
		this.cp = cp;
	}

	public String getType() {
		return type;
	}

	public  String getCate() {
		return cate;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public String getImage1() {
		return image1;
	}

	public String getImage2() {
		return image2;
	}

	public String getImage3() {
		return image3;
	}

	public String getImage4() {
		return image4;
	}

	public String getGender() {
		return gender;
	}

	public int getPrice() {
		return price;
	}

	public String getProductType() {
		return productType;
	}

	public String getSubtype() {
		return subtype;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}
	
	
	
}
