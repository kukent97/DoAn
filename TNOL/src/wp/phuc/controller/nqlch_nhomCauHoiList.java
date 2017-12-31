package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.model.monHocDAL;
import wp.phuc.model.nhomCauHoiDAL;

@WebServlet("/nqlch_nhomCauHoiList")
public class nqlch_nhomCauHoiList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqlch_nhomCauHoiList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<nhomCauHoi> listNhomCauHoi=nchDal.listNhomCauHoi();
		request.setAttribute("listNhomCauHoi", listNhomCauHoi);
		monHocDAL mhDal=new monHocDAL();
		ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
		request.setAttribute("listMonHoc", listMonHoc);
		request.getRequestDispatcher("WEB-INF/nqlCauHoi/DSnhomcauhoi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
