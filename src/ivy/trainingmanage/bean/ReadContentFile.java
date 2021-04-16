package ivy.trainingmanage.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import ivy.trainingmanage.util.Constant;

@ApplicationScoped
@ManagedBean
@ViewScoped
public class ReadContentFile {

	public StreamedContent getTempPdfFile(String fileName) throws IOException {
		File testPdfFile = new File(Constant.URL_UPLOAD_FILE + fileName);
		
//		Ivy.log().error(Constant.URL_UPLOAD_FILE + fileName);
		return new DefaultStreamedContent(new FileInputStream(testPdfFile), "application/pdf", "test.pdf");
	}
}