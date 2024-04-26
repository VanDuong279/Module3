package org.example.ss9_web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="ProductDiscountCalServlet", value = "/calculator")
public class ProductDiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/webapp/index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String decsciption = req.getParameter("inputDescription");
        double listPrice = Double.parseDouble(req.getParameter("inputListPrice"));
        double discount = Double.parseDouble(req.getParameter("inputDiscountPercent"));

        double result = listPrice * discount * 0.01;
        resp.setContentType("text/html");

        PrintWriter out = resp.getWriter();
        out.println("<html><head>" + "<title>Result</title>" +"</head<body>");

        out.println("<h1>" + result + "</h1>");
        out.println("</body></html>");
    }
}
