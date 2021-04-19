package ivy.trainingmanage.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import ivy.trainingmanage.util.Constant;

@ManagedBean(name = "readContentFile" )
@SessionScoped
public class ReadContentFile {
	
	StreamedContent content;

	public StreamedContent getTempPdfFile(String fileName) throws IOException {
		File testPdfFile = new File(Constant.URL_UPLOAD_FILE + fileName);
		 content = new DefaultStreamedContent(new FileInputStream(testPdfFile), "application/pdf",
				 fileName);
//		Ivy.log().error(Constant.URL_UPLOAD_FILE + fileName);
		return content;
	}
}