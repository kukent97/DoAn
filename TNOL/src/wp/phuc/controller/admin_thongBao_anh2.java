package wp.phuc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.model.trangChuDAL;

@WebServlet("/admin_thongBao_anh2")
public class admin_thongBao_anh2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public admin_thongBao_anh2() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean kqEdit=false;
		try {
			String maThongBao=request.getSession().getAttribute("maThongBao").toString();
			trangChuDAL tcDal=new trangChuDAL();
			request.setAttribute("getThongBao",tcDal.getThongBao(Integer.parseInt(maThongBao)));
			request.getRequestDispatcher("WEB-INF/admin/thongBao_edit.jsp?maThongBao='"+maThongBao+"'").forward(request, response);
		} catch (Exception e) {
			request.getSession().setAttribute("kqEdit", kqEdit);
			response.sendRedirect("dangThongBaoList");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
