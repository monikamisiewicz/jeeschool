package pl.coderslab.controller;

import pl.coderslab.dao.SolutionDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.Solution;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/userDetails")
public class UserDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        int userId = Integer.valueOf(req.getParameter("id"));
        User user = userDao.read(userId);

        SolutionDao solutionDao = new SolutionDao();
        List<Solution> userSolutions = Arrays.asList(solutionDao.findAllByUserId(userId));

        req.getSession().setAttribute("user", user);
        req.getSession().setAttribute("userSolutions", userSolutions);

        getServletContext().getRequestDispatcher("/userDetails.jsp")
                .forward(req, resp);
    }
}
