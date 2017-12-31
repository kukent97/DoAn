package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.DAO.user;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.monHocDAL;
import wp.phuc.model.nhomCauHoiDAL;
import wp.phuc.model.userDAL;

@WebServlet("/nqldt_soanDeThi")
public class nqldt_soanDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_soanDeThi() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		monHocDAL mhDal=new monHocDAL();
		ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
		request.setAttribute("listMonHoc", listMonHoc);
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		request.setAttribute("nchDal",nchDal );
		cauHoiDAL chDal=new cauHoiDAL();
		request.setAttribute("cauHoiRandom", chDal);
		HttpSession ss=request.getSession();
		String username=ss.getAttribute("username").toString();
		userDAL dal=new userDAL();
		user nguoiDung=dal.viewInfo(username);
		request.setAttribute("nguoiDung", nguoiDung);
		request.setAttribute("chDal", chDal);
		request.setAttribute("listNhomCauHoi", nchDal.listNhomCauHoi());
		request.getRequestDispatcher("WEB-INF/nqlDeThi/Soandethi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
