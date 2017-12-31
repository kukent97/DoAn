package wp.phuc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.exam;
import wp.phuc.model.examDAL;
import wp.phuc.model.text_questionDAL;

@WebServlet("/hocVien_batDauLamBai")
public class hocVien_batDauLamBai extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public hocVien_batDauLamBai() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("maKyThi", request.getParameter("maKyThi"));
		int thoiGian=Integer.parseInt(request.getParameter("thoiGian"));
		request.setAttribute("thoiGianLamBai", thoiGian);
		String maDeThi=request.getParameter("maDeThi");
		text_questionDAL text_questionDal=new text_questionDAL();
		ArrayList<cauHoi> listCauHoiTheoMaDeThi=text_questionDal.listTextQuestion(Integer.parseInt(maDeThi));
		request.setAttribute("text_questionDal",text_questionDal );
		request.setAttribute("listCauHoiTheoMaDeThi", listCauHoiTheoMaDeThi);
		request.setAttribute("maDeThi", maDeThi);
		String ngayThi=request.getParameter("ngayThi");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date homNay=new Date();
		try {
			if(sdf.parse(ngayThi).after(homNay))
			{
				boolean somQua=true;
				request.getSession().setAttribute("somQua",somQua);
				request.getRequestDispatcher("hocVien_lamBaiThi").forward(request, response);
			}
			else{
				request.getRequestDispatcher("WEB-INF/hocvien/batDauLamBai.jsp").forward(request, response);
			}
		} catch (ParseException e) {
			request.getRequestDispatcher("WEB-INF/hocvien/batDauLamBai.jsp").forward(request, response);
			e.printStackTrace();
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
