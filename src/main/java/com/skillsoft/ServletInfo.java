package com.skillsoft;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

@WebServlet(name = "info-servlet", urlPatterns = "/servletinfo")
public class ServletInfo extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{

        PrintWriter out = res.getWriter();
        out.write("Servlet details:");

        ServletConfig cfg = getServletConfig();
        out.write("\nServlet name: " +cfg.getServletName());

        out.write("\nConfig params: ");
        Iterator pamramIterator = cfg.getInitParameterNames().asIterator();
        while(pamramIterator.hasNext()){
            out.write("\n" + pamramIterator.next().toString());
        }

        out.write("\n\n*****************************\n\n");

        ServletContext ctx = getServletContext();
        out.write("Context name: " + ctx.getServletContextName());
        out.write("Context path: " + ctx.getContextPath());
        out.write("Server info: " + ctx.getServerInfo());

        out.write("\nAttributes: ");
        Iterator attIterator = ctx.getAttributeNames().asIterator();
        while (attIterator.hasNext()){
            out.write("\n" + attIterator.next().toString());
        }

        out.write("\n\nContext params: ");
        pamramIterator=cfg.getInitParameterNames().asIterator();
        while (pamramIterator.hasNext()){
            out.write("\n" + pamramIterator.next().toString());
        }

        ctx.setAttribute("rootuser","myadmin");
        out.write("\nAttribute rootuser: " +ctx.getAttribute("rootuser"));
    }
}
