package beans;

import java.util.List;

public class Product {

	private Long id;

	private String category;
	private String description;
	private String price;
	private String title;
	private String image;
	private User user;

	private List<UploadFileResponse> images;

	private String offer;

	public String getOffer() {
		return offer;
	}

	public void setOffer(String offer) {
		this.offer = offer;
	}

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
		return "User [id=" + id + ", category=" + category + "]";
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
