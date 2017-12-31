package wp.phuc.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import wp.phuc.model.userDAL;
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		if(session.getAttribute("username")==null) {
			request.getRequestDispatcher("WEB-INF/DN.jsp").forward(request, response);
		}
		else chuyenTrang(session.getAttribute("idRole").toString(),request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String idRole = request.getParameter("optradio");
		userDAL USERDAL= new userDAL();
		if(USERDAL.checkLogin(username,pwd, idRole)) {
			HttpSession session=request.getSession();
			session.setAttribute("idRole", idRole);
			session.setAttribute("username",username );//taòo session coì tên username(vêì trong ngoãòc laÌ tên session)
		chuyenTrang(idRole,request,response);
		}
		else {
			request.getRequestDispatcher("WEB-INF/DN.jsp?login=false").forward(request, response);
		}
	}

	private void chuyenTrang (String idRole,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch(idRole) {
		case "2": 
			request.getRequestDispatcher("nqldt_trangChuList").forward(request, response);
			break;
		case "1": 
			request.getRequestDispatcher("nqlch_trangChu").forward(request, response);
			break;
		case "3": 
			request.getRequestDispatcher("hocVien_trangChu").forward(request, response);
			break;
		case "4": 
			request.getRequestDispatcher("trangChuList").forward(request, response);
			break;
		default :
			request.getRequestDispatcher("WEB-INF/error.jsp").forward(request, response);
			break;
		}

	}
}
