package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
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
			listPost = session.createCriteria(Post.class).add(Restrictions.isNull("deleted")).list();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
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
				session.persist(post);
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

}
