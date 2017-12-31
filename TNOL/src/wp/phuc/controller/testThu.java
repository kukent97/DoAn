package wp.phuc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.phuc.model.trangChuDAL;

/**
 * Servlet implementation class testThu
 */
@WebServlet("/testThu")
public class testThu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testThu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String linkDinhKem=request.getParameter("linkDinhKem"); 
		String tieuDe=request.getParameter("tieuDe");
         String noiDungThongBao=request.getParameter("noiDungThongBao");
        
 		
 		response.getWriter().print(noiDungThongBao );
 		response.getWriter().print(linkDinhKem);
 		response.getWriter().print(tieuDe);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
