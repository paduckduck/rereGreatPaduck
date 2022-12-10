package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

//    @RequestMapping("/")
//    public String home(){
//        System.out.println("home~~");
//        return "index";
//        // /WEB-INF/views/post.jsp 를 의미함
//    }
    @RequestMapping("/")
    public String index(){
        System.out.println("hello~~~");
        return "post";
        // /WEB-INF/views/post.jsp 를 의미함
    }
}
