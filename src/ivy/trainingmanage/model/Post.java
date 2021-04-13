package ivy.trainingmanage.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "post")
public class Post extends BaseEntity {

	private String name;

	private String description;

	private String content;

	private Date deleted;

	@ManyToOne
	@JoinColumn(name = "id_category", nullable = false)
	private Category category;

	@ManyToOne
	@JoinColumn(name = "id_user", nullable = false)
	private User user;

	@OneToMany(mappedBy = "post")
	private List<FilePost> filePost;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDeleted() {
		return deleted;
	}

	public void setDeleted(Date deleted) {
		this.deleted = deleted;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<FilePost> getFilePost() {
		return filePost;
	}

	public void setFilePost(List<FilePost> filePost) {
		this.filePost = filePost;
	}

	public Post() {
	}

}
