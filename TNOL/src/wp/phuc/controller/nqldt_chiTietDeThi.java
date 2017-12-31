package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wp.phuc.DAO.cauHoi;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.text_questionDAL;
import wp.phuc.model.userDAL;

@WebServlet("/nqldt_chiTietDeThi")
public class nqldt_chiTietDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_chiTietDeThi() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		text_questionDAL ctchDal=new text_questionDAL();
		String maDeThi=request.getParameter("maDeThi");
		ArrayList<cauHoi>listCauHoi=ctchDal.listTextQuestion(Integer.parseInt(maDeThi));
		request.setAttribute("listCauHoi", listCauHoi);
		request.setAttribute("ctchDal", ctchDal);
		request.setAttribute("maDeThi", maDeThi);
		deThiDAL dtDal=new deThiDAL();
		userDAL usDal=new userDAL();
		
		request.setAttribute("nguoiTaoDeThi", usDal.viewInfo(dtDal.getDeThi(Integer.parseInt(maDeThi)).getNguoiTaoDeThi()).getFullname());
		request.getRequestDispatcher("WEB-INF/nqlDeThi/ChiTietCauHoi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
