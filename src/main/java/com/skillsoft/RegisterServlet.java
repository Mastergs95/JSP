package com.skillsoft;

import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID=1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException{
    String un= request.getParameter("name");
    String em= request.getParameter("email");
    String memb= request.getParameter("membership");
    String [] subs= request.getParameterValues("subs");

    response.setContentType("text/html");
    PrintWriter pw=response.getWriter();
    pw.write("<br><b>Name: <b/>" + un);
    pw.write("<br><b>Email: <b/>" + em);
    pw.write("<br><b>Membership: <b/>" + memb);
    pw.write("<br><b>Subscriptions: <b/>");
    for(String sub:subs){
        pw.write(sub + "  ");
    }
}
}
