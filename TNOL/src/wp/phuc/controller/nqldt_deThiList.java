package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.deThi;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.userDAL;

@WebServlet("/nqldt_deThiList")
public class nqldt_deThiList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_deThiList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		deThiDAL dtDal=new deThiDAL();
		ArrayList<deThi> listDeThi=dtDal.listDeThi();
		request.setAttribute("listDeThi", listDeThi);
		userDAL usDal=new userDAL();
		request.setAttribute("usDal",usDal );
		request.getRequestDispatcher("WEB-INF/nqlDeThi/DSdethi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
