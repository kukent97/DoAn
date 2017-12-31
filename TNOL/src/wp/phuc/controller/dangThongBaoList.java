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

@WebServlet("/dangThongBaoList")
public class dangThongBaoList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public dangThongBaoList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		trangChuDAL tcdal=new trangChuDAL();
		ArrayList<thongBao> listThongBao=tcdal.listThongBao();
		request.setAttribute("listThongBao", listThongBao);
		request.getRequestDispatcher("WEB-INF/admin/ThongBao.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
