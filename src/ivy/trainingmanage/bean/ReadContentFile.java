package ivy.trainingmanage.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import ivy.trainingmanage.util.Constant;

@ManagedBean(name = "readContentFile", eager = true)
@SessionScoped
public class ReadContentFile implements Serializable {

	private static final long serialVersionUID = 1L;

	StreamedContent content;

	public StreamedContent getTempPdfFile(String fileName) throws IOException {
		File testPdfFile = new File(Constant.URL_UPLOAD_FILE + fileName);
		content = new DefaultStreamedContent(new FileInputStream(testPdfFile), "application/pdf", fileName);
		return content;
	}

	public static final String staa = "dsdsds";
}