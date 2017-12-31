package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.deThi;
import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.DAO.user;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.monHocDAL;
import wp.phuc.model.nhomCauHoiDAL;
import wp.phuc.model.text_questionDAL;
import wp.phuc.model.userDAL;

@WebServlet("/nqldt_deThi_edit")
public class nqldt_deThi_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public nqldt_deThi_edit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		deThiDAL dtDal=new deThiDAL();
		String command=request.getParameter("command");
		if(command.equals("delete")) {
			String maDeThi=request.getParameter("maDeThi");
			if(maDeThi!=null) {
				boolean kqDelete=false;
				if(dtDal.deleteDeThi(Integer.parseInt(maDeThi))) {
					kqDelete=true;
				}
				request.getSession().setAttribute("kqDelete", kqDelete);
			}
			response.sendRedirect("nqldt_deThiList");
		}
		else if(command.equals("edit"))	
		{
			String maDeThi=request.getParameter("maDeThi");
			request.setAttribute("maDeThi", maDeThi);
			HttpSession ss=request.getSession();
			String username=ss.getAttribute("username").toString();
			deThi deThi1=dtDal.getDeThi(Integer.parseInt(maDeThi));
			if(username.equals(deThi1.getNguoiTaoDeThi()))
			{
				monHocDAL mhDal=new monHocDAL();
				ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
				request.setAttribute("listMonHoc", listMonHoc);
				nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
				request.setAttribute("nchDal",nchDal );
				cauHoiDAL chDal=new cauHoiDAL();
				request.setAttribute("cauHoiRandom", chDal);
				userDAL usDal=new userDAL();
				request.setAttribute("usDal",usDal);
				
				text_questionDAL text_questionDal=new text_questionDAL();
				ArrayList<cauHoi> listCauHoiTheoMaDeThi=text_questionDal.listTextQuestion(Integer.parseInt(maDeThi));
				int nch1=listCauHoiTheoMaDeThi.get(0).getNhomCauHoi();
				ArrayList<nhomCauHoi> listNCH=nchDal.listNhomCauHoi();
				for(nhomCauHoi nch:listNCH)
				{
					if(nch.getMaNhomCauHoi()==nch1)
					{
						int maMonHoc=nch.getMonHoc();
						request.setAttribute("maMonHoc", maMonHoc);
					}
				}
				request.setAttribute("mapNhomCauHoi", dtDal.mapNhomCauHoi(Integer.parseInt(maDeThi)));
				request.setAttribute("chDal", chDal);
				request.setAttribute("listNhomCauHoi", nchDal.listNhomCauHoi());
				request.setAttribute("getDeThi",dtDal.getDeThi(Integer.parseInt(maDeThi)));
				request.getRequestDispatcher("WEB-INF/nqlDeThi/deThi_edit.jsp").forward(request, response);
			}
			else {
				boolean khongTheSua=true;
				request.getSession().setAttribute("khongTheSua", khongTheSua);
				response.sendRedirect("nqldt_deThiList");
				}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		String tenDeThi=request.getParameter("tenDeThi");
		int thoiGianThi=Integer.parseInt(request.getParameter("thoiGianThi"));
		String nguoiTaoDeThi=request.getParameter("nguoiTaoDeThi");
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<nhomCauHoi> listNhomCauHoi=nchDal.listNhomCauHoi();
		deThiDAL dtDal=new deThiDAL();
		boolean kqEdit=false;
		String maDeThi=request.getParameter("maDeThi");
		if(dtDal.uploadDeThi(Integer.parseInt(maDeThi), tenDeThi, thoiGianThi, nguoiTaoDeThi)) 
		{	
			text_questionDAL text_questionDal=new text_questionDAL();
			if(text_questionDal.deleteText_questionToTextId(Integer.parseInt(maDeThi)))
			{
				for(nhomCauHoi nch:listNhomCauHoi )
				{
					String soLuongCauHoi=request.getParameter("soLuongCauHoi_"+nch.getMaNhomCauHoi());
					if(soLuongCauHoi!=null)
					{
						cauHoiDAL chDal=new cauHoiDAL();
						ArrayList<Integer> listMaCauHoiRandom=chDal.listQuestionRandom(Integer.parseInt(soLuongCauHoi),nch.getMaNhomCauHoi());
						for(int maCauHoi:listMaCauHoiRandom)
						{
							if(text_questionDal.insertText_question(maCauHoi,Integer.parseInt(maDeThi)))
							{
								kqEdit=true;
							}
						}
					}
				}
			}
			request.getSession().setAttribute("kqEdit", kqEdit);
			request.getRequestDispatcher("nqldt_deThiList").forward(request, response);
		}
		else
		{
			kqEdit=false;
			request.getSession().setAttribute("kqEdit", kqEdit);
			request.getRequestDispatcher("nqldt_deThiList").forward(request, response);
		}
		
	}

}
