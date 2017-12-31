package wp.phuc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.DAO.monhoc;
import wp.phuc.model.monHocDAL;

@WebServlet("/admin_monHoc_delete")
public class admin_monHoc_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public admin_monHoc_delete() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		monHocDAL mhDal=new monHocDAL();
		String command=request.getParameter("command");
		if(command.equals("delete")) {
			String maMonHoc=request.getParameter("maMonHoc");
			if(maMonHoc!=null) {
				boolean kqDelete=false;
				if(mhDal.deleteMonHoc(Integer.parseInt(maMonHoc))) {
					kqDelete=true;
				}
				request.getSession().setAttribute("kqDelete", kqDelete);
			}
			response.sendRedirect("monHocList");
		}
		else if(command.equals("insert")){
				String tenMonHoc=request.getParameter("tenMonHoc");
				ArrayList<monhoc> listMonHoc=mhDal.listMonHoc();
				boolean trung=false;
				for(monhoc MH:listMonHoc)
				{
					if(MH.getSubjectName().toLowerCase().equals(tenMonHoc.toLowerCase()))
					{
						trung=true;
						request.getSession().setAttribute("trung", trung);
						response.sendRedirect("monHocList");
						return;
					}
				}
				boolean kqInsert=false;
				if(mhDal.insertMonHoc(tenMonHoc)) {
					kqInsert=true;
				}
				request.getSession().setAttribute("kqInsert", kqInsert);
				response.sendRedirect("monHocList");
		}
		else if(command.equals("edit"))	
		{
			String maMonHoc=request.getParameter("maMonHoc");
			ArrayList<monhoc> listMonHoc= mhDal.listMonHoc();
			request.setAttribute("listMonHoc", listMonHoc);
			request.setAttribute("maMonHoc", maMonHoc);
			request.getRequestDispatcher("WEB-INF/admin/monHoc_edit.jsp?maMonHoc='"+maMonHoc+"'").forward(request, response);
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		monHocDAL mhDal=new monHocDAL();
		String command=request.getParameter("command");
		int maMonHoc=Integer.parseInt(request.getParameter("maMonHoc"));
		String tenMonHoc=request.getParameter("tenMonHoc");
		if(command.equals("edit")) {
			boolean kqEdit=false;
			if(mhDal.EditMonHoc(maMonHoc, tenMonHoc)) {
				kqEdit=true;
				request.getSession().setAttribute("kqEdit", kqEdit);
				response.sendRedirect("monHocList");
			}
				
		}	
	}
}
