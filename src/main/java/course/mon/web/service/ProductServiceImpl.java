package course.mon.web.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import course.mon.web.config.Constants;
import course.mon.web.entities.Product;
import course.mon.web.repositories.CategoryRepository;
import course.mon.web.repositories.ProductRepository;
import course.mon.web.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private EntityManager manager;
	
	@Value("${upload.path.product}")
	private String pathFolder;
	
	@Autowired
	private ProductRepository repository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Override
	public List<Product> getAllProduct() {
		return repository.findAll();
	}

	@Override
	public boolean createProduct(ProductVO vo) {
		boolean result = false;
		try {
			//1. Create instance of Product
			Product product = new Product();
			//name
			product.setName(vo.getName());
			//price
			product.setPrice_new(vo.getPrice_new());
			product.setPrice_old(vo.getPrice_old());
			
			product.setDate(vo.getDate());
			product.setTeacher(vo.getTeacher());
			//file
			byte[] bytes = vo.getImages().getBytes();
			Path path = Paths.get(pathFolder + vo.getImages().getOriginalFilename());
			Files.write(path, bytes);
			product.setImages(Constants.FOLDER_UPLOAD_PRODUCT + vo.getImages().getOriginalFilename());
			
			//category
			product.setCategory(vo.getCategory());
			
			/*//2... Convert Active boolean to Int
			int active = vo.isActive() == true ? 1 : 0;
			product.setIsActive(active);*/
			
			//3. Save Product to Database
			repository.save(product);
			result = true;
		} catch (PersistenceException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean updateProduct(ProductVO vo) {
		boolean result = false;
		try {
			//1. Create instance of Product
			Product product = repository.findProductById(vo.getId());
			//2 Convert data Vo to Entity
			product.setName(vo.getName());
			product.setPrice_new(vo.getPrice_new());
			product.setPrice_old(vo.getPrice_old());
			
			product.setDate(vo.getDate());
			product.setTeacher(vo.getTeacher());
			
			//file
			byte[] bytes = vo.getImages().getBytes();
			Path path = Paths.get(pathFolder + vo.getImages().getOriginalFilename());
			Files.write(path, bytes);
			product.setImages(Constants.FOLDER_UPLOAD_PRODUCT + vo.getImages().getOriginalFilename());
			
			//category
			product.setCategory(vo.getCategory());
			
			/*//2... Convert Active boolean to Int
			int active = vo.isActive() == true ? 1 : 0;
			product.setIsActive(active);*/
			
			//3. Save Product to Database
			repository.save(product);
			result = true;
		} catch (PersistenceException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean deleteProduct(Integer id) {
		if (id != null) {
			repository.deleteProductById(id);
			return true;
		}
		return false;
	}
	
	@Override
	public boolean deleteProductByIdCategory(Integer id) {
		if (id != null) {
			repository.deleteProductByIdCategory(id);
			return true;
		}
		return false;
	}
	
	

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductVO> getProductsByPage(int pageNumber, int pageSize) {
		List<ProductVO> voList = new ArrayList<>();
		try {
			int start = (pageNumber - 1) * pageSize;
			Session session = (Session) manager.getDelegate();
			Query q = session.createQuery("FROM Product");
			q.setFirstResult(start);
			q.setMaxResults(pageSize);
			
			List<Product> listResult = q.getResultList();
			
			for (Product product : listResult) {
				ProductVO vo = new ProductVO();
				
				vo.setId(product.getId());
				vo.setName(product.getName());
				vo.setPrice_new(product.getPrice_new());
				vo.setPrice_old(product.getPrice_old());
				vo.setTeacher(product.getTeacher());
				vo.setDate(product.getDate());
				
				/*boolean active = product.getIsActive() == 1 ? true : false;
				vo.setActive(active);*/
				voList.add(vo);
			}
			
		} catch (Exception e) {
			 e.printStackTrace();
		}
		return voList;
	}

	@Override
	public int getTotalProduct() {
		return (int) repository.count();
	}

	@Override
	public ProductVO getProductById(Integer id) {
		Product product = repository.findProductById(id);
		
		ProductVO vo = new ProductVO();
		
		vo.setId(product.getId());
		vo.setName(product.getName());
		vo.setPrice_new(product.getPrice_new());
		vo.setPrice_old(product.getPrice_old());
		vo.setTeacher(product.getTeacher());
		vo.setDate(product.getDate());
		vo.setCategory(product.getCategory());
		
		/*Path path = Paths.get(product.getImages());
		byte[] content = content = Files.readAllBytes(path);
		MultipartFile result = new MockMultipartFile(product.getImages(),
                originalFileName, contentType, content);*/
		/*boolean active = product.getIsActive() == 1 ? true : false;
		vo.setActive(active);*/
		
		return vo;
	}

}