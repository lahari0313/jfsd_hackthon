package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;

public class UserDAOImpl implements UserDAO {

	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {
		boolean f = false;

		try {
			String sql = "insert into user(userid,username,email,password, role) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getUserid());
			ps.setString(2, us.getUsername());
			ps.setString(3, us.getEmail());
			ps.setString(4, us.getPassword());
			ps.setString(5, us.getRole());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	// Method to get user by ID and Email
    public User getValidateUser(String username, String password) {
        User user = null;
        try {
            String query = "SELECT * FROM user WHERE username=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUserid("userid");
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                // Set other user properties here
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        try {
            String query = "SELECT * FROM user";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserid(rs.getString("userid"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                // Set other user properties here
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
    

}