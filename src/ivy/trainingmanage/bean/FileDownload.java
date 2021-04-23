package ivy.trainingmanage.bean;

import java.io.InputStream;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import ch.ivyteam.ivy.environment.Ivy;
import ivy.trainingmanage.util.Constant;

@ManagedBean(name = "fileBean")
@RequestScoped
public class FileDownload {

	public StreamedContent getFile(String fileName) {
		Ivy.log().error("URL: "+Constant.URL_UPLOAD_FILE+fileName);
		InputStream stream = this.getClass().getResourceAsStream(Constant.URL_UPLOAD_FILE+fileName);
		return new DefaultStreamedContent(stream, "text/plain", "downloaded_file.txt");
	}

}
