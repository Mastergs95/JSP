package com.skillsoft;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "myServlet",urlPatterns = "/my-servlet")
public class MyServlet extends HttpServlet {

    private String message;

    public void init(){
        message="Hello! I am a servlet. I am here to serve";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy(){
    }
}
