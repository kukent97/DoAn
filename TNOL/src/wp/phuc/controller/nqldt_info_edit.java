package wp.phuc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.phuc.DAO.user;
import wp.phuc.model.userDAL;

@WebServlet("/nqldt_info_edit")
public class nqldt_info_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public nqldt_info_edit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		userDAL usAdmin =new userDAL();
		HttpSession session=request.getSession();
		String username=session.getAttribute("username").toString();
		user us=usAdmin.viewInfo(username);
		request.setAttribute("userAdmin",us);
		request.getRequestDispatcher("WEB-INF/nqlDeThi/info_edit.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		userDAL usDal=new userDAL();
		String command=request.getParameter("command");
		String maNguoiDung=request.getSession().getAttribute("username").toString();
		String hoTen=request.getParameter("hoTen");
		String gioiTinh=request.getParameter("gioiTinh");
		String ngaySinh=request.getParameter("ngaySinh");
		String sdt=request.getParameter("sdt");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		user nguoiDung1=usDal.viewInfo(maNguoiDung);
		boolean kqEdit1=false;
		if(command.equals("edit")) {
			
			try {
				if(usDal.updateUser(maNguoiDung, nguoiDung1.getPassword(), hoTen, gioiTinh, sdf.parse(ngaySinh), sdt,nguoiDung1.getAvatar(),nguoiDung1.getRole(),nguoiDung1.getLopHoc())) {
					kqEdit1=true;
					request.getSession().setAttribute("kqEdit1", kqEdit1);
					response.sendRedirect("nqldt_userInfo");
				}
			} catch (NumberFormatException e) {
				request.getSession().setAttribute("kqEdit1", kqEdit1);
				response.sendRedirect("nqldt_userInfo");
			} catch (ParseException e) {
				request.getSession().setAttribute("kqEdit1", kqEdit1);
				response.sendRedirect("nqldt_userInfo");
			}
				
		}	
	}

}
