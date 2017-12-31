package wp.phuc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.phuc.DAO.user;
import wp.phuc.model.userDAL;

@WebServlet("/doiMatKhau")
public class doiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public doiMatKhau() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=session.getAttribute("username").toString();
		userDAL usDal=new userDAL();
		user nguoiDung=usDal.viewInfo(username);
		String matKhauCu=request.getParameter("mkcu");
		String mauKhauMoi1=request.getParameter("mkmoi1");
		String matKhauMoi2=request.getParameter("mkmoi2");
		String trangThai;
		switch (nguoiDung.getRole()) {
		case 4:
			if(matKhauCu.equals(nguoiDung.getPassword()))
			{
				if(mauKhauMoi1.equals(matKhauMoi2))
				{
					if(usDal.updatePassword(username, matKhauMoi2, nguoiDung.getFullname(), nguoiDung.getSex(), nguoiDung.getBirthday(), nguoiDung.getPhone(), nguoiDung.getAvatar(), nguoiDung.getRole())) {
						trangThai="doiThanhCong";
						request.getSession().setAttribute("trangThai", trangThai);
						response.sendRedirect("userAdmin");
					}
				}
				else {
					trangThai="matKhauKhongKhop";
					request.getSession().setAttribute("trangThai", trangThai);
					response.sendRedirect("userAdmin");
				}
			}
			else {
				trangThai="saiMatKhauCu";
				request.getSession().setAttribute("trangThai", trangThai);
				response.sendRedirect("userAdmin");
			}
			break;
		case 3:
			if(matKhauCu.equals(nguoiDung.getPassword()))
			{
				if(mauKhauMoi1.equals(matKhauMoi2))
				{
					if(usDal.updatePassword(username, matKhauMoi2, nguoiDung.getFullname(), nguoiDung.getSex(), nguoiDung.getBirthday(), nguoiDung.getPhone(), nguoiDung.getAvatar(), nguoiDung.getRole())) {
						trangThai="doiThanhCong";
						request.getSession().setAttribute("trangThai", trangThai);
						response.sendRedirect("hocVien_userInfo");
					}
				}
				else {
					trangThai="matKhauKhongKhop";
					request.getSession().setAttribute("trangThai", trangThai);
					response.sendRedirect("hocVien_userInfo");
				}
			}
			else {
				trangThai="saiMatKhauCu";
				request.getSession().setAttribute("trangThai", trangThai);
				response.sendRedirect("hocVien_userInfo");
			}
			break;
		case 2:
			if(matKhauCu.equals(nguoiDung.getPassword()))
			{
				if(mauKhauMoi1.equals(matKhauMoi2))
				{
					if(usDal.updatePassword(username, matKhauMoi2, nguoiDung.getFullname(), nguoiDung.getSex(), nguoiDung.getBirthday(), nguoiDung.getPhone(), nguoiDung.getAvatar(), nguoiDung.getRole())) {
						trangThai="doiThanhCong";
						request.getSession().setAttribute("trangThai", trangThai);
						response.sendRedirect("nqldt_userInfo");
					}
				}
				else {
					trangThai="matKhauKhongKhop";
					request.getSession().setAttribute("trangThai", trangThai);
					response.sendRedirect("nqldt_userInfo");
				}
			}
			else {
				trangThai="saiMatKhauCu";
				request.getSession().setAttribute("trangThai", trangThai);
				response.sendRedirect("nqldt_userInfo");
			}
			break;
		case 1:
			if(matKhauCu.equals(nguoiDung.getPassword()))
			{
				if(mauKhauMoi1.equals(matKhauMoi2))
				{
					if(usDal.updatePassword(username, matKhauMoi2, nguoiDung.getFullname(), nguoiDung.getSex(), nguoiDung.getBirthday(), nguoiDung.getPhone(), nguoiDung.getAvatar(), nguoiDung.getRole())) {
						trangThai="doiThanhCong";
						request.getSession().setAttribute("trangThai", trangThai);
						response.sendRedirect("nqlch_userInfo");
					}
				}
				else {
					trangThai="matKhauKhongKhop";
					request.getSession().setAttribute("trangThai", trangThai);
					response.sendRedirect("nqlch_userInfo");
				}
			}
			else {
				trangThai="saiMatKhauCu";
				request.getSession().setAttribute("trangThai", trangThai);
				response.sendRedirect("nqlch_userInfo");
			}
			break;
		default:
			break;
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
