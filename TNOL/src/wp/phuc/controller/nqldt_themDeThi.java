package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.nhomCauHoi;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.nhomCauHoiDAL;
import wp.phuc.model.text_questionDAL;


@WebServlet("/nqldt_themDeThi")
public class nqldt_themDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_themDeThi() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tenDeThi=request.getParameter("tenDeThi");
		int thoiGianThi=Integer.parseInt(request.getParameter("thoiGianThi"));
		String nguoiTaoDeThi=request.getSession().getAttribute("username").toString();
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<nhomCauHoi> listNhomCauHoi=nchDal.listNhomCauHoi();
		deThiDAL dtDal=new deThiDAL();
		boolean kqInsert=false;
		if(dtDal.insertDeThi(tenDeThi,thoiGianThi, nguoiTaoDeThi))
		{
			for(nhomCauHoi nch:listNhomCauHoi )
			{
				String soLuongCauHoi=request.getParameter("soLuongCauHoi_"+nch.getMaNhomCauHoi());
				if(soLuongCauHoi!=null)
				{
					text_questionDAL text_questionDal=new text_questionDAL();
					int textMax=text_questionDal.maDeThiMax();
					cauHoiDAL chDal=new cauHoiDAL();
					ArrayList<Integer> listMaCauHoiRandom=chDal.listQuestionRandom(Integer.parseInt(soLuongCauHoi),nch.getMaNhomCauHoi());
					for(int maCauHoi:listMaCauHoiRandom)
					{
						if(text_questionDal.insertText_question(maCauHoi,textMax))
						{
							kqInsert=true;
						}
					}
				}
			}
		}
		request.getSession().setAttribute("kqInsert", kqInsert);
		request.getRequestDispatcher("nqldt_soanDeThi").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
