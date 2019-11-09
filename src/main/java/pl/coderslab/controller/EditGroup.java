package pl.coderslab.controller;

import pl.coderslab.dao.UserGroupDao;
import pl.coderslab.model.UserGroup;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editGroup")
public class EditGroup extends HttpServlet {
    UserGroupDao userGroupDao = new UserGroupDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        int id = Integer.parseInt(req.getParameter("id"));
        UserGroup userGroup = userGroupDao.read(id);

        req.getSession().setAttribute("userGroup", userGroup);

        getServletContext().getRequestDispatcher("/editGroup.jsp")
                .forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        UserGroup userGroup = userGroupDao.read(id);

        userGroup.setName(req.getParameter("name"));
        userGroupDao.update(userGroup);

        resp.sendRedirect("/groupList");
    }
}
