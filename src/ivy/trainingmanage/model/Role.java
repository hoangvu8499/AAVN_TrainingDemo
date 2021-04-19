package ivy.trainingmanage.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "role")
public class Role extends BaseEntity {

	private String name;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "role", cascade = CascadeType.ALL)
	private List<UserRoleDetail> userRoleDetail;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<UserRoleDetail> getUserRoleDetail() {
		return userRoleDetail;
	}

	public void setUserRoleDetail(List<UserRoleDetail> userRoleDetail) {
		this.userRoleDetail = userRoleDetail;
	}

	public Role() {
	}

}
