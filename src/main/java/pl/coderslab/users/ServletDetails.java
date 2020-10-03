package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletDetails",urlPatterns = {"/user/detail"})
public class ServletDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//dziala
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("detail"));
        UserDao userDao = new UserDao();
       User user =  userDao.readOneUser(id);
       request.setAttribute("user",user);
        getServletContext().getRequestDispatcher("/users/details.jsp").forward(request,response);
    }
}
