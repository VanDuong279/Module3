package Ex1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/khachHang")
public class KhachHangServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<KhachHang> listKH = new ArrayList<>();
        KhachHang khachHang = new KhachHang("Duong","27-09-2004","Kon Tum","https://tse4.mm.bing.net/th?id=OIP.NW53_ed5H3T-NztCr0j47QHaHa&pid=Api&P=0&h=180");
        KhachHang khachHang1 = new KhachHang("Duong","27-09-2004","Kon Tum","https://tse4.mm.bing.net/th?id=OIP.NW53_ed5H3T-NztCr0j47QHaHa&pid=Api&P=0&h=180");
        KhachHang khachHang2 = new KhachHang("Duong","27-09-2004","Kon Tum","https://tse4.mm.bing.net/th?id=OIP.NW53_ed5H3T-NztCr0j47QHaHa&pid=Api&P=0&h=180");
        KhachHang khachHang3 = new KhachHang("Duong","27-09-2004","Kon Tum","https://tse4.mm.bing.net/th?id=OIP.NW53_ed5H3T-NztCr0j47QHaHa&pid=Api&P=0&h=180");

        listKH.add(khachHang);
        listKH.add(khachHang1);
        listKH.add(khachHang2);
        listKH.add(khachHang3);
        req.setAttribute("listKH",listKH);
        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }
}
