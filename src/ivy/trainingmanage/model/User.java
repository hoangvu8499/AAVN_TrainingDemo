package ivy.trainingmanage.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_account")
public class User extends BaseEntity {

	private String userName;

	private String password;

	private String email;

	@OneToOne
	@JoinColumn(name = "id_file")
	private FilePost filePost;
	
	@OneToMany(mappedBy = "user")
	private List<UserRoleDetail> userRoleDetail;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public FilePost getFilePost() {
		return filePost;
	}

	public void setFilePost(FilePost filePost) {
		this.filePost = filePost;
	}

	public User() {
	}

}
