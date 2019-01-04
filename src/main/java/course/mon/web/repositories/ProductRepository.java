package course.mon.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import course.mon.web.entities.Product;


@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

	final String DELETE_PRODUCT_BY_ID = "DELETE FROM Product p WHERE p.id =:idProduct";
	final String SELECT_BY_ID = "SELECT p FROM Product p WHERE p.id =:id";
	final String DELETE_PRODUCT_BY_ID_CATEGORY = "DELETE FROM Product p WHERE p.category =:idCategory";
	
	@Transactional
	@Modifying
	@Query(DELETE_PRODUCT_BY_ID)
	void deleteProductById(@Param("idProduct") Integer id);
	
	@Query(SELECT_BY_ID)
	Product findProductById(@Param("id") Integer id);
	
	@Transactional
	@Modifying
	@Query(DELETE_PRODUCT_BY_ID_CATEGORY)
	void deleteProductByIdCategory(@Param("idCategory") Integer id);
	

}