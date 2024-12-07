package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
    try {
      String userid=req.getParameter("userid");
      String username=req.getParameter("username");
      String email=req.getParameter("email");
      String password =req.getParameter("password"); 
      String check=req.getParameter("check");
      String role = req.getParameter("role");
      
      //System.out.println(userid+" " username+" "+email+" "+phno+" "+password+" "+country+" "+check);
      
      User us=new User();
      us.setUserid(userid);
      us.setUsername(username);
      us.setEmail(email);
      us.setPassword(password);
      us.setRole(role);
    
      
      HttpSession session=req.getSession();
      
      if(check!=null)
      {
        UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
        boolean f =dao.userRegister(us);
        if(f)
        {
          //System.out.println("User Register Success...");
          session.setAttribute("succMsg","Registration success..");
          resp.sendRedirect("register.jsp");
        }else {
          //System.out.println("Something wrong on server..");
          session.setAttribute("failedMsg","Something wrong on server..");
          resp.sendRedirect("register.jsp"); 
        }
         
      }else {
        session.setAttribute("failedMsg","Please Check Agree & Terms Condition");
        resp.sendRedirect("register.jsp"); 
        //System.out.println("Please Check Agree & Terms Condition");
      }
      
      
      
      
    } catch(Exception e) {
      e.printStackTrace();
    }
    
    
    
    
  }
  
  
  
  
  
  
}