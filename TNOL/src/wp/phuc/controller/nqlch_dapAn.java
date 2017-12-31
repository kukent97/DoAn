package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.dapAn;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.dapAnDAL;
import wp.phuc.model.userDAL;

@WebServlet("/nqlch_dapAn")
public class nqlch_dapAn extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public nqlch_dapAn() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		dapAnDAL daDal=new dapAnDAL();
		String maCauHoi=request.getParameter("maCauHoi");
		ArrayList<dapAn> listDapAn=daDal.listDapAnTheoMaCauHoi(Integer.parseInt(maCauHoi));
		request.setAttribute("listDapAnTheoMaCauHoi",listDapAn);
		response.getWriter().println(maCauHoi);
		cauHoiDAL chDal=new cauHoiDAL();
		cauHoi ch=chDal.cauHoiTheoMaCauHoi(Integer.parseInt(maCauHoi));
		request.setAttribute("cauHoi", ch);
		userDAL usDal=new userDAL();
		request.setAttribute("tenNguoiTaoCauHoi",usDal.viewInfo(request.getParameter("nguoiTaoCauHoi")).getFullname());
		request.getRequestDispatcher("WEB-INF/nqlCauHoi/Dapan.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
