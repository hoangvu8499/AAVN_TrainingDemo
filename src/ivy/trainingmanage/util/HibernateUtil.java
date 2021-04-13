package ivy.trainingmanage.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.jpa.HibernateEntityManager;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.data.persistence.IPersistenceContext;

public class HibernateUtil {

	public final String PersistenceName = "TrainingManage";
	private static final IPersistenceContext defaultContext = Ivy.persistence();
	private final ThreadLocal<EntityManager> threadLocalEntityManager = new ThreadLocal<EntityManager>();
	private static final Map<Thread, EntityManager> currentEntityManagers = Collections
			.synchronizedMap(new HashMap<Thread, EntityManager>());

	public SessionFactory getSessionFactory() {
		EntityManager em = threadLocalEntityManager.get();
		if (em == null || !em.isOpen()) {
			IPersistenceContext ipc = Ivy.persistence();
			try {
				em = (HibernateEntityManager) ipc.get(PersistenceName).createEntityManager();
			} catch (Exception e) {
				if (PersistenceException.class.isAssignableFrom(e.getClass())
						&& e.toString().contains("Could not create EntityManager for persistence unit")) {
					em = (HibernateEntityManager) defaultContext.get(PersistenceName).createEntityManager();
				} else {
					Ivy.log().error("Error: "+e.getMessage());
					throw e;
				}
			};
			threadLocalEntityManager.set(em);
			currentEntityManagers.put(Thread.currentThread(), em);

			Session session = (em).unwrap(Session.class);
			SessionFactory sessionFactory = session.getSessionFactory();
			return sessionFactory;
		}
		return null;
	}

}
