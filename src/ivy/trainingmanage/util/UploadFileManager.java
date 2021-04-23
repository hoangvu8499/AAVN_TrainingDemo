package ivy.trainingmanage.util;

import static org.apache.commons.lang3.StringUtils.EMPTY;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.apache.commons.compress.utils.IOUtils;
import org.primefaces.model.UploadedFile;

@ManagedBean(name = "uploadFileManager")
@ViewScoped
public class UploadFileManager {
	private UploadedFile file;

	private static final String DATE_PATTERN_TEMP = "yyyy-MM-dd_HH-mm-ss";

	private String documentFolder;
	private String temporaryFolder;
	private String typeUpload;

	public String getTemporaryFolder() {
		return temporaryFolder;
	}

	public void setTemporaryFolder(String temporaryFolder) {
		this.temporaryFolder = temporaryFolder;
	}

	public String getTypeUpload() {
		return typeUpload;
	}

	public void setTypeUpload(String typeUpload) {
		this.typeUpload = typeUpload;
	}

	public List<File> getFiles() {
		return files;
	}

	public void setFiles(List<File> files) {
		this.files = files;
	}

	private List<File> files;

	public UploadedFile getFile() {
		return file;
	}

	public void setFile(UploadedFile file) {
		this.file = file;
	}

	public String getDocumentFolder() {
		return documentFolder;
	}

	public void setDocumentFolder(String documentFolder) {
		this.documentFolder = documentFolder;
	}

	public String uploadFile(UploadedFile uploadedFile) {
		try {
			Date currentDate = new Date();
			String currentDateString = new SimpleDateFormat(DATE_PATTERN_TEMP).format(currentDate);
			String prefix = uploadedFile.getFileName().substring(0, uploadedFile.getFileName().lastIndexOf("."))
					+ currentDateString;
			String suffix = uploadedFile.getContentType();
			if (suffix.toLowerCase().endsWith("gif")) {
				suffix = ".gif";
			} else if (suffix.toLowerCase().endsWith("pdf")) {
				suffix = ".pdf";
			}else if (suffix.toLowerCase().endsWith("docx")) {
				suffix = ".docx";
			} else if (suffix.toLowerCase().endsWith("doc")) {
				suffix = ".doc";
			}else if (suffix.toLowerCase().endsWith("jpeg") || suffix.toLowerCase().endsWith("jpg")) {
				suffix = ".jpg";
			} else if (suffix.toLowerCase().endsWith("png")) {
				suffix = ".png";
			}

			InputStream inputStream = uploadedFile.getInputstream();
			File tempFile = File.createTempFile(prefix, suffix, new File(Constant.URL_UPLOAD_FILE));

			String absolutePath = tempFile.getAbsolutePath();
			String tempFilePath = absolutePath.substring(0, absolutePath.lastIndexOf(File.separator));

			tempFile.deleteOnExit();
			FileOutputStream out = new FileOutputStream(tempFile);
			IOUtils.copy(inputStream, out);
			return tempFile.getName();
		} catch (IOException e) {
			return EMPTY;
		}
	}

}