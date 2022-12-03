package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

//    @RequestMapping("/")
//    public String home(){
//        System.out.println("home~~");
//        return "index";
//        // /WEB-INF/views/index.jsp 를 의미함
//    }
    @RequestMapping("/")
    public String paduck(){
        System.out.println("paduck~~~");
        return "paduck";
        // /WEB-INF/views/paduck.jsp 를 의미함
    }
    @RequestMapping("/board")
    public String board(){
        System.out.println("board~~~");
        return "board";
        // /WEB-INF/views/board.jsp 를 의미함
    }

}
