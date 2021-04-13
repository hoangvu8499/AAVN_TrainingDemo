package ivy.trainingmanage.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category extends BaseEntity {

	private String name;

	@OneToMany(mappedBy = "category")
	private List<Post> postList;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category(String name) {
		super();
		this.name = name;
	}

	public Category() {
		super();
	}

}
