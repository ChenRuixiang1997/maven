package com.kgc.exam.mapper;

import com.kgc.exam.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    public List<Book> queryBooks();
    public List<Book> queryBooksIntoPage(@Param("start") int itemStart,@Param("pageSize") int PageSize);
}
