package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.nhomCauHoiDAL;

@WebServlet("/nqlch_cauHoiList")
public class nqlch_cauHoiList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqlch_cauHoiList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cauHoiDAL chDal=new cauHoiDAL();
		ArrayList<cauHoi> listCauHoi=chDal.listCauHoi();
		request.setAttribute("listCauHoi", listCauHoi);
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<nhomCauHoi> listNhomCauHoi=nchDal.listNhomCauHoi();
		request.setAttribute("listNhomCauHoi", listNhomCauHoi);
		request.getRequestDispatcher("WEB-INF/nqlCauHoi/DScauhoi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
