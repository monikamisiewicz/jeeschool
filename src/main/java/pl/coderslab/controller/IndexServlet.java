package pl.coderslab.controller;

import pl.coderslab.dao.SolutionDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/") //mapowanie dla strony startowej
public class IndexServlet extends HttpServlet {

    //na stronie startowej mamy wyświetlić 5 ostatnich rozwiązań
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("IndexServlet.doGet");
        SolutionDao solutionDao = new SolutionDao();

        int n = Integer.parseInt(getServletContext().getInitParameter("number-solutions"));
        //pobranie parametru inicjalizaji, który został określony w web.xml i zamiana na wart.liczbową

        List<Solution> recent = solutionDao.findRecent(n);

        //przekazanie listy do widoku index1.jsp
        req.setAttribute("recent", recent);
        getServletContext()
                .getRequestDispatcher("/index1.jsp")
                .forward(req,resp);
    }
}

/*
 W metodzie doGet pierwszego servletu pobierz utworzony wcześniej parametr
 określający liczbę wyświetlanych rozwiązań na stronie startowej.
Następnie wywołaj metodę findRecent(int) na obiekcie klasy Solution
wykorzystując uprzednio pobraną wartość parametru.
Przekaż pobraną listę do widoku index.jsp
 */