package course.mon.web.controller.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import course.mon.web.service.CategoryService;
import course.mon.web.service.ProductService;
import course.mon.web.service.UserService;
import course.mon.web.vo.CategoryVO;
import course.mon.web.vo.ProductVO;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = {"","/", "/home"})
	public String index() {
		return "homeAdminPage";
	}

	// ----------------------------------------PRODUCT START--------------------------------------------
	@RequestMapping(value = "/product")
	public ModelAndView products() {
		ModelAndView m = new ModelAndView("productListAdminPage");
		m.addObject("allProduct", productService.getAllProduct());
		m.addObject("adminName", userService.getUserName());
		return m;
	}
	
	@RequestMapping(value = "/product/create", method = RequestMethod.GET)
	public ModelAndView createProduct() {
		ModelAndView m = new ModelAndView("createProductAdminPage");
		m.addObject("categoryList", categoryService.getAllCategory());
		m.addObject("productVo", new ProductVO());
		return m;
	}

	@RequestMapping(value = "/product/create", method = RequestMethod.POST)
	public ModelAndView storeProduct(@ModelAttribute("productVo") @Valid ProductVO vo, BindingResult result) {
		boolean success = !result.hasErrors();
		if (success) {
			productService.createProduct(vo);
			return new ModelAndView("redirect:/admin/product");
		}
		return new ModelAndView("createProductAdminPage");
	}
	
	
	@RequestMapping(value = "/product/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editProduct(@PathVariable("id") int id) {
		ModelAndView m = new ModelAndView("editProductAdminPage");
		m.addObject("productVo", productService.getProductById(id));
		m.addObject("categoryList", categoryService.getAllCategory());
		return m;
	}
	
	@RequestMapping(value = "/product/edit/{id}", method = RequestMethod.POST)
	public ModelAndView editProduct(@ModelAttribute("productVo") @Valid ProductVO vo, BindingResult result) {
		ModelAndView m = new ModelAndView("editProductAdminPage");
		boolean success = !result.hasErrors();
		if (success) {
			productService.updateProduct(vo);
			return new ModelAndView("redirect:/admin/product");	
		}	
		return new ModelAndView("editProductAdminPage");
	}

	@RequestMapping(value = "/product/delete/{id}", method = RequestMethod.GET)
	public RedirectView deleteProduct(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {
		boolean result = productService.deleteProduct(id);

		String message = result == true ? "Success!" : "Failed!";
		redirectAttributes.addFlashAttribute("msg", message);

		return new RedirectView("/admin/product", true);
	}
	
	// ----------------------------------------PRODUCT END--------------------------------------------

	// ----------------------------------------CATEGORY START--------------------------------------------
	@RequestMapping(value = "/category")
	public ModelAndView category() {
		ModelAndView m = new ModelAndView("categoryListAdminPage");
		m.addObject("allCategory", categoryService.getAllCategory());
		return m;
	}

	@RequestMapping(value = "/category/create", method = RequestMethod.GET)
	public ModelAndView createCategory() {
		ModelAndView m = new ModelAndView("createCategoryAdminPage");
		m.addObject("categoryList", categoryService.getAllCategory());
		m.addObject("categoryVo", new CategoryVO());
		return m;
	}

	@RequestMapping(value = "/category/create", method = RequestMethod.POST)
	public ModelAndView storeCategory(@ModelAttribute("categoryVo") @Valid CategoryVO vo, BindingResult result, final RedirectAttributes redirectAttributes) {
		boolean success = !result.hasErrors();
		if (success) {
			categoryService.createCategory(vo);
			redirectAttributes.addFlashAttribute("msg", "Success!");
			return new ModelAndView("redirect:/admin/category");
		}
		return new ModelAndView("createCategoryAdminPage");
	}

	@RequestMapping(value = "/category/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editCategory(@PathVariable("id") int id) {
		ModelAndView m = new ModelAndView("editCategoryAdminPage");
		m.addObject("categoryVo", categoryService.findCategoryById(id));
		return m;
	}
	
	@RequestMapping(value = "/category/edit/{id}", method = RequestMethod.POST)
	public ModelAndView updateCategory(@ModelAttribute("categoryVo") @Valid CategoryVO vo, BindingResult result, final RedirectAttributes redirectAttributes) {
		boolean success = !result.hasErrors();
		if (success) {
			categoryService.updateCategory(vo);
			return new ModelAndView("redirect:/admin/category");
		}
		return new ModelAndView("editCategoryAdminPage");
	}
	
	@RequestMapping(value = "/category/delete/{id}", method = RequestMethod.GET)
	public RedirectView deleteCategory(@PathVariable("id") int id, final RedirectAttributes redirectAttributes) {
		boolean result = categoryService.deleteCategory(id);
		String message = result == true ? "Success!" : "Failed!";
		
		redirectAttributes.addFlashAttribute("msg", message);
		//productService.deleteProductByIdCategory(id);
		return new RedirectView("/admin/category", true);
	}
	
}