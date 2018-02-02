package com.z1max.bookshelf.controller;

import com.z1max.bookshelf.domain.Book;
import com.z1max.bookshelf.service.BookService;
import com.z1max.bookshelf.service.SortHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/")
public class BookController {

    @Autowired
    private BookService bookService;

    @GetMapping("{page}")
    public String page(@PathVariable(value = "page") int page, @RequestParam String sortingBy, Model model) {
        SortHelper sortHelper = new SortHelper(sortingBy);
        model.addAttribute("sortHelper", sortHelper);
        List<Book> books;

        if (!sortingBy.equals("no_sort")){
            books = bookService.getSortedPage(page, sortHelper);
        } else {
            books = bookService.getPage(page);
        }

        model.addAttribute("books", books);

        Book book = new Book();
        model.addAttribute("book", book);

        model.addAttribute("totalPages", bookService.totalPages());
        model.addAttribute("currentPage", page);

        return "books";
    }

    @GetMapping("/books/{id}")
    public String details(@PathVariable(value = "id") Long id, Model model) {
        Optional<Book> book = bookService.getById(id);
        model.addAttribute("book", book);
        model.addAttribute("bookToEdit", book.get());
        return "details";
    }

    @PostMapping("/{page}")
    public String createBook(@PathVariable(value = "page") int page, @RequestParam String sortingBy, Book book, Model model) {
        bookService.save(book);
        return page(page, sortingBy, model);
    }

    @PostMapping("/delete/{id}")
    public String deleteBook(@PathVariable Long id) {
        Optional<Book> book = bookService.getById(id);
        if (book.isPresent()) {
            bookService.delete(book.get());
        }
        return "redirect:/";
    }

    @PostMapping("/books/{id}")
    public String editBook(@PathVariable(value = "id") Long id, Book bookDetails, Model model) {
        Optional<Book> bookOptional = bookService.getById(id);

        Book book = bookOptional.get();
        model.addAttribute("bookToEdit", book);

        book.setAuthor(bookDetails.getAuthor());
        book.setDescription(bookDetails.getDescription());
        book.setTitle(bookDetails.getTitle());
        book.setIsbn(bookDetails.getIsbn());
        book.setPrintYear(bookDetails.getPrintYear());
        book.setReadAlready(bookDetails.isReadAlready());
        bookService.save(book);

        bookOptional = Optional.of(book);

        model.addAttribute("book", bookOptional);
        return "details";
    }
}
