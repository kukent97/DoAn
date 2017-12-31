package wp.phuc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.model.trangChuDAL;

@WebServlet("/admin_taiLieu_anh2")
public class admin_taiLieu_anh2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public admin_taiLieu_anh2() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean kqEdit=false;
		try {
			String maTaiLieu=request.getSession().getAttribute("maTaiLieu").toString();
			trangChuDAL tcDal=new trangChuDAL();
			request.setAttribute("getTaiLieu",tcDal.getTaiLieu(Integer.parseInt(maTaiLieu)));
			request.getRequestDispatcher("WEB-INF/admin/taiLieu_edit.jsp?maTaiLieu='"+maTaiLieu+"'").forward(request, response);
		} catch (Exception e) {
			request.getSession().setAttribute("kqEdit", kqEdit);
			response.sendRedirect("taiLieuList");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
