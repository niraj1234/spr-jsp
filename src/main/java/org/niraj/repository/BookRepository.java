package org.niraj.repository;

import java.util.Collection;
import java.util.Optional;

import com.niraj.dto.BookData;

public interface BookRepository {
 
	Collection<BookData> findAll();
    Optional<BookData> findById(String isbn);
    BookData add(BookData book);
}