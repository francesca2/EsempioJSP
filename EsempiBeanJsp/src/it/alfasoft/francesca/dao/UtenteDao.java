package it.alfasoft.francesca.dao;

import it.alfasoft.francesca.bean.UtenteBean;
import it.alfasoft.francesca.hibernateUtil.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UtenteDao {
	
	//1. Metodo per creare l'utente
	public boolean creaUtente(UtenteBean u) {
		
		boolean result=false;
		
		Session session =HibernateUtil.openSession();
		Transaction tx=null;

		try{
		tx=session.getTransaction();
		tx.begin();
		
		session.persist(u);
		
		 result=true;
		 tx.commit();
		}catch(Exception ex){
			tx.rollback();
		}finally{
			session.close();
		}
		
		return result;		
	}
	
	//2. metodo per trovare un utente
//	public boolean trovaUtente(long id) {
//		
//		boolean b=false;
//		UtenteBean u=new Utente();
//		
//		Session session =HibernateUtil.openSession();
//		Transaction tx=null;
//
//		try{
//		tx=session.getTransaction();
//		tx.begin();
//		
//		Query query=session.createQuery("from Utente where id_Utente=:x1");
//		query.setLong("x1", id);
//		
//		u=(Utente) query.uniqueResult();
//		
//		 b=true;
//		 tx.commit();
//		}catch(Exception ex){
//			tx.rollback();
//		}finally{
//			session.close();
//		}
//		
//		return b;		
//	}
//
//	public boolean trovaUtenteConUsername(String username) {
//		
//		boolean b=false;
//		
//		Session session =HibernateUtil.openSession();
//		Transaction tx=null;
//
//		try{
//		tx=session.getTransaction();
//		tx.begin();
//		
//		Query query=session.createQuery("from Utente where username=:x1");
//		query.setString("x1", username);
//		
//		u=(Utente) query.uniqueResult();
//		
//		 b=true;
//		 tx.commit();
//		}catch(Exception ex){
//			tx.rollback();
//		}finally{
//			session.close();
//		}
//		
//		return b;		
//	}
	
//	//3. metodo per trovare tutti gli utenti
//	public List<Utente> getTuttiUtenti() {
//		List<Utente> utenti= new ArrayList<Utente>();
//		Session session =HibernateUtil.openSession();
//		Transaction tx=null;
//
//		try{
//		tx=session.getTransaction();
//		tx.begin();
//		
//		Query query=session.createQuery("from Utente");
//		utenti=query.list();
//		
//		 tx.commit();
//		}catch(Exception ex){
//			tx.rollback();
//		}finally{
//			session.close();
//		}
//		return utenti;
//	}
//	
	//4. metodo per aggiornare i dati dell'utente
	
	
	
	//5.metodo per eliminare l'utente
	
	
	
}
