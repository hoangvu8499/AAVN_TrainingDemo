package ivy.trainingmanage.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ivy.trainingmanage.model.FilePost;

public class FilePostDao extends BaseDao {

	@SuppressWarnings("unchecked")
	public List<FilePost> getAll() {
		List<FilePost> filePosts = new ArrayList<>();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			filePosts = session.createCriteria(FilePost.class).list();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return filePosts;
	}

	public FilePost findById(Long id) {
		FilePost file = new FilePost();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			file = (FilePost) session.get(FilePost.class, id);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return file;
	}
	
	public void save(FilePost filePost) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			if (filePost.getId() == null) {
				session.persist(filePost);
				transaction.commit();
			} else {
				session.merge(filePost);
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
