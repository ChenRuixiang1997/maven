package com.kgc.exam.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.Book;
import com.kgc.exam.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("book")
@ResponseBody
public class BookController {
    @Autowired
    private BookService bookService;
    @RequestMapping("queryBooks")
    public List<Book> queryBooks(){
        return bookService.queryBooks();
    };
    @RequestMapping("queryPage")
    public PageInfo<Book> queryAll(@RequestParam(value = "pageNo",defaultValue = "1") Integer pageNo, Integer pageSize){
        pageNo = pageNo==null?1:pageNo;
        pageSize = pageSize==null?10:pageSize;
        Page<Book> page = null;
        PageInfo<Book> pageInfo = null;
        try {
            page = PageHelper.startPage(pageNo,pageSize);
            pageInfo = new PageInfo<>(queryBooks());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pageInfo;
    }


}
