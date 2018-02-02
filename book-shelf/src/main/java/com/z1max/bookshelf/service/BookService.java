package com.z1max.bookshelf.service;

import com.z1max.bookshelf.domain.Book;
import com.z1max.bookshelf.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {

    private static final int PAGE_SIZE = 20;

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getPage(int pageNumber){
        PageRequest pageRequest = PageRequest.of(pageNumber - 1, PAGE_SIZE);
        return bookRepository.findAll(pageRequest).getContent();
    }

    public List<Book> getSortedPage(int pageNumber, SortHelper sortHelper){
        Sort sort = new Sort(Sort.Direction.ASC, sortHelper.toString());
        PageRequest pageRequest = PageRequest.of(pageNumber - 1, PAGE_SIZE, sort);
        return bookRepository.findAll(pageRequest).getContent();
    }

    public Optional<Book> getById(Long id){
        return bookRepository.findById(id);
    }

    public Book save(Book book){
        return bookRepository.save(book);
    }

    public void delete(Book book){
        bookRepository.delete(book);
    }

    public int totalPages(){
        return (int) (bookRepository.count() / PAGE_SIZE);
    }

}
