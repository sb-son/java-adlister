import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/pizza-order.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String size = req.getParameter("size");
        String[] toppings = req.getParameterValues("toppings");
        String address = req.getParameter("address");
        System.out.println("Crust Type: " + crust);
        System.out.println("Sauce Type: " + sauce);
        System.out.println("Size Type: " + size);
        System.out.println("Toppings: " + Arrays.toString(toppings));
        System.out.println("Delivery Address: " + address);
    }
}
