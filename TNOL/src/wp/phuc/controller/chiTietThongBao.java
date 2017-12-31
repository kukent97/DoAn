package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.thongBao;
import wp.phuc.model.trangChuDAL;

@WebServlet("/chiTietThongBao")
public class chiTietThongBao extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public chiTietThongBao() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		trangChuDAL dal=new trangChuDAL();
		String maThongBao=request.getParameter("maTB");
		ArrayList<thongBao> listTB=dal.listThongBao();
		for(thongBao TB: listTB) {
			if(TB.getNoticeId()==Integer.parseInt(maThongBao))
			{
				request.setAttribute("TB", TB);
				break;
			}
		}
		request.getRequestDispatcher("WEB-INF/admin/chiTietThongBao.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
