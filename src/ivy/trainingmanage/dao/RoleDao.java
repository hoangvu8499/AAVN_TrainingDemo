package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ivy.trainingmanage.model.Role;

public class RoleDao extends BaseDao {

	@SuppressWarnings("unchecked")
	public List<Role> getAll() {
		List<Role> roles = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			roles = session.createCriteria(Role.class).list();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return roles;
	}

	public Role findById(Long id) {
		Role role = new Role();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			role = (Role) session.get(Role.class, id);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return role;
	}

}
