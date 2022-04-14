package com.skillsoft;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(urlPatterns = "/signin")
public class SignInServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{

        String username= req.getParameter("unname");
        req.setAttribute("username","session_" + username);

        HttpSession session = req.getSession(false);
        session.setAttribute("username","session_" + username);

        ServletContext ctx = getServletContext();
        ctx.setAttribute("username","servletcontext_" + username);

        try{
            RequestDispatcher rd = req.getRequestDispatcher("/jsp/signinconfirm.jsp");
            rd.forward(req,res);
        } catch (ServletException e){
            e.printStackTrace();
        }
    }
}
