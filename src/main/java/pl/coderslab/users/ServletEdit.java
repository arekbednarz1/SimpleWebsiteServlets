package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletEdit", urlPatterns = {"/user/edit"})
public class ServletEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String email=request.getParameter("email");
            int id = Integer.parseInt(request.getParameter("id"));
            User user = new User(username, email);
            UserDao userDao = new UserDao();
            user.setId(id);
            userDao.updateUserData(user);
            response.sendRedirect("/user/list");


    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("edit"));
        UserDao userDao = new UserDao();
        List<User> list = userDao.readAllusers();
        User user = new User();
        for (User u : list){
            if (u.getId()==id){
                user = u;
                break;
            }
//dziala
        }
        request.setAttribute("user",user);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request,response);
    }
}
