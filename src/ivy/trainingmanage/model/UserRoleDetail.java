package ivy.trainingmanage.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_role_detail")
public class UserRoleDetail extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_user", nullable = false)
	private User user;

	@ManyToOne
	@JoinColumn(name = "id_role", nullable = false)
	private Role role;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public UserRoleDetail() {
		super();
	}

}
