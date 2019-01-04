package course.mon.web.service;

import java.util.List;

import course.mon.web.entities.Product;
import course.mon.web.vo.ProductVO;

public interface ProductService {
	//CRUD  1.Create, 2 Read, 3 Update
	
	//2.read => R
	List<Product> getAllProduct();   
	
	//1.create => C
	boolean createProduct(ProductVO vo);
	
	//3.Update => U
	boolean updateProduct(ProductVO vo);
	
	//2.Read By ID
	ProductVO getProductById(Integer id);
	
	boolean deleteProduct(Integer id);
	
	public boolean deleteProductByIdCategory(Integer id);

	public List<ProductVO> getProductsByPage(int pageNumber, int pageSize);

	int getTotalProduct();

}