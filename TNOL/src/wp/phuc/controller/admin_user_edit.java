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

import wp.phuc.DAO.lopHoc;
import wp.phuc.DAO.role;
import wp.phuc.DAO.user;
import wp.phuc.model.lopHocDAL;
import wp.phuc.model.roleDAL;
import wp.phuc.model.userDAL;

@WebServlet("/admin_user_edit")
public class admin_user_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public admin_user_edit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAL usDal=new userDAL();
		String command=request.getParameter("command");
		if(command.equals("delete")) {
			String maNguoiDung=request.getParameter("maNguoiDung");
			if(maNguoiDung!=null) {
				String username=request.getSession().getAttribute("username").toString();
				boolean dangDung=false;
				if(maNguoiDung.equals(username))
				{
					dangDung=true;
					request.getSession().setAttribute("dangDung", dangDung);
					response.sendRedirect("userList");
					return;
				}
				boolean kqDelete=false;
				if(usDal.deleteUser(maNguoiDung)) {
					kqDelete=true;
				}
				request.getSession().setAttribute("kqDelete", kqDelete);
			}
			response.sendRedirect("userList");
		}
		else if(command.equals("insert")){
			String maNguoiDung=request.getParameter("maNguoiDung");
			String password=request.getParameter("password");
			String hoTen=request.getParameter("hoTen");
			String gioiTinh=request.getParameter("gioiTinh");
			String ngaySinh=request.getParameter("ngaySinh");
			String sdt=request.getParameter("sdt");
			String role=request.getParameter("optradio");
			String lopHoc=request.getParameter("lopHoc");
			if(lopHoc==null)
			{
				lopHoc="-1";
			}
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			boolean kqInsert=false;			
			ArrayList<user> listNguoiDung=usDal.listUser();
			boolean trung=false;
			for(user MH:listNguoiDung)
			{
				if(MH.getUsername().equals(maNguoiDung))
				{
					trung=true;
					request.getSession().setAttribute("trung", trung);
					response.sendRedirect("userList");
					return;
				}
			}
			try {
				
				if(usDal.insertUser(maNguoiDung, password, hoTen, gioiTinh, sdf.parse(ngaySinh), sdt,"",Integer.parseInt(role),Integer.parseInt(lopHoc ))) {
					kqInsert=true;
					request.getSession().setAttribute("kqInsert", kqInsert);
					response.sendRedirect("userList");
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}

		}
		else if(command.equals("edit"))	
		{
			String maNguoiDung=request.getParameter("maNguoiDung");
			request.setAttribute("maNguoiDungc", maNguoiDung);
			user us=usDal.viewInfo(maNguoiDung);
			request.setAttribute("nguoiDung", us);
			roleDAL roleDal=new roleDAL();
			ArrayList<role> listRole=roleDal.listRole();
			request.setAttribute("listRole",listRole );
			lopHocDAL lhDal=new lopHocDAL();
			ArrayList<lopHoc> listLopHoc=lhDal.listLopHoc();
			request.setAttribute("listLopHoc",listLopHoc );
			request.getRequestDispatcher("WEB-INF/admin/user_edit.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		userDAL usDal=new userDAL();
		String command=request.getParameter("command");
		String maNguoiDung=request.getParameter("maNguoiDung");
		String password=request.getParameter("password");
		String hoTen=request.getParameter("hoTen");
		String gioiTinh=request.getParameter("gioiTinh");
		String ngaySinh=request.getParameter("ngaySinh");
		String sdt=request.getParameter("sdt");
		String role=request.getParameter("optradio");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String lopHoc=request.getParameter("lopHoc");
		user nguoiDung1=usDal.viewInfo(maNguoiDung);
		if(command.equals("edit")) {
			boolean kqEdit=false;
			try {
				if(usDal.updateUser(maNguoiDung, password, hoTen, gioiTinh, sdf.parse(ngaySinh), sdt,nguoiDung1.getAvatar(),Integer.parseInt(role),Integer.parseInt(lopHoc))) {
					kqEdit=true;
					request.getSession().setAttribute("kqEdit", kqEdit);
					response.sendRedirect("userList");
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
				
		}	
	}

}
