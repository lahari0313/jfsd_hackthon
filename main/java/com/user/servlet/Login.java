package com.user.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
	    String password =request.getParameter("password"); 
	    User loginUser = new User();
	    HttpSession session=request.getSession();
	    try {
	    	 UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
	    	 loginUser = dao.getValidateUser(username, password);
	    }catch(Exception e) {
	        e.printStackTrace();
	    }
	    
	    if(loginUser != null && loginUser.getEmail()!= null) {
	    	//session.setAttribute("succMsg","Login Success!");
	    	response.sendRedirect("index.jsp");  
	    }else {
	    	session.setAttribute("failedMsg","Invalid Credentails!");
	    	response.sendRedirect("login.jsp");  
	    }    	
	   
		
	}
	

}
