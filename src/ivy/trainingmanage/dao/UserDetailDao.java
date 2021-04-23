package ivy.trainingmanage.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserDetailDao extends BaseDao {

	public Integer countByIdUser(Long idUser) {
		Integer count = 0;
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			count = (Integer) session.createQuery("SELECT count(u) FROM UserRoleDetail u WHERE u.user.id = :idUser")
					.setParameter("idUser", idUser).uniqueResult();

		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}

}
