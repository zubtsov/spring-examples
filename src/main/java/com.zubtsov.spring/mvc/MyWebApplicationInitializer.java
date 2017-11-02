package com.zubtsov.spring.mvc;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;

public class MyWebApplicationInitializer { //implements WebApplicationInitializer {

    public void onStartup(ServletContext servletCxt) {

//        // Load Spring web application configuration
//        AnnotationConfigWebApplicationContext cxt = new AnnotationConfigWebApplicationContext();
//        cxt.register(AppConfig.class);
//        cxt.refresh();
//
//        // Create DispatcherServlet
//        DispatcherServlet servlet = new DispatcherServlet(cxt);
//
//        // Register and map the Servlet
//        ServletRegistration.Dynamic registration = servletCxt.addServlet("app", servlet);
//        registration.setLoadOnStartup(1);
//        registration.addMapping("/app/*");
    }

}