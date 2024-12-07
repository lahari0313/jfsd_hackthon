package com.user.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/Users")
public class Users extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Users() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = DBConnect.getConn();
        UserDAOImpl userDAO = new UserDAOImpl(conn);
        List<User> userList = userDAO.getAllUsers();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("userlist.jsp").forward(request, response);
    }
}
