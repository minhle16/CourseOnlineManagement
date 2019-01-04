package course.mon.web.vo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import course.mon.web.entities.Category;

public class ProductVO implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private String price_new;
	private String price_old;
	private String date;
	private String teacher;
	private MultipartFile images;
	private Category category;
	//boolean active;
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public MultipartFile getImages() {
		return images;
	}

	public void setImages(MultipartFile images) {
		this.images = images;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getPrice_new() {
		return price_new;
	}

	public void setPrice_new(String price_new) {
		this.price_new = price_new;
	}

	public String getPrice_old() {
		return price_old;
	}

	public void setPrice_old(String price_old) {
		this.price_old = price_old;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	/*public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}*/
}