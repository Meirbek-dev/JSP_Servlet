package bmk_jsp_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Main() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {

        if (request.getParameter("calc") != null) {
            ResultForm resultForm = null;
            try {
                double x = Double.parseDouble(request.getParameter("x"));
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));

                if (x >= 5) {
                    double y = (5 * x * x) / (6 * (a + b) * (a + b));
                    resultForm = new ResultForm((y));
                } else {
                    double y = x * x * x * (a + b);
                    resultForm = new ResultForm((y));
                }

            } catch (Exception e) {
            }
            request.setAttribute("resultForm", resultForm);
            getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
            return;
        }

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
