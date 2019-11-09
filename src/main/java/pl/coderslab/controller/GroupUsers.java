package pl.coderslab.controller;

import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/groupUsers")
public class GroupUsers extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        List<User> groupUsers = Arrays.asList(userDao.findAllByGroupId(Integer.valueOf(req.getParameter("id"))));

        req.getSession().setAttribute("groupUsers", groupUsers);

        getServletContext().getRequestDispatcher("/groupUsers.jsp")
                .forward(req, resp);

    }
}
