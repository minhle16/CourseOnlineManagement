package course.mon.web.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.persistence.PersistenceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import course.mon.web.config.Constants;
import course.mon.web.entities.Category;
import course.mon.web.entities.Product;
import course.mon.web.repositories.CategoryRepository;
import course.mon.web.repositories.ProductRepository;
import course.mon.web.vo.CategoryVO;


@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository repository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Value("${upload.path.category}")
	private String pathFolder;
	
	public List<Category> getAllCategory() {
		return repository.getAllCategory();
	}

	@Override
	public boolean createCategory(CategoryVO vo) {
		boolean result = false;
		try {
			Category entity = new Category();
			entity.setName(vo.getName());
			
			//file
			byte[] bytes = vo.getImages().getBytes();
			Path path = Paths.get(pathFolder + vo.getImages().getOriginalFilename());
			Files.write(path, bytes);
			entity.setImages(Constants.FOLDER_UPLOAD_CATEGORY + vo.getImages().getOriginalFilename());
			
			//save
			repository.save(entity);
			result = true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public boolean updateCategory(CategoryVO vo) {
		boolean result = false;
		try {
			//1. Create instance of Product
			Category category = repository.findCategoryById(vo.getId());
			//2 Convert data Vo to Entity
			category.setName(vo.getName());
			
			//file
			byte[] bytes = vo.getImages().getBytes();
			Path path = Paths.get(pathFolder + vo.getImages().getOriginalFilename());
			Files.write(path, bytes);
			category.setImages(Constants.FOLDER_UPLOAD_CATEGORY + vo.getImages().getOriginalFilename());
			
			//3. Save Product to Database
			repository.save(category);
			result = true;
		} catch (PersistenceException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean deleteCategory(Integer id) {
		repository.deleteById(id);
		return true;
	}

	@Override
	public Category findCategoryById(Integer id) {
		
		return repository.findCategoryById(id);
	}

}