package com.mk.mvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mk.mvc.model.BookCurd;
import com.mk.mvc.repo.IBookrepo;


@Service
public class IBookServiceImpl implements IBookService {
	
	
	@Autowired
	private IBookrepo ibrepo;

	@Override
	public String addBook(BookCurd addbook) {
	 ibrepo.save(addbook);
		return "book saved with id ::"+addbook.getBookId();
	}

	@Override
	public Iterable<BookCurd> getAllBooks() {
		Iterable<BookCurd> bookList=ibrepo.findAll();
		return bookList;
	}

	@Override
	public Optional<BookCurd> getBookByid(int id) {
		Optional<BookCurd> bc=ibrepo.findById(id);
		return bc;
	}

	@Override
	public String updateBook(BookCurd update) {
		int id=ibrepo.save(update).getBookId();
		
		return "Book is updatred with " +id;
	}

	@Override
	public String deleteBook(int id) {
		ibrepo.deleteById(id);
		return "book deleted";
	}

}
