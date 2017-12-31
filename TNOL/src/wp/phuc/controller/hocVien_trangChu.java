package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.thongBao;
import wp.phuc.DAO.trangChuTaiLieu;
import wp.phuc.model.trangChuDAL;

@WebServlet("/hocVien_trangChu")
public class hocVien_trangChu extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public hocVien_trangChu() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		trangChuDAL tcdal=new trangChuDAL();
		ArrayList<trangChuTaiLieu> listTaiLieu=tcdal.listTaiLieu();
		ArrayList<thongBao> listThongBao=tcdal.listThongBao();
		request.setAttribute("listTaiLieu", listTaiLieu);
		request.setAttribute("listThongBao", listThongBao);
		request.getRequestDispatcher("WEB-INF/hocvien/TrangchuHocvien.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
