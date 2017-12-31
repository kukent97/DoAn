package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.diem;
import wp.phuc.DAO.monhoc;
import wp.phuc.model.diemDAL;
import wp.phuc.model.monHocDAL;

@WebServlet("/hocVien_xemDiem")
public class hocVien_xemDiem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public hocVien_xemDiem() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		diemDAL dDal=new diemDAL();
		monHocDAL mhDal=new monHocDAL();
		ArrayList<diem> listDiem=dDal.listDiem();
		ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
		String username=request.getSession().getAttribute("username").toString();
		request.setAttribute("listDiem", listDiem);
		request.setAttribute("listMonHoc",listMonHoc);
		request.setAttribute("username", username);
		request.getRequestDispatcher("WEB-INF/hocvien/xemdiem.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
