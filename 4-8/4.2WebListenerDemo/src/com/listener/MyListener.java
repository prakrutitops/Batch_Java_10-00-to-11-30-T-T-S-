package com.listener;
/*

Listener will used to listen events
Listener has to methods 
	contextInitialized		
	contextDestroyed

Calling sequence : Listner + Filter + Servlet  

Here we create hit counter with listner 

*/
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("Context Destroyed");
    	sce.getServletContext().getAttribute("counter");
    }

    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("Context Initialized");
    	sce.getServletContext().getAttribute("counter");
    }
	
}
