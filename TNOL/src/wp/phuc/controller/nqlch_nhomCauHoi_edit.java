package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.model.monHocDAL;
import wp.phuc.model.nhomCauHoiDAL;

@WebServlet("/nqlch_nhomCauHoi_edit")
public class nqlch_nhomCauHoi_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqlch_nhomCauHoi_edit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		String command=request.getParameter("command");
		if(command.equals("delete")) {
			String maNhomCauHoi=request.getParameter("maNhomCauHoi");
			if(maNhomCauHoi!=null) {
				boolean kqDelete=false;
				if(nchDal.deleteNhomCauHoi(Integer.parseInt(maNhomCauHoi))) {
					kqDelete=true;
				}
				request.getSession().setAttribute("kqDelete", kqDelete);
			}
			response.sendRedirect("nqlch_nhomCauHoiList");
		}
		else if(command.equals("insert")){
				String tenNhomCauHoi=request.getParameter("tenNhomCauHoi");
				String monHoc=request.getParameter("monHoc");
				boolean kqInsert=false;
				if(nchDal.insertNhomCauHoi(tenNhomCauHoi, Integer.parseInt(monHoc))) {
					kqInsert=true;
				}
				request.getSession().setAttribute("kqInsert", kqInsert);
				response.sendRedirect("nqlch_nhomCauHoiList");
		}
		else if(command.equals("edit"))	
		{
			String maNhomCauHoi=request.getParameter("maNhomCauHoi");
			ArrayList<nhomCauHoi> listNhomCauHoi= nchDal.listNhomCauHoi();
			request.setAttribute("listNhomCauHoi", listNhomCauHoi);
			request.setAttribute("maNhomCauHoi", maNhomCauHoi);
			monHocDAL mhDal=new monHocDAL();
			ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
			request.setAttribute("listMonHoc", listMonHoc);
			for(nhomCauHoi nch:listNhomCauHoi)
			{
				if(nch.getMaNhomCauHoi()==Integer.parseInt(maNhomCauHoi))
				{
					request.setAttribute("nhomCauHoi", nch);
				}
			}
			request.getRequestDispatcher("WEB-INF/nqlCauHoi/nhomCauHoi_edit.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		String command=request.getParameter("command");
		String tenNhomCauHoi=request.getParameter("tenNhomCauHoi");
		String monHoc=request.getParameter("monHoc");
		String maNhomCauHoi=request.getParameter("maNhomCauHoi");
		if(command.equals("edit")) {
			boolean kqEdit=false;
			if(nchDal.EditNhomCauHoi(Integer.parseInt(maNhomCauHoi), tenNhomCauHoi, Integer.parseInt(monHoc))) {
				kqEdit=true;
				request.getSession().setAttribute("kqEdit", kqEdit);
				response.sendRedirect("nqlch_nhomCauHoiList");
			}
				
		}	
	}

}
