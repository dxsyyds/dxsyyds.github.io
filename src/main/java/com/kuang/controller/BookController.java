package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/book")
public class BookController {
    //Controller 调 service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询全部数据，并返回到一个数据展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    //添加书籍请求
    @RequestMapping("/addBooks")
    public String addBook(Books books){
        System.out.println("booo+>"+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";//重定向到 @RequestMapping("/allBook")请求：
    }

    //查询要修改的书籍
    @RequestMapping("/toUpdate")
    public String toUpdateBook(Model model,int id){
       model.addAttribute("Qbook",bookService.queryById(id));
        return "updateBook";
    }

    //修改数据
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("updateBook="+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除数据
    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        List<Books> list = new ArrayList<>();
        list.add(bookService.queryBookName(queryBookName));
        if (bookService.queryBookName(queryBookName)==null){
            list = bookService.queryAllBook();
            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);
        return "allBook";

    }

}
