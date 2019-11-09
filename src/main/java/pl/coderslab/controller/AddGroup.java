package pl.coderslab.controller;

import pl.coderslab.dao.UserGroupDao;
import pl.coderslab.model.UserGroup;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addGroup")
public class AddGroup extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //wyświetlenie formularza
        getServletContext().getRequestDispatcher("/addGroup.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       //odsługa parametrow pobranych metodą post z formularza

        String name = req.getParameter("name");
        UserGroup userGroup = new UserGroup();
        userGroup.setName(name);

        UserGroupDao userGroupDao = new UserGroupDao();
        userGroupDao.create(userGroup);
        resp.sendRedirect("/groupList");
    }
}
