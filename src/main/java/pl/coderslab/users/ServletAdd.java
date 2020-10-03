package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletAdd",urlPatterns = {"/user/add"})
public class ServletAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("mail");
        String pass = request.getParameter("password");
        UserDao userDao = new UserDao();
        User user = new User(name,email,pass);
        userDao.createAdmin(user);
        response.sendRedirect("/user/list");
//działa
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request,response);
    }
}
