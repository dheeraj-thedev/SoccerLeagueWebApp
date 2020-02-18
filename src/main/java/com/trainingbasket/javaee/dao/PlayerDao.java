package com.trainingbasket.javaee.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.trainingbasket.javaee.model.Player;
import com.trainingbasket.javaee.model.User;
import com.trainingbasket.javaee.utils.HibernateUtil;

public class PlayerDao {

	public PlayerDao() {
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * Save User
	 * @param user
	 */
	public void savePlayer(Player player) {
		Transaction transaction = null;
		
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			session.save(player);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}

}
