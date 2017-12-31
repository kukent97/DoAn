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
import wp.phuc.DAO.dapAn;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.DAO.thongBao;
import wp.phuc.DAO.user;
import wp.phuc.model.dapAnDAL;
import wp.phuc.model.nhomCauHoiDAL;
import wp.phuc.model.trangChuDAL;
import wp.phuc.model.userDAL;

@WebServlet("/admin_thongBao")
public class admin_thongBao extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public admin_thongBao() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("command").equals("insert"))
		{
			boolean kqInsert=false;
			try {
				String tieuDe=request.getParameter("tieuDe");
				String noiDungThongBao=request.getParameter("noiDungThongBao");
				String linkDinhKem=request.getParameter("linkDinhKem");
				trangChuDAL tcDal=new trangChuDAL();
				Date ngayThongBao=new Date();
				if(tcDal.insertThongBao(tieuDe, noiDungThongBao, linkDinhKem, ngayThongBao, ""))
				{
					kqInsert=true;
					request.getSession().setAttribute("kqInsert", kqInsert);
					response.sendRedirect("dangThongBaoList");
				}
				else
				{
					request.getSession().setAttribute("kqInsert", kqInsert);
					response.sendRedirect("dangThongBaoList");
				}
			} catch (Exception e) {
				request.getSession().setAttribute("kqInsert", kqInsert);
				response.sendRedirect("dangThongBaoList");
			}
		}
		else if(request.getParameter("command").equals("delete"))
		{
			boolean kqDelete=false;
			try {
				String maThongBao=request.getParameter("maThongBao");
				trangChuDAL tcDal=new trangChuDAL();
				if(tcDal.deleteThongBao(Integer.parseInt(maThongBao)))
				{
					kqDelete=true;
					request.getSession().setAttribute("kqDelete", kqDelete);
					response.sendRedirect("dangThongBaoList");
				}
				else
				{
					request.getSession().setAttribute("kqDelete", kqDelete);
					response.sendRedirect("dangThongBaoList");
				}
			} catch (Exception e) {
				request.getSession().setAttribute("kqDelete", kqDelete);
				response.sendRedirect("dangThongBaoList");
			}
		}
		else if(request.getParameter("command").equals("edit"))
		{
			boolean kqEdit=false;
			try {
				String maThongBao=request.getParameter("maThongBao");
				trangChuDAL tcDal=new trangChuDAL();
				request.setAttribute("getThongBao",tcDal.getThongBao(Integer.parseInt(maThongBao)));
				request.getSession().setAttribute("maThongBao",maThongBao);
				request.getRequestDispatcher("WEB-INF/admin/thongBao_edit.jsp?maThongBao='"+maThongBao+"'").forward(request, response);
			} catch (Exception e) {
				request.getSession().setAttribute("kqEdit", kqEdit);
				response.sendRedirect("dangThongBaoList");
			}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String ngayThongBao=request.getParameter("ngayThongBao");
		String tieuDe=request.getParameter("tieuDe");
		String noiDungThongBao=request.getParameter("noiDungThongBao");
		String linkDinhKem=request.getParameter("linkDinhKem");
		String maThongBao=request.getSession().getAttribute("maThongBao").toString();
		trangChuDAL tcDal=new trangChuDAL();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		thongBao TB=tcDal.getThongBao(Integer.parseInt(maThongBao));
			boolean kqEdit=false;
			try {
				if(tcDal.updateThongBao(Integer.parseInt(maThongBao), tieuDe, noiDungThongBao, linkDinhKem, sdf.parse(ngayThongBao), TB.getImage())) {
					kqEdit=true;
					request.getSession().setAttribute("kqEdit", kqEdit);
					request.getSession().removeAttribute("maThongBao");
					response.sendRedirect("dangThongBaoList");
				}
			} catch (NumberFormatException e) {
				kqEdit=false;
				request.getSession().setAttribute("kqEdit", kqEdit);
				request.getSession().removeAttribute("maThongBao");
				response.sendRedirect("dangThongBaoList");
			} catch (ParseException e) {
				kqEdit=false;
				request.getSession().setAttribute("kqEdit", kqEdit);
				request.getSession().removeAttribute("maThongBao");
				response.sendRedirect("dangThongBaoList");
			}
	}

}
