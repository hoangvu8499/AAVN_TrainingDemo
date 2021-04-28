package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import ch.ivyteam.ivy.environment.Ivy;
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
				session.merge(post);
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
			Ivy.log().error(e.getMessage());
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return idSaved;
	}

}