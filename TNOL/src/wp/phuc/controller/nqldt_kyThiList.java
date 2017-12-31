package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.deThi;
import wp.phuc.DAO.exam;
import wp.phuc.DAO.lopHoc;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.examDAL;
import wp.phuc.model.lopHocDAL;
import wp.phuc.model.userDAL;

@WebServlet("/nqldt_kyThiList")
public class nqldt_kyThiList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_kyThiList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		examDAL kyThiDal=new examDAL();
		ArrayList<exam> listKyThi=kyThiDal.listExam();
		request.setAttribute("listKyThi", listKyThi);
		deThiDAL dtDal=new deThiDAL();
		ArrayList<deThi> listDeThi=dtDal.listDeThi();
		request.setAttribute("listDeThi", listDeThi);
		lopHocDAL lhDal=new lopHocDAL();
		ArrayList<lopHoc> listLopHoc=lhDal.listLopHoc();
		request.setAttribute("listLopHoc",listLopHoc);
		userDAL usDal=new userDAL();
		request.setAttribute("usDal", usDal);
		request.getRequestDispatcher("WEB-INF/nqlDeThi/DSkythi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
