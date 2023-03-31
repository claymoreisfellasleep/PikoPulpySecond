import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/home")

public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.print("<div>");
        out.print("<form action='' method='get'>");
        out.print("<input type='text' name='full_name' placeholder='Insert full name...'> <br> <br>");
        out.print("<input type='number' name='age' placeholder='Insert age...'> <br> <br>");
        out.print("<input type='radio' name='gender'>Male <br>");
        out.print("<input type='radio' name='gender'>Female <br> <br>");
        out.print("<button> SEND </button>");
        out.print("</form>");
        out.print("</div>");
    }
}