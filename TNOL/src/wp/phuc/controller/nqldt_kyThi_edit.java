package wp.phuc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.deThi;
import wp.phuc.DAO.exam;
import wp.phuc.DAO.lopHoc;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.examDAL;
import wp.phuc.model.exam_classDAL;
import wp.phuc.model.lopHocDAL;
import wp.phuc.model.monHocDAL;

@WebServlet("/nqldt_kyThi_edit")
public class nqldt_kyThi_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_kyThi_edit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		examDAL kyThiDal=new examDAL();
		String command=request.getParameter("command");
		if(command.equals("delete")) {
			String maKyThi=request.getParameter("maKyThi");
			if(maKyThi!=null) {
				boolean kqDelete=false;
				if(kyThiDal.deleteKyThi(Integer.parseInt(maKyThi))) {
					kqDelete=true;
				}
				request.getSession().setAttribute("kqDelete", kqDelete);
			}
			response.sendRedirect("nqldt_kyThiList");
		}
		else if(command.equals("insert")){
				String tenKyThi=request.getParameter("tenKyThi");
				String ngayThi=request.getParameter("ngayThi");
				String maDeThi=request.getParameter("maDeThi");
				String[] lopThi=request.getParameterValues("lopThi");
				String username=request.getSession().getAttribute("username").toString();
				boolean kqInsert=false;
				exam_classDAL exam_classDal=new exam_classDAL();
				examDAL examDal=new examDAL();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				try {
					if(examDal.insertKyThi(tenKyThi, Integer.parseInt(maDeThi), sdf.parse(ngayThi), username)) {
						int kyThiMax=exam_classDal.maKyThiMax();
						kqInsert=true;
						if(lopThi!=null&&lopThi.length!=0)
						{
							for(String s:lopThi)
							{
								exam_classDal.insertExam_class(kyThiMax, Integer.parseInt(s));
							}
						}
					}
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (ParseException e) {
					e.printStackTrace();
				}
				request.getSession().setAttribute("kqInsert", kqInsert);
				response.sendRedirect("nqldt_kyThiList");
		}
		else if(command.equals("edit"))	
		{
			deThiDAL dtDal=new deThiDAL();
			ArrayList<deThi> listDeThi=dtDal.listDeThi();
			request.setAttribute("listDeThi", listDeThi);
			lopHocDAL lhDal=new lopHocDAL();
			ArrayList<lopHoc> listLopHoc=lhDal.listLopHoc();
			request.setAttribute("listLopHoc",listLopHoc);
			String maKyThi=request.getParameter("maKyThi");
			examDAL exDal=new examDAL();
			ArrayList<exam> listKyThi=exDal.listExam();
			request.setAttribute("listKyThi", listKyThi);
			ArrayList<lopHoc> listLopHocTheoMaKyThi=lhDal.listLopHocTheoMaKyThi(Integer.parseInt(maKyThi));
			request.setAttribute("listLopHocTheoMaKyThi", listLopHocTheoMaKyThi);
			request.setAttribute("maKyThi", maKyThi);
			request.getRequestDispatcher("WEB-INF/nqlDeThi/kyThi_edit.jsp?").forward(request, response);
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		examDAL exDal=new examDAL();
		String maKyThi=request.getParameter("maKyThi");
		String tenKyThi=request.getParameter("tenKyThi");
		String ngayThi=request.getParameter("ngayThi");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String maDeThi=request.getParameter("maDeThi");
		String nguoiTaoKyThi=request.getSession().getAttribute("username").toString();
			boolean kqEdit=false;
			try {
				if(exDal.updateKyThi(Integer.parseInt(maKyThi), tenKyThi, Integer.parseInt(maDeThi), sdf.parse(ngayThi), nguoiTaoKyThi)) {
					lopHocDAL lhDal=new lopHocDAL();
					ArrayList<lopHoc> listLopHocTheoMaKyThi=lhDal.listLopHocTheoMaKyThi(Integer.parseInt(maKyThi));
					request.setAttribute("listLopHocTheoMaKyThi", listLopHocTheoMaKyThi);
					exam_classDAL exam_classDal=new exam_classDAL();
					exam_classDal.deleteExam_class(Integer.parseInt(maKyThi));
					ArrayList<Integer> listLopHocDaThem=new ArrayList<>();
					for(lopHoc lh:listLopHocTheoMaKyThi)
					{
						if(request.getParameter(""+lh.getMaLopHoc()+"")!=null) {
							
							exam_classDal.insertExam_class(Integer.parseInt(maKyThi), lh.getMaLopHoc());
							listLopHocDaThem.add(lh.getMaLopHoc());
						}
					}
					String[] lopThi=request.getParameterValues("lopThi");
					if(lopThi==null || lopThi.length==0)
					{
						kqEdit=true;
						request.getSession().setAttribute("kqEdit", kqEdit);
						response.sendRedirect("nqldt_kyThiList");
					}
					else
					{
						for(String LT:lopThi)
						{
							boolean test=true;
							for(Integer LT2:listLopHocDaThem)
							{
								if(Integer.parseInt(LT)==LT2)
								{
									test=false;
								}
							}
							if(test==true)
							{
								
								exam_classDal.insertExam_class(Integer.parseInt(maKyThi), Integer.parseInt(LT));
							}
						}
						kqEdit=true;
						request.getSession().setAttribute("kqEdit", kqEdit);
						response.sendRedirect("nqldt_kyThiList");
					}
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
	}

}
