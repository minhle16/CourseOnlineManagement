package course.mon.web.service;

import java.util.List;

import course.mon.web.entities.Category;
import course.mon.web.vo.CategoryVO;

public interface CategoryService {

	public List<Category> getAllCategory();

	public boolean createCategory(CategoryVO vo);
	
	public boolean deleteCategory(Integer id);
	
	public boolean updateCategory(CategoryVO vo);
	
	public Category findCategoryById(Integer id);

}