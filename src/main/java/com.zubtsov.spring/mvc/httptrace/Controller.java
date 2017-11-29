package com.zubtsov.spring.mvc.httptrace;

import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

@org.springframework.stereotype.Controller
public class Controller {
    @RequestMapping("debug")
    public String debugHttp(HttpServletRequest request) {
        List<String> headersNames = Collections.list(request.getHeaderNames());
        SortedMap<String, String> httpHeaders = new TreeMap<>();
        for (String h : headersNames) {
            httpHeaders.put(h, request.getHeader(h));
        }

        Map<String, String[]> httpParameters = request.getParameterMap();

        Cookie[] cookies = request.getCookies();

        request.setAttribute("httpHeaders", httpHeaders);
        request.setAttribute("httpParameters", httpParameters);
        request.setAttribute("cookies", cookies);
        return "debug";
    }
}