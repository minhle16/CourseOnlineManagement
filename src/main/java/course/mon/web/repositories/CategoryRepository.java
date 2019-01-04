package course.mon.web.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import course.mon.web.entities.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {

	// Query
	final String SELECT_ALL = "SELECT c FROM Category c";
	final String SELECT_BY_ID = "SELECT p FROM Category p WHERE p.id =:idCategory";
	
	// Method
	@Query(SELECT_ALL)
	List<Category> getAllCategory();
	
	@Query(SELECT_BY_ID)
	Category findCategoryById(@Param("idCategory") Integer id);
}