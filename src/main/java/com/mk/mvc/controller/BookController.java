package com.mk.mvc.controller;

import java.util.Map;
import java.util.Optional;

import org.hibernate.mapping.List;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mk.mvc.model.BookCurd;
import com.mk.mvc.service.IBookService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private IBookService ibs;
	
	@GetMapping("/")
	public String mainPage() {
		return "home";
	}
	
	@GetMapping("/showPage")
	public String show(@ModelAttribute("bookCurd")BookCurd bookCurd) {
		return "registation";
	}
	
	

	@PostMapping("/showPage")
	public String saveb(@ModelAttribute("bookCurd")BookCurd bookCurd, Map<String,Object> map) {
		String msg=ibs.addBook(bookCurd);
		map.put("resultb", msg);
		return "result";
}
	@GetMapping("/allBookks")
	public String showAll(Map<String,Object> map) {
		//System.out.print(bookCurd);
		Iterable<BookCurd> allboooks=ibs.getAllBooks();
		map.put("bookList", allboooks);
		return "allBooks";
	}
	
	@GetMapping("/updateBook")
	public String getBookByPno(@ModelAttribute ("bookCurd")BookCurd bookCurd , @RequestParam ("id") Integer id) {
		Optional<BookCurd> ic=ibs.getBookByid(id);
		BeanUtils.copyProperties(ic.get(),bookCurd);
		return "updateBooks";
	}
	
	@PostMapping("/updateBook")
	public String updateBook(@ModelAttribute ("bookCurd")BookCurd bookCurd,Map<String,Object> map) {
		String res=ibs.updateBook(bookCurd);
		Iterable<BookCurd> allboooks=ibs.getAllBooks();
		map.put("bookList", allboooks);
		map.put("result", res);
		return "allBooks";
	}
	
	@GetMapping("/deleteBook")
	public String deletebook(@ModelAttribute ("bookCurd")BookCurd bookCurd , @RequestParam ("id") Integer id,Map<String,Object> map) {
		
		String res=ibs.deleteBook(id);
		Iterable<BookCurd> allboooks=ibs.getAllBooks();
		map.put("bookList", allboooks);
		map.put("result", res);
		return "allBooks";
	}

}
