package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ivy.trainingmanage.model.User;

public class UserDao extends BaseDao {
	
	@SuppressWarnings("unchecked")
	public List<User> getAll() {
		List<User> users = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			users = session.createCriteria(User.class).list();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return users;
	}

	public User findById(Long id) {
		User user = new User();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			user = (User) session.get(User.class, id);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}
	
	public void save(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			if (user.getId() == null) {
				session.persist(user);
				transaction.commit();
			} else {
				session.merge(user);
				transaction.commit();
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	
}
