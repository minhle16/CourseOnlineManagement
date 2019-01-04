package course.mon.web.vo;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

public class CategoryVO {
	
	private Integer id;
	
	@Length(min = 5, message = "Length must be than 5")
	@NotEmpty(message = "Category name is not blank")
	private String name;
	
	private MultipartFile images;
	
	private List<ProductVO> productsVo = new ArrayList<>();
	
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

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public List<ProductVO> getProductsVo() {
		return productsVo;
	}
	public void setProductsVo(List<ProductVO> productsVo) {
		this.productsVo = productsVo;
	}	
}