package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.deThi;
import wp.phuc.DAO.exam;
import wp.phuc.DAO.exam_class;
import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.user;
import wp.phuc.model.cauHoiDAL;
import wp.phuc.model.deThiDAL;
import wp.phuc.model.diemDAL;
import wp.phuc.model.examDAL;
import wp.phuc.model.exam_classDAL;
import wp.phuc.model.monHocDAL;
import wp.phuc.model.nhomCauHoiDAL;
import wp.phuc.model.text_questionDAL;
import wp.phuc.model.userDAL;

@WebServlet("/hocVien_lichThi")
public class hocVien_lichThi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public hocVien_lichThi() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		examDAL examDal=new examDAL();
		ArrayList<exam> listKyThi=examDal.listExam();
		request.setAttribute("listKyThi",listKyThi);
		exam_classDAL exam_classDal=new exam_classDAL();
		ArrayList<exam_class> listExam_class=exam_classDal.listExam_class();
		userDAL usDal=new userDAL();
		user us=usDal.viewInfo(request.getSession().getAttribute("username").toString());
		int maLop=us.getLopHoc();
		ArrayList<exam> listExamFollowClass=new ArrayList<>();
		for(exam_class ex_cl:listExam_class)
		{
			if(maLop==ex_cl.getMaLopHoc())
			{
				listExamFollowClass.add(examDal.examTheoExamId(ex_cl.getMaKyThi()));
			}
		}
		request.setAttribute("listExamFollowClass", listExamFollowClass);
		text_questionDAL text_questionDal=new text_questionDAL();
		request.setAttribute("text_questionDal",text_questionDal);
		monHocDAL mhDal=new monHocDAL();
		request.setAttribute("listMonHoc", mhDal.listMonHoc());
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		request.setAttribute("listNhomCauHoi", nchDal.listNhomCauHoi());
		request.setAttribute("mhDal", mhDal);
		request.setAttribute("examDal", examDal);
		diemDAL diemDal=new diemDAL();
		request.setAttribute("listDiem", diemDal.listDiem());
		request.getRequestDispatcher("WEB-INF/hocvien/lichthi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
