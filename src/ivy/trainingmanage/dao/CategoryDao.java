package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

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

	@SuppressWarnings("unchecked")
	public List<Category> getAll() {
		List<Category> categories = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Criteria cr = session.createCriteria(Category.class);
			cr.add(Restrictions.isNull("deleteAt"));
			categories = cr.list();
			for(Category category: categories) {
				Hibernate.initialize(category.getPostList());
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return categories;
	}
	
	public Category findByName(String name) {
		Category category = new Category();
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Criteria cr = session.createCriteria(Category.class);
			cr.add(Restrictions.like("name", name));
			category = (Category) cr.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return category;
	}

}
