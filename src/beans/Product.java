package beans;

import java.util.List;

public class Product {

	private Long id;

	private String name;
	private String category;
	private String description;
	private String price;

	private List<UploadFileResponse> images;

	private Offers offers;

	public Offers getOffers() {
		return offers;
	}

	public void setOffers(Offers offers) {
		this.offers = offers;
	}

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}


	public Long getUserId() {
		return user.getId();
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", category=" + category + "]";
	}

	public List<UploadFileResponse> getImages() {
		return images;
	}

	public void setImages(List<UploadFileResponse> images) {
		this.images = images;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
