package wp.phuc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.thongBao;
import wp.phuc.DAO.trangChuTaiLieu;
import wp.phuc.model.trangChuDAL;

@WebServlet("/admin_taiLieu_edit")
public class admin_taiLieu_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public admin_taiLieu_edit() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("command").equals("insert"))
		{
			boolean kqInsert=false;
			try {
				String tenTaiLieu=request.getParameter("tentaiLieu");
				String link=request.getParameter("link");
				trangChuDAL tcDal=new trangChuDAL();
				if(tcDal.insertTaiLieu(tenTaiLieu, link, ""))
				{
					kqInsert=true;
					request.getSession().setAttribute("kqInsert", kqInsert);
					response.sendRedirect("taiLieuList");
				}
				else
				{
					request.getSession().setAttribute("kqInsert", kqInsert);
					response.sendRedirect("taiLieuList");
				}
			} catch (Exception e) {
				request.getSession().setAttribute("kqInsert", kqInsert);
				response.sendRedirect("taiLieuList");
			}
		}
		else if(request.getParameter("command").equals("delete"))
		{
			boolean kqDelete=false;
			try {
				String maTaiLieu=request.getParameter("maTaiLieu");
				trangChuDAL tcDal=new trangChuDAL();
				if(tcDal.deleteTaiLieu(Integer.parseInt(maTaiLieu)))
				{
					kqDelete=true;
					request.getSession().setAttribute("kqDelete", kqDelete);
					response.sendRedirect("taiLieuList");
				}
				else
				{
					request.getSession().setAttribute("kqDelete", kqDelete);
					response.sendRedirect("taiLieuList");
				}
			} catch (Exception e) {
				request.getSession().setAttribute("kqDelete", kqDelete);
				response.sendRedirect("taiLieuList");
			}
		}
		else if(request.getParameter("command").equals("edit"))
		{
			boolean kqEdit=false;
			try {
				String maTaiLieu=request.getParameter("maTaiLieu");
				trangChuDAL tcDal=new trangChuDAL();
				request.setAttribute("getTaiLieu",tcDal.getTaiLieu(Integer.parseInt(maTaiLieu)));
				request.getSession().setAttribute("maTaiLieu",maTaiLieu);
				request.getRequestDispatcher("WEB-INF/admin/taiLieu_edit.jsp?maTaiLieu='"+maTaiLieu+"'").forward(request, response);
			} catch (Exception e) {
				request.getSession().setAttribute("kqEdit", kqEdit);
				response.sendRedirect("taiLieuList");
			}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String tenTaiLieu=request.getParameter("tenTaiLieu");
		String link=request.getParameter("link");
		String maTaiLieu=request.getSession().getAttribute("maTaiLieu").toString();
		trangChuDAL tcDal=new trangChuDAL();
		trangChuTaiLieu TL=tcDal.getTaiLieu(Integer.parseInt(maTaiLieu));
		boolean kqEdit=false;
			try {
				if(tcDal.updateTaiLieu(TL.getDocumentId(), tenTaiLieu, link,TL.getImage())){
					kqEdit=true;
					request.getSession().setAttribute("kqEdit", kqEdit);
					request.getSession().removeAttribute("maTaiLieu");
					response.sendRedirect("taiLieuList");
				}
			} catch (Exception e) {
				request.getSession().setAttribute("kqEdit", kqEdit);
				request.getSession().removeAttribute("maTaiLieu");
				response.sendRedirect("taiLieuList");
			}
	}

}
