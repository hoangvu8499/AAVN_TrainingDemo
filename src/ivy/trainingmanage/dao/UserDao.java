package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;

import ivy.trainingmanage.model.User;

public class UserDao extends BaseDao {

	@SuppressWarnings("unchecked")
	public List<User> getAll() {
		List<User> users = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			users = session.createCriteria(User.class).add(Restrictions.isNull("deleted")).list();
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

	@SuppressWarnings("unchecked")
	public List<User> checkExistsUser(User user) {
		List<User> users = new ArrayList<>();
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Criteria cr = session.createCriteria(User.class);
			cr.add(Restrictions.isNull("deleted"));

			Criterion email = Restrictions.like("email", user.getEmail());
			Criterion name = Restrictions.like("userName", user.getUserName());

			// Lấy các record phù hợp với điều kiện OR
			LogicalExpression orExp = Restrictions.or(email, name);
			cr.add(orExp);
			users = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return users;
	}

	public User findByUserName(String userName) {
		User user = new User();
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Criteria cr = session.createCriteria(User.class);
			cr.add(Restrictions.like("userName", userName));
			user = (User) cr.list().get(0);
			user.getUserRoleDetail().size();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}

}
