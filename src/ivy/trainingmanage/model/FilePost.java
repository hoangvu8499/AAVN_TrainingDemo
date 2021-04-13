package ivy.trainingmanage.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "file_post")
public class FilePost extends BaseEntity {

	private String url;

	@ManyToOne
	@JoinColumn(name = "id_post")
	private Post post;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public FilePost() {
	}

}
