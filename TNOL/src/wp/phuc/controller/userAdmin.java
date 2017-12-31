package wp.phuc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.phuc.DAO.user;
import wp.phuc.model.userDAL;

@WebServlet("/userAdmin")
public class userAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public userAdmin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAL usAdmin =new userDAL();
		HttpSession session=request.getSession();
		String username=session.getAttribute("username").toString();
		user us=usAdmin.viewInfo(username);
		request.setAttribute("userAdmin",us);
		request.getRequestDispatcher("WEB-INF/admin/userinfo.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
