package ivy.trainingmanage.dao;

import org.hibernate.SessionFactory;

import ivy.trainingmanage.util.HibernateUtil;

public class BaseDao {
	HibernateUtil hibernateUtil = new HibernateUtil();
	SessionFactory sessionFactory = hibernateUtil.getSessionFactory();

}
