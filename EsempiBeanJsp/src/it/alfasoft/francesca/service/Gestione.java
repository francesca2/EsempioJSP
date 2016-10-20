package it.alfasoft.francesca.service;

import it.alfasoft.francesca.bean.UtenteBean;
import it.alfasoft.francesca.dao.UtenteDao;
import it.alfasoft.francesca.model.Utente;

import java.util.List;


public class Gestione {

	//Registra utente, get Utente con id, get Utente con username, get tutti utenti registrati
	UtenteDao udao=new UtenteDao();
	
	
	public boolean registraUtente(UtenteBean u) {
		boolean result=false;
//		List<Utente> lista =udao.getTuttiUtenti();
//		for(Utente v : lista)
//		{
//			if(v.getUsername().equals(username)){
//				break;
//			}
//		}
		
		result=udao.creaUtente(u);
		
		return result;
	}
	
//	public Utente getUtente(String username) {
//		Utente u =udao.trovaUtente(username);
//		return u;
//	}
	
}
