import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PageCountServlet", urlPatterns = "/count")
public class PageCountServlet extends HttpServlet {
    private int pageCount;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String reset = req.getParameter("reset");
        if (reset != null && reset.equals("true")) {
            pageCount = 0;
            resp.sendRedirect("/count");
        } else {
            pageCount++;
        }

        out.println("<h1>Page view count: " + pageCount + "</h1>");

    }
}
