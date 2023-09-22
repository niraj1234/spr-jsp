package com.niraj.service;

import java.util.Collection;

import com.niraj.dto.Book;

public interface BookService {
    Collection<Book> getBooks();

    Book addBook(Book book);
}