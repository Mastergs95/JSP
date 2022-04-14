package com.skillsoft;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/bookinfo")
public class BookInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String bname = request.getParameter("bname");
        String author = request.getParameter("author");

        request.setAttribute("updatedBName", bname.trim().toUpperCase());
        request.setAttribute("updatedAuthor", author.trim());

        RequestDispatcher rd = request.getRequestDispatcher("/jsp/booksubmitconfirm.jsp");
        rd.forward(request, response);
    }
}