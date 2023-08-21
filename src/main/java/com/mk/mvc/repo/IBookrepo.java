package com.mk.mvc.repo;

import org.springframework.data.repository.CrudRepository;

import com.mk.mvc.model.BookCurd;

public interface IBookrepo extends CrudRepository<BookCurd, Integer> {

}
