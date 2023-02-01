import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    private int counter = 0;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        int count;
        try {
            count = Integer.parseInt(req.getParameter("count"));
        } catch (Exception e) {
            count = 1;
        }
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String name;
        name = req.getParameter("name");

        for (int i = 0; i < count; i++) {
            if (name != null) {
                out.println("<h1>Hello, " + name + "!</h1>");
            } else {
                out.println("<h1>Hello, World!</h1>");
            }
        }

        String reset = req.getParameter("reset");
        if (reset != null && reset.equals("true")) {
            counter = 0;
        } else {
            counter++;
        }
        out.println("<p>Page viewed " + counter + " times.</p>");
    }
}
