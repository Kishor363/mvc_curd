package com.mk.mvc.service;

import java.util.List;
import java.util.Optional;

import com.mk.mvc.model.BookCurd;

public interface IBookService {
	
	public String addBook(BookCurd addbook);
	
	public Iterable<BookCurd> getAllBooks();
	
	public Optional<BookCurd> getBookByid(int id);
	
	public String updateBook(BookCurd update);
	
	public String deleteBook(int id);

}
