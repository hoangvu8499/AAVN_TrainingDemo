package ivy.trainingmanage.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "post")
public class Post extends BaseEntity {

	private String name;

	private String description;

	private String content_post;
	
	private String img;

	private Date deleted;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_category", nullable = false)
	private Category category;

	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "id_user", nullable = false) private User user;
	 * 
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "user_update") private User userUpdate;
	 */
	
	private String createBy;
	
	private String updateBy;
	
	@OneToMany(mappedBy = "post", cascade = CascadeType.ALL)
	private List<FilePost> filePost;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent_post() {
		return content_post;
	}

	public void setContent_post(String content_post) {
		this.content_post = content_post;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
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
