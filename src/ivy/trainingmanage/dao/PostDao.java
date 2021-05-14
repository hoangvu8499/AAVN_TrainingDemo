package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import ivy.trainingmanage.model.Post;

public class PostDao extends BaseDao {

	@SuppressWarnings("unchecked")
	public List<Post> getAll() {
		List<Post> listPost = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			listPost = session.createCriteria(Post.class).add(Restrictions.isNull("deleted")).addOrder(Order.desc("id"))
					.list();
			for (Post post : listPost) {
				Hibernate.initialize(post.getFilePost());
//				Hibernate.initialize(post.getCategory());
				String descriptin = post.getContent_post();
				post.setDescription(descriptin.substring(0, 30) + "..."); 
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return listPost;
	}

	@SuppressWarnings("unchecked")
	public List<Post> getByIdCategory(Long idCategory) {
		List<Post> listPost = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			listPost = session.createCriteria(Post.class).add(Restrictions.isNull("deleted"))
					.add(Restrictions.eq("category.id", idCategory)).addOrder(Order.desc("id")).list();
			for (Post post : listPost) {
				Hibernate.initialize(post.getFilePost());
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return listPost;
	}

	public Post findById(Long id) {
		Post post = new Post();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			post = (Post) session.get(Post.class, id);
			Hibernate.initialize(post.getFilePost());
//			Hibernate.initialize(post.getCategory());
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return post;
	}

	public void save(Post post) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			if (post.getId() == null) {
				session.save(post);
				transaction.commit();
			} else {
				session.update(post);
				transaction.commit();
			}
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public Long savePost(Post post) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		Long idSaved = 0L;
		try {
			transaction = session.beginTransaction();
			idSaved = (Long) session.save(post);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return idSaved;
	}

	public void deletePostCategory(Long id_category, Date dateDelete) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			String hql = "UPDATE post SET deleted = :dateDelete WHERE id_category = :id_category";
			session.createSQLQuery(hql).addEntity(Post.class).setParameter("dateDelete", dateDelete)
					.setParameter("id_category", id_category).executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

}
