package pl.coderslab.controller;

import pl.coderslab.dao.SolutionDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/solutionDetails")
public class SolutionDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        SolutionDao solutionDao = new SolutionDao();
        Solution solution = solutionDao.read(Integer.valueOf(req.getParameter("id")));

        req.getSession().setAttribute("solution", solution);

        getServletContext().getRequestDispatcher("/solutionDetails.jsp")
        .forward(req, resp);

    }
}
