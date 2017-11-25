package com.zubtsov.spring.mvc.httptrace;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@org.springframework.stereotype.Controller
public class Controller {
    @RequestMapping("debug")
    public ModelAndView debugHttp() {
        return new ModelAndView("debug");
    }
}