package com.zubtsov.spring.mvc;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class WebAppInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(javax.servlet.ServletContext servletContext) throws ServletException {
        XmlWebApplicationContext appContext = new XmlWebApplicationContext();
        appContext.setConfigLocation("/WEB-INF/spring/dispatcher-config.xml");

        DispatcherServlet servlet = new DispatcherServlet(appContext);

        ServletRegistration.Dynamic registration = servletContext.addServlet("zubtsov2", servlet);
        registration.setLoadOnStartup(1);
        registration.addMapping("/dynamic/*");

//        registration = servletContext.addServlet("debugHttpServlet", new DebugHttpServlet());
//        registration.setLoadOnStartup(1);
//        registration.addMapping("/debug");
    }
}
