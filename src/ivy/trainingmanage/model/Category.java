package ivy.trainingmanage.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category extends BaseEntity {

	private String name;

	private Date deleteAt;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	private List<Post> postList;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category(String name) {
		this.name = name;
	}

	public Date getDeleteAt() {
		return deleteAt;
	}

	public void setDeleteAt(Date deleteAt) {
		this.deleteAt = deleteAt;
	}

	public List<Post> getPostList() {
		return postList;
	}

	public void setPostList(List<Post> postList) {
		this.postList = postList;
	}

	public Category() {
		super();
	}

	@Override
    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Category category = (Category) o;
//        return  name.equals(category.name);
        
        
        return (this.getId() != null && o != null && getClass() == o.getClass())
        ? this.getId().equals(((Category) o).getId())
        : (o == this);
    }

    @Override
    public int hashCode() {
//        return  1;
    	return (this.getId() != null) 
    	         ? (getClass().hashCode() + this.getId().hashCode()) 
    	         : super.hashCode();
    }
}
