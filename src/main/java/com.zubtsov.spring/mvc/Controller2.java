package com.zubtsov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controller2 {
    @RequestMapping("welcome")
    public ModelAndView helloWorld() {

        String message = "<br><div style='text-align:center;'>"
                + "<h3>********** HOHO HAHA</h3>This message is coming from Controller2.java **********</div><br><br>";
        return new ModelAndView("welcome", "message", message);
    }
}