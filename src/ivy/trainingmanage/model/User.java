package ivy.trainingmanage.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_account")
public class User extends BaseEntity {
	
	private String fullName;
	
	private String ipCard;

	private String userName;

	private String password;

	private String email;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_file")
	private FilePost filePost;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user", cascade = CascadeType.ALL)
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

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getIpCard() {
		return ipCard;
	}

	public void setIpCard(String ipCard) {
		this.ipCard = ipCard;
	}

	public List<UserRoleDetail> getUserRoleDetail() {
		return userRoleDetail;
	}

	public void setUserRoleDetail(List<UserRoleDetail> userRoleDetail) {
		this.userRoleDetail = userRoleDetail;
	}

	public User() {
	}

}
