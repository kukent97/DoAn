package wp.phuc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import wp.phuc.DAO.thongBao;
import wp.phuc.DAO.trangChuTaiLieu;
import wp.phuc.model.trangChuDAL;

@WebServlet("/admin_taiLieu_anh")
public class admin_taiLieu_anh extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "image";

    // upload settings
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
	
    public admin_taiLieu_anh() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("username") == null)
			response.sendRedirect("login");
        PrintWriter writer = response.getWriter();
		// checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }

        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // sets memory threshold - beyond which files are stored in disk 
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        ServletFileUpload upload = new ServletFileUpload(factory);

        // sets maximum size of upload file
        upload.setFileSizeMax(MAX_FILE_SIZE);

        // sets maximum size of request (include file + form data)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // constructs the directory path to store upload file
        // this path is relative to application's directory
        String uploadPath = getServletContext().getRealPath("")
                + File.separator + UPLOAD_DIRECTORY;

        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            // parses the request's content to extract file data
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);

            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);
                        
                        trangChuDAL tcDal=new trangChuDAL();
                        String maTaiLieu1=request.getSession().getAttribute("maTaiLieu").toString();
                        trangChuTaiLieu getTaiLieu= tcDal.getTaiLieu(Integer.parseInt(maTaiLieu1));
                        tcDal.updateTaiLieu(getTaiLieu.getDocumentId(), getTaiLieu.getTitle(), getTaiLieu.getLink(), "image/"+fileName);
        				response.sendRedirect("admin_taiLieu_anh2");
                    }
                }
            }
        } catch (Exception ex) {
            writer.println("fail");
        }
        // redirects client to message page
       
	}

}