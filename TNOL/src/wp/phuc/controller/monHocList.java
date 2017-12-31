package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.monhoc;
import wp.phuc.model.monHocDAL;

@WebServlet("/monHocList")
public class monHocList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public monHocList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		monHocDAL mhDal=new monHocDAL();
		ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
		request.setAttribute("listMonHoc", listMonHoc);
		request.getRequestDispatcher("WEB-INF/admin/MonHoc.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
