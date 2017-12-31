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
import wp.phuc.DAO.deThi;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.diemDAL;
import wp.phuc.model.nhomCauHoiDAL;
import wp.phuc.model.text_questionDAL;

@WebServlet("/hocVien_nopBai")
public class hocVien_nopBai extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public hocVien_nopBai() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maDeThi=request.getParameter("maDeThi");
		text_questionDAL text_questionDal=new text_questionDAL();
		ArrayList<cauHoi> listCauHoiTheoMaDeThi=text_questionDal.listTextQuestion(Integer.parseInt(maDeThi));
		float tongDiem=0;
		float tongCauHoiDung=0;
		float tongCauHoi=0;
		for(cauHoi CH:listCauHoiTheoMaDeThi)
		{
			tongCauHoi++;
		}
		for(int i=0;i<tongCauHoi;i++)
		{
			dapAn dapAn1=new dapAn();
			for(dapAn da:text_questionDal.listDapAnTheoMaCauHoi(listCauHoiTheoMaDeThi.get(i).getMaCauHoi()))
			{
				if(request.getParameter("dapAn_"+String.valueOf(i))==null) {
					dapAn1=null;
				}
				else {
					int maDapAn=Integer.parseInt(request.getParameter("dapAn_"+String.valueOf(i)));
					if(da.getMaDapAn()==maDapAn)
					{
						dapAn1=da;
					}
				}
				//response.getWriter().println(request.getParameter("dapAn_"+String.valueOf(i)));
			}
			
			if(dapAn1!=null&&dapAn1.isDapAnDung()) {
				tongCauHoiDung++;
			}
				
		}
		tongDiem=tongCauHoiDung*10/tongCauHoi;
		request.setAttribute("tongDiem", tongDiem);
		diemDAL dDal=new diemDAL();
		cauHoi cauHoi1=listCauHoiTheoMaDeThi.get(0);
		int nhomCauHoi1=cauHoi1.getNhomCauHoi();
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<nhomCauHoi> listNCH=nchDal.listNhomCauHoi();
		int maMonHoc=-1;
		for(nhomCauHoi nch:listNCH)
		{
			if(nch.getMaNhomCauHoi()==nhomCauHoi1)
			{
				maMonHoc=nch.getMonHoc();
			}
		}
		String tenHocVien=request.getSession().getAttribute("username").toString();
		
		if(dDal.insertDiem(tenHocVien, maMonHoc, tongDiem,Integer.parseInt(request.getParameter("maKyThi"))))
		{	
			request.getRequestDispatcher("WEB-INF/hocvien/nopBai.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("WEB-INF/hocvien/nopBai.jsp").forward(request, response);
		}
				
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
