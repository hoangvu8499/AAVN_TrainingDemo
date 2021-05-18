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

}
