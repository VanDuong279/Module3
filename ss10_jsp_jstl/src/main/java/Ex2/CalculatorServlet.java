package Ex2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "calculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/index1.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double firstNum = Double.parseDouble(req.getParameter("firstNum"));
        double secondNum = Double.parseDouble(req.getParameter("secondNum"));
        String operator = req.getParameter("cal");
        double result = 0;
        switch (operator) {
            case "+" :
                result = firstNum + secondNum;
                break;
            case "-" :
                result = firstNum - secondNum;
                break;
            case "*":
                result = firstNum * secondNum;
                break;
            case "/":
                if(secondNum != 0)
                    result = firstNum / secondNum;
                else
                    throw new RuntimeException("Can't divide by zero");
                break;
            default:
                throw new RuntimeException("Invalid operation");
        }

        resp.setContentType("text/html");

        PrintWriter out = resp.getWriter();
        out.println("<html><head>" + "<title>Result</title>" +"</head<body>");
        out.println("<h1>" + "Result" + "</h1>");
        out.println("<h3>" + result + "</h3>");
        out.println("</body></html>");
    }
}
