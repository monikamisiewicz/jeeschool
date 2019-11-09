package pl.coderslab.controller;

import pl.coderslab.dao.UserGroupDao;
import pl.coderslab.model.UserGroup;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/groupList")
public class GroupList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserGroupDao userGroupDao = new UserGroupDao();

        List<UserGroup> groupList = Arrays.asList(userGroupDao.findAll());
        req.getSession().setAttribute("groupList", groupList);

        getServletContext().getRequestDispatcher("/groupList.jsp")
                .forward(req, resp);
    }
}
