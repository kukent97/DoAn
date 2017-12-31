package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.lopHoc;
import wp.phuc.DAO.user;
import wp.phuc.model.lopHocDAL;
import wp.phuc.model.userDAL;

@WebServlet("/userList")
public class userList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public userList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAL usDAL=new userDAL();
		ArrayList<user> listUser1= usDAL.listUser1();
		request.setAttribute("listUser1", listUser1);
		ArrayList<user> listUser2= usDAL.listUser2();
		request.setAttribute("listUser2", listUser2);
		ArrayList<user> listUser3= usDAL.listUser3();
		request.setAttribute("listUser3", listUser3);
		ArrayList<user> listUser4= usDAL.listUser4();
		request.setAttribute("listUser4", listUser4);
		lopHocDAL lhDal=new lopHocDAL();
		ArrayList<lopHoc> listLopHoc=lhDal.listLopHoc();
		request.setAttribute("listLopHoc", listLopHoc);
		request.getRequestDispatcher("WEB-INF/admin/DSuser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
