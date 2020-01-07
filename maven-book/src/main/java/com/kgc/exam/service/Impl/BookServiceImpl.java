package com.kgc.exam.service.Impl;

import com.kgc.exam.entity.Book;
import com.kgc.exam.mapper.BookMapper;
import com.kgc.exam.service.BookService;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookMapper bookMapper;
    @Override
    public List<Book> queryBooks() {
        return bookMapper.queryBooks();
    }
}
