package com.zephyr.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.zephyr.model.Category;
import com.zephyr.model.Product;
import com.zephyr.service.ProductService;
	@Controller
	public class ProductController {
		@Autowired
		private ProductService productService;
	@RequestMapping("admin/getproductform")
		public String getProductForm(Model model){
		List<Category> categories = productService.getAllCategories();
		model.addAttribute("categories", categories);
		model.addAttribute("product", new Product());
			return "productform";
	}
	@RequestMapping("admin/saveproduct")
		public String saveProduct(@ModelAttribute(name="product") Product product, BindingResult result,
				Model Model) throws IOException{
		if(result.hasErrors()) {
			List<Category> categories = productService.getAllCategories();
			Model.addAttribute("categories", categories);
			return "productform";
		}
		productService.saveProduct(product);
		MultipartFile image = product.getImage();
		Path path = Paths.get("/Users/shaikhsakib/Desktop/eclipse-workspace/red-cart/src/main/webapp/resources/images/" + product.getId() + ".png");
		try {
			image.transferTo((new File(path.toString())));
		}catch(IllegalStateException ex) {
			ex.printStackTrace();
		}
			return "redirect:/getallproducts";
	}
	@RequestMapping("/getallproducts")
	public String getAllProducts(Model model) {
		List<Product> products = productService.getAllProducts();
		model.addAttribute("products", products);
		model.addAttribute("pro", "This is pro");
		return "productlist";
	}
	@RequestMapping("/viewproduct/{id}")
	public String getProductById(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "viewproduct";
	}
	@RequestMapping("/deleteproduct/{id}")
	public String deleteProductById(@PathVariable int id, Model model) {
		productService.deleteProduct(id);
		return "redirect:/getallproducts";
	}
	@RequestMapping("/geteditform/{id}")
	public String getEditForm(@PathVariable int id, Model model) {
		List<Category> categories = productService.getAllCategories();
		model.addAttribute("categories", categories);
		Product product = productService.getProductById(id);
		model.addAttribute("productObj", product);
		return "editform";
	}
	@RequestMapping("/editproduct")
	public String editProduct(@ModelAttribute(name="productObj") Product product, BindingResult result,
			Model Model) throws IOException{
	if(result.hasErrors()) {
		List<Category> categories = productService.getAllCategories();
		Model.addAttribute("categories", categories);
		return "productform";
	}
	productService.updateProduct(product);
	MultipartFile image = product.getImage();
	Path path = Paths.get("/Users/shaikhsakib/Desktop/eclipse-workspace/red-cart/src/main/webapp/resources/images/" + product.getId() + ".png");
	try {
		image.transferTo((new File(path.toString())));
	}catch(IllegalStateException ex) {
		ex.printStackTrace();
	}
		return "redirect:/getallproducts";

	}
	@RequestMapping("/searchbycategory")
	public String selectByCategory(@RequestParam String searchCondition, Model model) {
		model.addAttribute("products", productService.getAllProducts());
		if(searchCondition.equals("All")) {
			model.addAttribute("searchCondition", "");
		}else {
			model.addAttribute("searchCondition", searchCondition);
		}
		return "productlist";
	}
	}
