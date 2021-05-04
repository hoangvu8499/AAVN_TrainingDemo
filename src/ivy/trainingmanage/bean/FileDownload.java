package ivy.trainingmanage.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

@ManagedBean
@SessionScoped
public class FileDownload {

	public void download(String nameFile) {
		try {
			FacesContext context = FacesContext.getCurrentInstance();
			ExternalContext externalContext = context.getExternalContext();

			externalContext.responseReset();
			externalContext.setResponseContentType("applycation/pdf");
			externalContext.setResponseHeader("Content-Disposition", "attachment; filename=" + nameFile);
			FileInputStream inputStream = new FileInputStream(
					new File("D:\\LaunchFolder2\\TrainingManage\\webContent\\layouts\\file-upload\\" + nameFile));

			OutputStream outputStream = externalContext.getResponseOutputStream();
			outputStream.write(nameFile.getBytes());
			byte[] buffer = new byte[1024];
			int length;
			while ((length = inputStream.read(buffer)) > 0) {
				outputStream.write(buffer, 0, length);
			}
			inputStream.close();
			context.responseComplete();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	public StreamedContent getFile(String fileName) {
//		Ivy.log().error("URL: " + Constant.URL_UPLOAD_FILE + fileName);
//		InputStream stream = this.getClass().getResourceAsStream(Constant.URL_UPLOAD_FILE + fileName);
//		return new DefaultStreamedContent(stream, "text/plain", "downloaded_file.txt");
//	}
//
//	private StreamedContent file;
//
//	public FileDownload() {
////		file = new DefaultStreamedContent(FacesContext.getCurrentInstance().getExternalContext()
////				.getResourceAsStream("layouts/file-upload/"+ "guide2021-04-29_08-58-2817016985443090782358.pdf"), "image/jpg", "downloaded_boromir.jpg");
////		
//		 InputStream stream = ((ServletContext)FacesContext.getCurrentInstance().getExternalContext().getContext()).getResourceAsStream("D:\\LaunchFolder2\\TrainingManage\\webContent\\layouts\\file-upload\\guide2021-04-29_08-58-2817016985443090782358.pdf");  
// 
//		 System.out.print("inside download111");
//	        file = new DefaultStreamedContent(stream);  
//		
//		
//	}
//
//	public StreamedContent getFile() {
//		return file;
//	}
//	
//	public void downloadFile() throws IOException {
//
////	    File file = new File("/layouts/file-upload/guide2021-04-29_08-58-2817016985443090782358.pdf");
////	    HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();  
////
////	    response.setHeader("Content-Disposition", "attachment;filename=file.pdf");  
////	    response.setContentLength((int) file.length());  
////	    ServletOutputStream out = null;  
////	    try {  
////	        FileInputStream input = new FileInputStream(file);  
////	        byte[] buffer = new byte[1024];  
////	        out = response.getOutputStream();  
////	        int i = 0;  
////	        while ((i = input.read(buffer)) != -1) {  
////	            out.write(buffer);  
////	            out.flush();  
////	        }  
////	        FacesContext.getCurrentInstance().getResponseComplete();  
////	    } catch (IOException err) {  
////	        err.printStackTrace();  
////	    } finally {  
////	        try {  
////	            if (out != null) {  
////	                out.close();  
////	            }  
////	        } catch (IOException err) {  
////	            err.printStackTrace();  
////	        }  
////	    }  
//		 File file = new File("D:/LaunchFolder2/TrainingManage/webContent/layouts/file-upload/guide2021-04-29_08-58-2817016985443090782358.pdf");
//	     InputStream inputStream = new FileInputStream(file);
//	     byte[] buf = new byte[1024];
//	     int offset = 0;
//	     int numRead = 0;
//	     while ((offset < buf.length) && ((numRead = inputStream.read(buf, offset, buf.length - offset)) >= 0)) 
//	     {
//	       offset += numRead;
//	     }
//	     inputStream.close();
//	     HttpServletResponse response =
//	        (HttpServletResponse) FacesContext.getCurrentInstance()
//	            .getExternalContext().getResponse();
//	    
//	    response.setContentType("application/pdf");
//	    response.setHeader("Content-Disposition", "attachment;filename=instructions.pdf");
//	    response.getOutputStream().write(buf);
//	    response.getOutputStream().flush();
//	    response.getOutputStream().close();
//	    FacesContext.getCurrentInstance().responseComplete();
//		
//
//	}

}
