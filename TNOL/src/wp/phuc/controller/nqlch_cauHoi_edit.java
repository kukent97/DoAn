package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.dapAn;
import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.dapAnDAL;
import wp.phuc.model.monHocDAL;
import wp.phuc.model.nhomCauHoiDAL;

@WebServlet("/nqlch_cauHoi_edit")
public class nqlch_cauHoi_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqlch_cauHoi_edit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cauHoiDAL chDal=new cauHoiDAL();
		String command=request.getParameter("command");
		if(command.equals("delete")) {
			String maCauHoi=request.getParameter("maCauHoi");
			if(maCauHoi!=null) {
				boolean kqDelete=false;
				if(chDal.deleteCauHoi(Integer.parseInt(maCauHoi))) {
					kqDelete=true;
				}
				request.getSession().setAttribute("kqDelete", kqDelete);
			}
			response.sendRedirect("nqlch_cauHoiList");
		}
		else if(command.equals("insert")){
				String nhomCauHoi=request.getParameter("nhomCauHoi");
				String noiDung=request.getParameter("noiDung");
				String dapAn1=request.getParameter("dapAn1");
				String dapAn2=request.getParameter("dapAn2");
				String dapAn3=request.getParameter("dapAn3");
				String dapAn4=request.getParameter("dapAn4");
				String dapAnDung=request.getParameter("dapAnDung");
				String username=request.getSession().getAttribute("username").toString();
				boolean kqInsert=false;
				if(chDal.insertCauHoi(noiDung, Integer.parseInt(nhomCauHoi), username, dapAn1, dapAn2, dapAn3, dapAn4, dapAnDung)) {
					kqInsert=true;
				}
				request.getSession().setAttribute("kqInsert", kqInsert);
				response.sendRedirect("nqlch_cauHoiList");
		}
		else if(command.equals("edit"))	
		{
			dapAnDAL daDal=new dapAnDAL();
			nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
			String maCauHoi=request.getParameter("maCauHoi");
			ArrayList<nhomCauHoi> listNhomCauHoi=nchDal.listNhomCauHoi();
			cauHoi ch=chDal.cauHoiTheoMaCauHoi(Integer.parseInt(maCauHoi));
			request.setAttribute("cauHoiTheoMaCauHoi", ch);
			request.setAttribute("listNhomCauHoi", listNhomCauHoi);
			ArrayList<dapAn> listDapAn=daDal.listDapAnTheoMaCauHoi(Integer.parseInt(maCauHoi));
			request.setAttribute("listDapAn", listDapAn);
			request.setAttribute("maCauHoi", maCauHoi);
			request.getRequestDispatcher("WEB-INF/nqlCauHoi/cauHoi_edit.jsp?maCauHoi='"+maCauHoi+"'").forward(request, response);
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		cauHoiDAL chDal=new cauHoiDAL();
		String command=request.getParameter("command");
		int maCauHoi=Integer.parseInt(request.getParameter("maCauHoi"));
		int nhomCauHoi=Integer.parseInt(request.getParameter("nhomCauHoi"));
		String noiDung=request.getParameter("noiDung");
		String dapAn1=request.getParameter("dapAn1");
		String dapAn2=request.getParameter("dapAn2");
		String dapAn3=request.getParameter("dapAn3");
		String dapAn4=request.getParameter("dapAn4");
		String dapAnDung=request.getParameter("dapAnDung");
		int maDapAn1=Integer.parseInt(request.getParameter("maDapAn1"));
		int maDapAn2=Integer.parseInt(request.getParameter("maDapAn2"));
		int maDapAn3=Integer.parseInt(request.getParameter("maDapAn3"));
		int maDapAn4=Integer.parseInt(request.getParameter("maDapAn4"));
		String username=request.getSession().getAttribute("username").toString();
		if(command.equals("edit")) {
			boolean kqEdit=false;
			if(chDal.updateCauHoi(maCauHoi, noiDung, nhomCauHoi, username, maDapAn1, dapAn1, maDapAn2, dapAn2, maDapAn3, dapAn3, maDapAn4, dapAn4, dapAnDung)) {
				kqEdit=true;
				request.getSession().setAttribute("kqEdit", kqEdit);
				response.sendRedirect("nqlch_cauHoiList");
			}
				
		}	
	}

}
