package com.zubtsov.spring.mvc.httptrace;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

public class DebugHttpServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = new PrintWriter(resp.getOutputStream());

        out.println("Debug HTTP servlet. Author: Zubtsov Ruslan");

        out.print("Request method: "); out.println(req.getMethod());


        out.print("Headers number: ");
        List<String> headerNames = Collections.list(req.getHeaderNames());
        Collections.sort(headerNames);
        out.println(headerNames.size());

        for (String header : headerNames) {
            out.println(req.getHeader(header));
        }

        out.print("Parameters number:");
        Map<String, String[]> reqParameters = req.getParameterMap();
        out.println(reqParameters.size());
        for (Map.Entry<String, String[]> entry : reqParameters.entrySet()) {
            out.print(entry.getKey() + ": " + Arrays.toString(entry.getValue()));
        }

        out.flush();
    }
}
