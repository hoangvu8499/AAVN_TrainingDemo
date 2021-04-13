package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ivy.trainingmanage.model.Category;

public class CategoryDao extends BaseDao {

	public void save(Category category) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			if (category.getId() == null) {
				session.persist(category);
				transaction.commit();
			} else {
				session.merge(category);
				transaction.commit();
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public List<Category> getAll() {
		List<Category> categories = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			categories = session.createCriteria(Category.class).list();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		return categories;
	}

}
