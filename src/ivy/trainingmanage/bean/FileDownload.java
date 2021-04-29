package ivy.trainingmanage.bean;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import ch.ivyteam.ivy.environment.Ivy;
import ivy.trainingmanage.util.Constant;

@ManagedBean(name = "fileDownloadBean")
@RequestScoped
@SessionScoped
public class FileDownload {

	public StreamedContent getFile(String fileName) {
		Ivy.log().error("URL: " + Constant.URL_UPLOAD_FILE + fileName);
		InputStream stream = this.getClass().getResourceAsStream(Constant.URL_UPLOAD_FILE + fileName);
		return new DefaultStreamedContent(stream, "text/plain", "downloaded_file.txt");
	}

	private StreamedContent file;

	public FileDownload() {
//		file = new DefaultStreamedContent(FacesContext.getCurrentInstance().getExternalContext()
//				.getResourceAsStream("layouts/file-upload/"+ "guide2021-04-29_08-58-2817016985443090782358.pdf"), "image/jpg", "downloaded_boromir.jpg");
//		
		 InputStream stream = ((ServletContext)FacesContext.getCurrentInstance().getExternalContext().getContext()).getResourceAsStream("D:\\LaunchFolder2\\TrainingManage\\webContent\\layouts\\file-upload\\guide2021-04-29_08-58-2817016985443090782358.pdf");  
 
		 System.out.print("inside download111");
	        file = new DefaultStreamedContent(stream);  
		
		
	}

	public StreamedContent getFile() {
		return file;
	}
	
	public void downloadFile() throws IOException {

//	    File file = new File("/layouts/file-upload/guide2021-04-29_08-58-2817016985443090782358.pdf");
//	    HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();  
//
//	    response.setHeader("Content-Disposition", "attachment;filename=file.pdf");  
//	    response.setContentLength((int) file.length());  
//	    ServletOutputStream out = null;  
//	    try {  
//	        FileInputStream input = new FileInputStream(file);  
//	        byte[] buffer = new byte[1024];  
//	        out = response.getOutputStream();  
//	        int i = 0;  
//	        while ((i = input.read(buffer)) != -1) {  
//	            out.write(buffer);  
//	            out.flush();  
//	        }  
//	        FacesContext.getCurrentInstance().getResponseComplete();  
//	    } catch (IOException err) {  
//	        err.printStackTrace();  
//	    } finally {  
//	        try {  
//	            if (out != null) {  
//	                out.close();  
//	            }  
//	        } catch (IOException err) {  
//	            err.printStackTrace();  
//	        }  
//	    }  
		 File file = new File("D:/LaunchFolder2/TrainingManage/webContent/layouts/file-upload/guide2021-04-29_08-58-2817016985443090782358.pdf");
	     InputStream inputStream = new FileInputStream(file);
	     byte[] buf = new byte[1024];
	     int offset = 0;
	     int numRead = 0;
	     while ((offset < buf.length) && ((numRead = inputStream.read(buf, offset, buf.length - offset)) >= 0)) 
	     {
	       offset += numRead;
	     }
	     inputStream.close();
	     HttpServletResponse response =
	        (HttpServletResponse) FacesContext.getCurrentInstance()
	            .getExternalContext().getResponse();
	    
	    response.setContentType("application/pdf");
	    response.setHeader("Content-Disposition", "attachment;filename=instructions.pdf");
	    response.getOutputStream().write(buf);
	    response.getOutputStream().flush();
	    response.getOutputStream().close();
	    FacesContext.getCurrentInstance().responseComplete();
		

	}


}
