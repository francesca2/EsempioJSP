package it.alfasoft.francesca.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UtenteBean implements Serializable, IsValid{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id_Utente;
	
	private String nome;
	private String cognome;
	private String username;
	private String password;
	
	public UtenteBean() {
		this.nome = "";
		this.cognome = "";
		this.username = "";
		this.password = "";
	}

	public UtenteBean(String nome, String cognome, String username,
			String password) {
		this.nome = nome;
		this.cognome = cognome;
		this.username = username;
		this.password = password;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

	public long getId_Utente() {
		return id_Utente;
	}

	public void setId_Utente(long id_Utente) {
		this.id_Utente = id_Utente;
	}

	@Override
	public boolean isValid() {

		boolean result=false;
		
		if(!nome.isEmpty() && nome!=null && 
				!cognome.isEmpty() && cognome!=null &&
				!username.isEmpty() && username!=null &&
				!password.isEmpty() && password!=null) {
			result=true;
		}
		
		return result;
	}

}
